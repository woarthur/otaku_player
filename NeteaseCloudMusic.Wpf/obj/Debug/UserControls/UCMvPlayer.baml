   M S B A M L   `   `   `  ����P  LNeteaseCloudMusic.Wpf, Version=0.0.1.0, Culture=neutral, PublicKeyToken=nullW0clr-namespace:NeteaseCloudMusic.Wpf.UserControls"NeteaseCloudMusic.Wpf.UserControls  5      Q-clr-namespace:NeteaseCloudMusic.Wpf.ViewModelNeteaseCloudMusic.Wpf.ViewModel  5      3    -NeteaseCloudMusic.Wpf.UserControls.UCMvPlayer   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Blocal0clr-namespace:NeteaseCloudMusic.Wpf.UserControls     5      <vm-clr-namespace:NeteaseCloudMusic.Wpf.ViewModel     5        � 	Resources  5         SB_ShowTools �� 
TargetName �� TargetProperty W� From	 W� To g� Duration g� DecelerationRatio  SB_HideTools��%>  &	        &	 �     �� 5   
   .��5      W� $ 	gridTools��6   $ Opacity�5      $ 0X�5      $ 1X�6'   $ 0:0:0.5D�6.   $ 1Q�5      5      �� 5   
   .��5      W� $ 	gridTools��6   $ Opacity�5      $ 1X�5      $ 0X�6'   $ 0:0:1D�6.   $ 1Q�5      5      5      .��5      �  � Triggers 5   
   :� 5       :� RoutedEvent$ 
MouseEnter��6   .[�5      �� #��[  6"   5      :� 5      $ 
MouseLeave��6   .[�5      �� #��[ 6"   5       .+�5"   
   �� $'��!../Resources/Image/mv_loading.png��6   $��UniformToFill=�6;   r� 5#   
   -   5        	 r�Name$	 media��5#      
 r� LoadedBehavior$
 Manual=�5$       r� Source 5&      �� *Mv.Url+  StringToUriConverter �� 	Converter# [  � ContextMenu 5(      �� 5)      .@�5*      m� $��下载��6   $	��150��5-       m� Command 5+      �� *AddToDownloadCmd+ m� CommandParameter 5,      �� *Mv.Url+5-      5.      50      � 51   
   -   5         �Name$ 	gridTools��53      $��40��51      $��Bottom=�6   ���	#99000000 � ColumnDefinitions 54      �� 55      $
��auto �6#   �� 56      $��* �6#   �� 57      $
��auto �6#   .+�59      ��  �� Orientation$ 
Horizontal=�6   .+�5:      �� -   5        
������   ScaleButton#��[ 5:   2   $
��30 0q�5;      .��5=      � .+�5>      A� $��26��6"   $��26��6.   ���	#88ffffff69   �� 5?      -   5         ��Name$ txtPlayOrPause��5D   $     SegoeAssets#��[ 5?   $   $	����5@   $   $��Center=�5A   $   $��Center=�5B   $   $��13(�5C   $   5D   $   5E      5F      �� 5H      $��Center=�6   
�������$	��9.5(�5I      �� 5J      -   5         ��Name$ tbCurrentTime��5J       �� 5K      $�/��6    �� 5L      �6   �� *Mv.Duration+5M      5N      �� 5O      -   5         ��Name$ slider��5W      $��1��5O      $��	20 0 20 0q�6%     
SliderMini#��[ 5P      $��Center=�5Q       �� IsMoveToPointEnabled . 5W      �� 5Y      $��2��6   $ 
Horizontal=�5Z      $
��10 0q�5[      .+�5\      �� $��20��6   ���#616669$��1 0 0 0q�6:   $��20��6T   F� 5]        Icon.Volume#��[ 6   
�������$��Center=�6H   �� 5_      $
��10 0q�6   $��80��6'    � Maximum$ 1Q�62    � Minimum$ 0Q�6>    . $��Center=�5b      #��[ 5c       � Value 5`      ��  �� ElementName$ media�� �� Path$ Volume�5c      5d      �� 5f      $��2��6   $y�	Collapsed=�5g      $ 
Horizontal=�5h      .+�5i      �� $	��0 5q�6   $��80��6&   $ 1Q�61   $ 0Q�6=    .  6I   �� $ media��$ Volume�5j      �� 5k      $��20��6   ���#616669$��0 0 1 0q�6:   $��20��6T   �� 5l      $��1080P��6   $��10(�6)   
�������$��Center=�6J   �� 5m      $��20��6   ���#616669$��0 0 1 0q�6:   $��20��6T   F� 5o        	Icon.List#��[ 6    �� EdgeMode$ Aliased=�69   
�������$��Center=�6g   F� 5p        Icon.Shuffle#��[ 6   
�������$��Center=�6I   F� 5q       	 
Icon.Heart#��[	 6   
�������$��Center=�6G   F� 5r       
 Icon.HeartSolid#��[
 6   
�������$��Center=�6L   F� 5s        
Icon.Order#��[ 6   
�������$��Center=�6G   F� 5t        Icon.Search#��[ 6   
�������$��Center=�6H   F� 5u        	Icon.Play#��[ 6   
�������$��Center=�6F   F� 5v        	Icon.User#��[ 6   
�������$��Center=�6F   F� 5w        
Icon.Music#��[ 6   
�������$��Center=�6G   F� 5x        Icon.RepeatOne#��[ 6   
�������$��Center=�6K   F� 5y        Icon.RepeatAll#��[ 6   
�������$��Center=�6K   F� 5z        
Icon.Local#��[ 6   
�������$��Center=�6G   F� 5{        Icon.Download#��[ 6   
�������$��Center=�6J   F� 5|        
Icon.Cloud#��[ 6   
�������$��Center=�6G   F� 5}        
Icon.Radio#��[ 6   
�������$��Center=�6G   F� 5~        Icon.Add#��[ 6   
�������$��Center=�6E   F� 5        Icon.PlayList#��[ 6   
�������$��Center=�6J   5�      5�      5�      5�      