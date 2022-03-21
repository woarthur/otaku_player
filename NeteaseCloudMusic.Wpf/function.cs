using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;

namespace NeteaseCloudMusic.Wpf
{
    class function
    {
        /// <summary>
        /// 截取字符串
        /// </summary>
        /// <param name="sourse">目标字符串</param>
        /// <param name="startstr">从哪里</param>
        /// <param name="endstr">到这里</param>
        /// <returns>返回不包含传入参数的字符串</returns>
        public static string Substring(string sourse, string startstr, string endstr)
        {
            string result = string.Empty;
            int startindex, endindex;
            try
            {
                startindex = sourse.IndexOf(startstr);
                if (startindex == -1)
                {
                    return result;
                }
                string tmpstr = sourse.Substring(startindex + startstr.Length);
                endindex = tmpstr.IndexOf(endstr);
                if (endindex == -1)
                {
                    return result;
                }
                result = tmpstr.Remove(endindex);
            }
            catch { }
            return result;
        }
        public static void 填充菜单(ListBox box, string name, string tooltip, int width, int height, int fontsize, bool Centered)
        {
            ListBoxItem item = new ListBoxItem();
            item.Content = name;//设置显示名称
            item.Width = width;//设置宽度
            item.Height = height;//设置高度
            //item.FontFamily fontFamily = "";
            item.FontSize = fontsize;//设置字号
            item.ToolTip = tooltip;//设置提示
            //item.Focusable = false;
            if (Centered == true) { item.HorizontalContentAlignment = HorizontalAlignment.Center; }//设置文本上下左右居中
            box.Items.Add(item);//将控件添加到集合里
        }
    }
}
