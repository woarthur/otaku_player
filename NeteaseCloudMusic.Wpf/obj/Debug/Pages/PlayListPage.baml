   M S B A M L   `   `   `  ����P  LNeteaseCloudMusic.Wpf, Version=0.0.1.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:NeteaseCloudMusic.Wpf.PagesNeteaseCloudMusic.Wpf.Pages  5      b ^GalaSoft.MvvmLight.Platform, Version=5.4.1.0, Culture=neutral, PublicKeyToken=5f873c45e98af8a1lMclr-namespace:GalaSoft.MvvmLight.Command;assembly=GalaSoft.MvvmLight.PlatformGalaSoft.MvvmLight.Command 5      O,clr-namespace:NeteaseCloudMusic.Wpf.ControlsNeteaseCloudMusic.Wpf.Controls  5	      Q-clr-namespace:NeteaseCloudMusic.Wpf.ViewModelNeteaseCloudMusic.Wpf.ViewModel  5
      .    (NeteaseCloudMusic.Wpf.Pages.PlayListPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;local)clr-namespace:NeteaseCloudMusic.Wpf.Pages     5      c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      WcmdMclr-namespace:GalaSoft.MvvmLight.Command;assembly=GalaSoft.MvvmLight.Platform  5      ;controls,clr-namespace:NeteaseCloudMusic.Wpf.Controls  5	      6vm-clr-namespace:NeteaseCloudMusic.Wpf.ViewModel  5
        N� Title$  PlayListPage��5      .��5      � 
������  � RowDefinitions 5   
   �� 5      $	��270 �6   �� 5      $��* �6   .+�5   
   � $��0��6   }�. .+�5      �� $	��-50q�6   ._�5      0   *NeteaseCloudMusic.Wpf.Controls.FadeInImage  -   5          Name$ imgBg��5   '   $��UniformToFill=�6�   ��66   �� *Playlist.Cover+   StringToUriConverter �� 	Converter# [  6�    J� OpacityMask 5      �� 5       �� 
StartPoint$ 0.5 0&�6*    �� EndPoint$ 0.5 1&�6=   .��5      �  � Color$ Black��6'    � Offset$
 -0.5Q�65   � 5      $ Transparent��6'   $	 0.8Q�6;   5      	 J� Effect	 5      -  'System.Windows.Media.Effects.BlurEffect  5      
   Radius$	
 100Q�6!      RenderingBias$ Quality=�6.   5!      �� 5"      $��歌单��6   $��30 20q�6"   ���#2b2b2b61   � 5#      .+�5$      �� $	��200��6   $	��Top=�5%      $
��Left=�61   $��	30 50 0 0q�6L   $��1q�5&      ���#e7e7e9��5$   &   ��  �� RelativeSource �� *Self+ �� Path$ Height�._�5'      � .+�5(        $��UniformToFill=�6/    �� BitmapScalingMode$ HighQuality=�5)   /   ��5(   G   �� *Playlist.Cover+# [  5)   /   �� 5*      $��15��6!   $	��Top=�6-   
���   � J� Opacity$	 0.2Q�6X    5+      �� 5,   "   .��5-   &   � $ Transparent��63   $ 0Q�6G   � 5.   &   $ Black��63   $ 1Q�6A   5/   #   51      �� 53       �� Orientation$ 
Horizontal=�6%   $��Right=�6>   $y�	Collapsed=�54   %   $	��Top=�55   %   $��15��6=   $��0 0 3 0q�6I   .+�56      �� $	����6(     SegoeAssets#��[ 68   
�������$��Center=�6u   $��0 0 2 0q�6�   �� 57      $��31万��6(   $��10(�63   $��Center=�6B   
�������6]   58      59      5:      �� 5=      $	��200��6   $��40��6%   $:��4pack://application:,,,/Resources/Image/album_big.png��60   $
��Fill=�5>      $
��Left=�6'   $��
230 50 0 0q�5?      $	��Top=�6,   � 5@      $��
290 50 0 0q�6   .+�5A      �� .+�5B      �� $��20(�6C   
���   �$
��Bold"�6d   ��6$   �� *Playlist.Name+6d   �� 5C      $ 
Horizontal=�6%   $
��0 10q�6>   .+�5D      �� $��Center=�6K   $
��0 10q�6f   $��13(�6t   ���#1e1e1e��6(   �� *Playlist.Nickname+5E   ,   �� 5F      $��Center=�6c   $��10q�6~   $��12(�6�   ���#1e1e1e��6(   �� *Playlist.CreateTime+ �� StringFormat$ 
{0} 创建��5G   ,   5H      � 5I      .+�5J      �� $��28��6%   $��1q�61    # ButtonBorderBrush_Default_Brush#��[ 5K   %   $
��10 0q�5L   %     ScaleButton#��[ 5M   %    " ButtonBackground_Default_Brush#��[ 5N   %   $��	0 0 10 10q�5O   %   ��5P   %   �� *SearchVM.NotYetCmd+.��5Q   "   �� $ 
Horizontal=�6-   .+�5R   &   �� $	����60   #��[ 6@     TextForeground_Hover_Brush#��[ 6j   $��Center=�6�   �� 5S   &   $��	收藏(0)��60   $��Center=�6=   $��12(�6X   
���   �$��5 0 0 0q�5T   ?   5U   #   5V      �� 5W      $��28��6%   $��1q�61   #��[ 6E   $
��10 0q�5X   %   #��[ 64   #��[ 5Y   %   $��	0 0 10 10q�5Z   %   ��5[   %   �� *SearchVM.NotYetCmd+.��5]   "   �� $ 
Horizontal=�6-   .+�5^   &   �� $	����60   #��[ 6@   #��[ 6j   $��Center=�6�   �� 5_   &   $��	评论(0)��60   $��Center=�6=   $��12(�6X   
���   �$��5 0 0 0q�5`   ?   5a   #   5b      �� 5c      $��28��6%   $��1q�61   #��[ 6E   $
��10 0q�5d   %   #��[ 64   #��[ 5e   %   $��	0 0 10 10q�5f   %   ��5g   %   �� *SearchVM.NotYetCmd+.��5h   "   �� $ 
Horizontal=�6-   .+�5i   &   �� $	����60   #��[ 6@   #��[ 6j   $��Center=�6�   �� 5j   &   $��	分享(0)��60   $��Center=�6=   $��12(�6X   
���   �$��5 0 0 0q�5k   ?   5l   #   5m      �� 5n      $��28��6%   $��1q�61   #��[ 6E   $
��10 0q�5o   %   #��[ 64   #��[ 5p   %   $��	0 0 10 10q�5q   %   ��5r   %   �� *SearchVM.NotYetCmd+.��5s   "   �� $ 
Horizontal=�6-   .+�5t   &   �� $	����60   #��[ 6@   #��[ 6j   $��Center=�6�   �� 5u   &   $��下载��60   $��Center=�6:   $��12(�6U   
���   �$��5 0 0 0q�5v   C   5w   #   5x      5y      �� 5z      $��Center=�6$   $��0 5 20 5q�6?   $��12(�6Q   #��[ 5{   $   $
��Wrap=�5|   $   $��CharacterEllipsis=�5}   $   $��50��5~   $    � ToolTip 5   $   �� *Playlist.Description+�� 5�      $�	介绍：��6"     TextForeground_Light_Brush#��[ 6-    �� 5�      #��[ 6H   �6"   �� *Playlist.Description+6H   5�      5�      5�      5�      5�      � 5�   
   $��1��6   $
