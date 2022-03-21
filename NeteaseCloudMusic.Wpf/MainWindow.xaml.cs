using GalaSoft.MvvmLight.Ioc;
using GalaSoft.MvvmLight.Messaging;
using NeteaseCloudMusic.Wpf.Config;
using NeteaseCloudMusic.Wpf.Model;
using NeteaseCloudMusic.Wpf.Pages;
using NeteaseCloudMusic.Wpf.Services;
using NeteaseCloudMusic.Wpf.ViewModel;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Threading;
using System.Threading;


namespace NeteaseCloudMusic.Wpf
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        private NeteaseCloudMusicService _NeteaseCloudMusicService;
        /// <summary>
        /// 退出保存时，检查frame的content类型，如果不是下面几个就保存为默认值
        /// 因为像 ArtistPage 初始化时，需要带上 参数，否则对应的VM无法初始化，懒得再保存一个变量了
        /// </summary>
        private List<Type> _typesForChecking = new List<Type>
        {
            typeof(SearchPage),
            typeof(LocalMusicPage),
            typeof(DownloadPage),
            typeof(AboutPage),
        };
        /// <summary>
        /// 实例化Timer类用于刷新歌词
        /// </summary>
        System.Timers.Timer t1 = new System.Timers.Timer(50);
        桌面歌词 Get = null;
        wind GetWind = null;
        public MainWindow()
        {

            InitializeComponent();

            Loaded += (_, __) => Init();
            t1.Elapsed += new System.Timers.ElapsedEventHandler(theout1);//到达时间的时候执行事件
            t1.AutoReset = true;//设置是执行一次（false）还是一直执行(true)
            t1.Enabled = false;//是否执行System.Timers.Timer.Elapsed事件

            Messenger.Default.Register<bool>(this, "Play", PlayMusic);
            Messenger.Default.Register<string>(this, "ShowInfo", ShowInfo);
            Messenger.Default.Register<(Type, long)>(this, "Navigate", NavigateTo);
            Messenger.Default.Register<bool>(this, "RepeatSingle", RepeatSingle);


            Unloaded += (_, __) =>
            {
                Messenger.Default.Unregister<bool>(this, "Play", PlayMusic);
                Messenger.Default.Unregister<string>(this, "ShowInfo", ShowInfo);
                Messenger.Default.Unregister<(Type, long)>(this, "Navigate", NavigateTo);
                Messenger.Default.Unregister<bool>(this, "RepeatSingle", RepeatSingle);
            };

            Closing += (_, __) => SaveSetting();
        }

        private void ChangeRepeatModeIcon(int obj)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// 单曲循环
        /// </summary>
        /// <param name="obj"></param>
        private void RepeatSingle(bool obj)
        {
            media.Position = TimeSpan.Zero;
        }

        /// <summary>
        /// 跳转到其他页面
        /// </summary>
        /// <param name="obj"></param>
        private void NavigateTo((Type pageType, long id) obj)
        {
            if (ucNav.listviewNavigation.SelectedIndex != -1)
                ucNav.listviewNavigation.SelectedIndex = -1;
            else
                ListView_SelectionChanged(null, null);


            Page page = null;
            //跳入歌手页面
            if (obj.pageType == typeof(ArtistPage))
            {
                var artistVM = new ArtistViewModel((int)obj.id);
                page = Activator.CreateInstance(obj.pageType, artistVM) as ArtistPage;
            }
            //跳入专辑页面
            if (obj.pageType == typeof(AlbumPage))
            {
                var albumVM = new AlbumViewModel((int)obj.id);
                page = Activator.CreateInstance(obj.pageType, albumVM) as AlbumPage;
            }
            //跳入MV页面
            if (obj.pageType == typeof(MvPage))
            {
                var mvVM = new MvViewModel((int)obj.id);
                page = Activator.CreateInstance(obj.pageType, mvVM) as MvPage;
            }
            //跳入PlayList页面
            if (obj.pageType == typeof(PlayListPage))
            {
                var playlistVM = new PlayListViewModel(obj.id);
                page = Activator.CreateInstance(obj.pageType, playlistVM) as PlayListPage;
            }

            if (page != null)
            {
                frame.Content = page;
            }
        }

        private void Init()
        {
            LoadSetting();

            _NeteaseCloudMusicService = SimpleIoc.Default.GetInstance<NeteaseCloudMusicService>();

            //最小化窗口
            titleBar.btnMinimum.Click += (_, __) =>
            {
                this.WindowState = WindowState.Minimized;
            };
            //最大化窗口
            titleBar.btnMaximumAndRestore.Click += (_, __) =>
            {
                this.WindowState = this.WindowState == WindowState.Maximized ? WindowState.Normal : WindowState.Maximized;
            };
            //关闭窗口
            titleBar.btnClose.Click += (_, __) => Close();
            //页面的前进倒退
            titleBar.btnGoBack.Click += NavigateBack;
            //最小化最大化按钮变化
            this.StateChanged += (_, e) =>
            {
                titleBar.btnMaximumAndRestore.Content = this.WindowState == WindowState.Maximized ? "\uE923" : "\uE739";
                (titleBar.btnMaximumAndRestore.ToolTip as ToolTip).Content = this.WindowState == WindowState.Maximized ? "还原" : "最大化";
            };
            //设置点击动画
            ucNav.btnOpenCloseSetting.Click += OpenCloseSetting;
            //这里是左边工具栏缩放的动画，因为卡顿问题现在抛弃不用
            //ucNav.btnOpenCloseNavigation.Click += OpenCloseNavigation;

            //侧边栏选项
            ucNav.listviewNavigation.SelectionChanged += ListView_SelectionChanged;

            CoverRotateStoryBoard = this.FindResource("CoverRotate") as Storyboard;
        }

        //保存当前设置
        private void SaveSetting()
        {
            //窗口位置保存
            GlobalData.Config.MainRestoreBounds = this.RestoreBounds;
            //最大化最小化保存
            GlobalData.Config.MainWindowState = this.WindowState;
            if (frame.Content.GetType() is Type type)
            {
                //保存最后一个打开的页面，如果没有的话就跳转到localmusic
                if (_typesForChecking.Find(t => t == type) != null)
                    GlobalData.Config.LastPage = frame.Content.GetType();
                else
                    GlobalData.Config.LastPage = typeof(LocalMusicPage);
            }
            //保存最后一个选项
            GlobalData.Config.LastSelectedIndex = ucNav.listviewNavigation.SelectedIndex == -1 ? 1 : ucNav.listviewNavigation.SelectedIndex;
        }
        //读取当前设置
        private void LoadSetting()
        {
            //读取配置文件
            this.WindowState = WindowState.Normal;
            //窗口位置读取
            if (GlobalData.Config.MainRestoreBounds is var rec)
            {
                this.Left = rec.Left;
                this.Top = rec.Top;
                this.Height = rec.Height;
                this.Width = rec.Width;
            }
            //最大化最小化读取
            if (GlobalData.Config.MainWindowState is var state)
            {
                this.WindowState = state;
            }
            //保存最后一个打开的页面读取
            if (GlobalData.Config.LastPage is Type pageType)
            {
                frame.Content = Activator.CreateInstance(pageType);
            }
            //保存最后一个选项
            if (GlobalData.Config.LastSelectedIndex != -1)
            {
                ucNav.listviewNavigation.SelectedIndex = GlobalData.Config.LastSelectedIndex;
                BackIndexStack.Push(GlobalData.Config.LastSelectedIndex);
            }
        }

        private void PlayMusic(bool flag)
        {
            playing = false;
            PauseOrResume(null, null);
        }

        #region Frame 前进后退
        private Stack<int> BackIndexStack = new Stack<int>();
        private bool IsGoBack = false;
        private static readonly object BackLock = new object();
        //实现页面的前进倒退
        private void NavigateBack(object sender, RoutedEventArgs e)
        {
            lock (BackLock)
            {
                IsGoBack = true;
                if (BackIndexStack.Count > 1)
                {
                    int currentIndex = BackIndexStack.Pop();//最顶层去掉
                    int lastIndex = BackIndexStack.Pop();//倒数第二个才是上次的 Index
                    this.ucNav.listviewNavigation.SelectedIndex = lastIndex;
                    if (currentIndex == -1 && lastIndex == -1) ListView_SelectionChanged(null, null);//两次都是 -1，无法自动触发，手动触发
                    BackIndexStack.Push(lastIndex);//重新塞回倒数第二个
                }
                IsGoBack = false;
            }
        }
        //选中页面的变化
        private void ListView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            //判断是否选中实际页面
            if (ucNav.listviewNavigation.SelectedIndex > ucNav.listviewNavigation.Items.Count - 1)
                return;

            lock (BackLock)
            {
                if (!IsGoBack)
                {
                    BackIndexStack.Push(ucNav.listviewNavigation.SelectedIndex);
                    if (ucNav.listviewNavigation.SelectedIndex == -1) return;
                    frame.Content = Activator.CreateInstance((ucNav.listviewNavigation.SelectedItem as NavigationItem).PageType);
                }
                else
                {
                    if (frame.CanGoBack) frame.GoBack();
                }
            }
        }

        private void FrameMain_Navigated(object sender, NavigationEventArgs e) => CheckFrameCanGoBack();

        /// <summary>
        /// 检查能否后退
        /// </summary>
        private void CheckFrameCanGoBack()
        {
            titleBar.btnGoBack.Visibility = frame.CanGoBack ? Visibility.Visible : Visibility.Collapsed;
        }

        /// <summary>
        /// 播放动画
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void FrameMain_Navigating(object sender, NavigatingCancelEventArgs e)
        {
            if (e.NavigationMode == NavigationMode.New)
                (this.TryFindResource("SB_IN") as Storyboard).Begin(e.Content as Page);
            else
                (this.TryFindResource("SB_BACK") as Storyboard).Begin(e.Content as Page);
        }
        #endregion
        //设置的动画
        private bool openSetting = false;
        private void OpenCloseSetting(object sender, RoutedEventArgs e)
        {
            if (openSetting) (this.FindResource("SettingClose") as Storyboard).Begin();
            else (this.FindResource("SettingOpen") as Storyboard).Begin();

            openSetting = !openSetting;
        }


        //控制左边工具栏的动画播放，太卡顿了所以暂且废弃
        //private bool open = true;
        //private void OpenCloseNavigation(object sender, RoutedEventArgs e)
        //{
        //    if (open) (this.FindResource("Close") as Storyboard).Begin(ucNav);
        //    else (this.FindResource("Open") as Storyboard).Begin(ucNav);

        //    open = !open;
        //}
        string geci = null;

        DispatcherTimer timer = null;
        DispatcherTimer timer1 = null;
        //打开媒体文件，并设置计时器
        private void Media_MediaOpened(object sender, RoutedEventArgs e)
        {
            slider.Maximum = media.NaturalDuration.TimeSpan.TotalMilliseconds;
            //媒体文件打开成功
            timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromSeconds(0.05);
            timer.Tick += new EventHandler(timer_tick);
            //timer1 = new DispatcherTimer();
            //timer1.Interval = TimeSpan.FromSeconds(0.05);
            //timer1.Tick += new EventHandler(timer_tick1);
            lrc_time.Clear();
            lrc_lyrics.Clear();
            歌词滚动显示.Items.Clear();
            if (歌曲中转器.Text == "1")
            {
                if( !中转器.Text.Contains("\"nolyric\":"))
                {
                    nogeci.Visibility = Visibility.Collapsed;
                    geci = 中转器.Text;
                    string[] geci0 = geci.Split(new string[] { "\"lyric\": \"" }, StringSplitOptions.RemoveEmptyEntries);
                    string[] geci1 = geci0[1].Split(new string[] { "}" }, StringSplitOptions.RemoveEmptyEntries);
                    Read_lyrics_string(geci1[0]);
                }
                else
                {
                    nogeci.Visibility = Visibility.Visible;

                }

            }
            t1.Start();
            timer.Start();
        }
        //进度条和计时器关联
        private void timer_tick(object sender, EventArgs e)
        {
            if (!changeSliderFlag) slider.Dispatcher.Invoke(() => slider.Value = media.Position.TotalMilliseconds);
            tbCurrentTime.Dispatcher.Invoke(() => tbCurrentTime.Text = $"{(int)media.Position.TotalMinutes:00}:{media.Position.Seconds:00}");

        }

        //开始拖动进度条
        private void Slider_DragStarted(object sender, System.Windows.Controls.Primitives.DragStartedEventArgs e)
        {
            changeSliderFlag = true;
        }
        //结束拖动进度条
        private void Slider_DragCompleted(object sender, System.Windows.Controls.Primitives.DragCompletedEventArgs e)
        {
            media.Position = TimeSpan.FromMilliseconds(slider.Value);
            changeSliderFlag = false;
        }



        //打开歌曲详细（专辑图片，可能会加入歌词）
        private bool openpanel = false;
        private void BtnPanel_Click(object sender, RoutedEventArgs e)
        {
            if (openpanel) (this.FindResource("ClosePanel") as Storyboard).Begin();
            else (this.FindResource("OpenPanel") as Storyboard).Begin();

            openpanel = !openpanel;
            btnPanel.Content = openpanel ? "\uE1D8" : "\uE1D9";
        }


        private bool needleFlag = true;
        private void BtnNeedle_Click(object sender, RoutedEventArgs e)
        {
            if (needleFlag) (this.FindResource("NeedleOn") as Storyboard).Begin();
            else (this.FindResource("NeedleOff") as Storyboard).Begin();

            if (needleFlag)
            {
                if (!AnimationStart)
                {
                    CoverRotateStoryBoard.Begin();
                    AnimationStart = true;
                }
                else
                    CoverRotateStoryBoard.Resume();
            }
            else
                CoverRotateStoryBoard.Pause();

            needleFlag = !needleFlag;
        }


        //设置暂停播放
        private Storyboard CoverRotateStoryBoard;
        private bool AnimationStart = false;
        /// <summary>
        /// palying表示播放状态（暂停或者开始）
        /// </summary>
        private bool playing = true;
        private void PauseOrResume(object sender, RoutedEventArgs e)
        {
            if (playing)
            {
                thumbButtonPauseOrResume.ImageSource = this.FindResource("Image_Play") as BitmapImage;
                media.Pause();
                t1.Stop();
                timer?.Stop();
            }
            else
            {
                thumbButtonPauseOrResume.ImageSource = this.FindResource("Image_Pause") as BitmapImage;
                media.Play();
            }
            t1.Start();
            timer?.Start();

            playing = !playing;

            txtPlayOrPause.Text = playing ? "\uE103" : "\uE102";
        }


        //单击进度条事件
        private bool changeSliderFlag = false;

        private void Slider_PreviewMouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            media.Position = TimeSpan.FromMilliseconds(slider.Value);
            changeSliderFlag = false;
        }

        private void Slider_MouseMove(object sender, MouseEventArgs e)
        {
            if (e.MouseDevice.LeftButton == MouseButtonState.Pressed) changeSliderFlag = true;
        }



        private void GridMask_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            OpenCloseSetting(null, null);
        }

        private void btnList_PreviewMouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            if (musicListView.SelectedItem != null)
                musicListView.ScrollIntoView(musicListView.SelectedItem);
        }

        private void ShowInfo(string info)
        {
            txtInfo.Text = info;
            (this.FindResource("ShowInfo") as Storyboard).Begin();
        }


        private void thumbButton_PauseOrResume(object sender, EventArgs e)
        {
            PauseOrResume(null, null);

        }

        //打开播放列表事件
        private void OpenClosePlayingList(object sender, RoutedEventArgs e)
        {
            borderPlayingList.Visibility = borderPlayingList.Visibility == Visibility.Visible ? Visibility.Collapsed : Visibility.Visible;

        }

        /// <summary>
        /// 用于指示是否用户鼠标停留在了滚动歌词上，true为停留在上，false为木有停留
        /// </summary>
        bool Rolling_condition = false;
        /// <summary>
        /// 存储歌词分离出的时间
        /// </summary>
        ArrayList lrc_time = new ArrayList();

        ///// <summary>
        ///// 存储与时间对应的歌词
        ///// </summary>
        ArrayList lrc_lyrics = new ArrayList();
        private void Read_lyrics_string(string lrc)
        {

            int a = 0;
            string[] temp = lrc.Split(new string[] { "\\n" }, StringSplitOptions.RemoveEmptyEntries);//拆分字符串
            for (int i = 0; i < temp.Length; i++)
            {

                //去除歌词前部分歌曲信息
                if (temp[i].Length > 10 && DateTime.TryParse(temp[i].Substring(1, 5), out _))//只要歌词部分，其他全部去除
                {
                    temp[i] = temp[i].Replace(@"\r", "");//某些歌词可能存在\r字符串
                    lrc_time.Add(function.Substring(temp[i], "[", "]"));//截取字符串，分离时间
                    lrc_lyrics.Add(temp[i].Substring(lrc_time[a].ToString().Length + 2, temp[i].Length - lrc_time[a].ToString().Length - 2));//截取歌词
                    if (lrc_lyrics[a].ToString() == "" || lrc_lyrics[a].ToString() == "//\r") //剔除空行和"//"
                    {
                        lrc_time.RemoveAt(a);
                        lrc_lyrics.RemoveAt(a);
                    }
                    else { a++; }//当符合条件数组下标才会定位到下一行
                }

            }
            打印歌词();//将读取后的歌词打印到滚动歌词控件上
        }

        Color color = (Color)ColorConverter.ConvertFromString("#2f5284");//蓝色
        Color color2 = (Color)ColorConverter.ConvertFromString("#FF000000");//黑色
        private void 打印歌词()
        {

            for (int i = 0; i < lrc_time.Count; i++)
            { //遍历打印歌词
                if (lrc_lyrics[i] != null) { function.填充菜单(歌词滚动显示, lrc_lyrics[i].ToString(), null, 470, 35, 16, true); }
            }
            try { ((ListBoxItem)歌词滚动显示.Items[0]).Foreground = new SolidColorBrush(color); }//将第一句歌词颜色该为红色
            catch { }
            if (歌词滚动显示.Items.Count > 3)
            {
                for (int i = 0; i < 5; i++) { function.填充菜单(歌词滚动显示, null, null, 470, 35, 15, true); }//多打印空白行5个
            }
        }
        private void theout1(object source, System.Timers.ElapsedEventArgs e)
        {
            Dispatcher.Invoke(//同步线程
                  new Action(
                delegate
                {
                    try
                    {
                        for (int i = 0; i < lrc_time.Count; i++)
                        {
                            if (lrc_time[i].ToString().Substring(0, 7) == Convert.ToString(media.Position).Substring(3, 7))
                            {
                                歌词滚动显示.SelectedIndex = i;

                                ((ListBoxItem)歌词滚动显示.Items[i]).Foreground = new SolidColorBrush(color);//将当前一句颜色改色

                                if (Rolling_condition == false)
                                {
                                    歌词滚动显示.ScrollIntoView(歌词滚动显示.Items[歌词滚动显示.SelectedIndex + 5]);//让歌词显示在中间
                                }

                                for (int j = 0; j < 歌词滚动显示.SelectedIndex; j++)//上面歌词改颜色为黑色
                                {
                                    ((ListBoxItem)歌词滚动显示.Items[j]).Foreground = new SolidColorBrush(color2);
                                }

                                for (int o = 歌词滚动显示.Items.Count - 5; o > 歌词滚动显示.SelectedIndex; o--)//下面歌词修改为黑色
                                {
                                    ((ListBoxItem)歌词滚动显示.Items[o]).Foreground = new SolidColorBrush(color2);
                                }

                                if (Get != null)//如果启用了桌面歌词
                                {
                                    Get.主.Text = lrc_lyrics[i].ToString();
                                    Get.父.Text = lrc_lyrics[i + 1].ToString();
                                }

                            }
                        }
                    }
                    catch { }
                }));
        }

        private void 歌词_Click(object sender, RoutedEventArgs e)
        {
            if (Get != null)
            {
                Get.Visibility = Visibility.Collapsed;
                Get = null;
            }

            else
            {
                Get = new 桌面歌词();
                Get.WindowStartupLocation = WindowStartupLocation.CenterScreen;
                Get.Show();
            }
        }

        private void wind_Click(object sender, RoutedEventArgs e)
        {
            if (GetWind != null)
            {
                GetWind.Visibility = Visibility.Collapsed;
                GetWind = null;
            }

            else
            {
                GetWind = new wind();
                GetWind.fcc1 += Playback_status;
                GetWind.WindowStartupLocation = WindowStartupLocation.CenterScreen;
                GetWind.Show();
            }
        }

        private int Playback_status(int a)
        {
            if (a == 1)
            {
                PauseOrResume(null, null);
            }

            return 0;
        }
    }




}