��20 0q�6   .+�5�      �� $��0q�6   
������  �� AlternationCount$ 2��6D     AlbumMusicTemplate#��[ 5�        ListViewMusicItem#��[ 5�      ��5�      �� *Musics+.  (System.Windows.Interactivity.Interaction   Triggers 5�      /  )System.Windows.Interactivity.EventTrigger  5�         	EventName$ MouseDoubleClick��6%   .  (System.Windows.Interactivity.TriggerBase   Actions. 5�      /  )GalaSoft.MvvmLight.Command.EventToCommand     Command 6-   �� *SearchVM.ChangeSelectMusicCmd+   CommandParameter 6_   ��  ��  �� AncestorType$ ListViewL�$ SelectedItem�5�       � ContextMenu 5�      �� 5�      .@�5�      m� $��添加到播放列表��6#    m� Command 64   �� *SearchVM.AddToPlaylistCmd+ m� CommandParameter 5�   #   ��  �� " ��$# PlacementTarget.SelectedItems��� 5�      m� 5�      $��收藏��6#    6/   �� *SearchVM.NotYetCmd+m� 5�      $��评论��6#    6/   �� *SearchVM.NotYetCmd+m� 5�      $��分享��6#    6/   �� *SearchVM.NotYetCmd+�� 5�      m� 5�      $��下载��6#    6/   �� *SearchVM.AddToDownloadCmd+ 5�   0   ��  �� " ��$# PlacementTarget.SelectedItems�5�      5�      5�      5�      5�      