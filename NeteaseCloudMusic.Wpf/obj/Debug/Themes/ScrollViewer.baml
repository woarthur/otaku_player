   M S B A M L   `   `   `  ����P  LNeteaseCloudMusic.Wpf, Version=0.0.1.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:NeteaseCloudMusic.Wpf.ControlsNeteaseCloudMusic.Wpf.Controls  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   Color_Accent  Brush_Accent  �� Color  ScrollBarBaseRepeatButton �� 
TargetType �� Property �� Value �� 
TargetType  ScrollBarBaseThumbVertical ��Name �� RadiusX �� RadiusY J� SnapsToDevicePixels	 �� Triggers
 P� Property P� Value �� 
TargetName  SecondaryTextBrush  PrimaryTextBrush   ScrollBarBaseThumbHorizontal  ScrollBarBaseStyle  ThirdlyTextBrush �Name ]�Name J� IsMouseOver ]� DecreaseRepeatButton �� PageUpCommand ]� IncreaseRepeatButton �� PageDownCommand ]� Thumb �� Triggers �� PageLeftCommand �� PageRightCommand )	 %ScrollViewerNativeBaseControlTemplate � 	Resources 
 Key �� TargetProperty �� 
TargetName9   3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value � ColumnDefinitions � RowDefinitions ��Name  �� CanContentScroll! �� CanHorizontallyScroll" �� CanVerticallyScroll# ��Name$ J� Opacity4  .System.Windows.Automation.AutomationProperties%   AutomationId& � Cursor' �� ScrollableHeight( � Maximum) � Minimum** �� #ComputedVerticalScrollBarVisibility+ �� ViewportHeight, �� ViewportSize- � Value. �� Mode/ �� RelativeSource0 �� ScrollableWidth1 �� Orientation,2 �� %ComputedHorizontalScrollBarVisibility3 �� ViewportWidth4 :� RoutedEvent  Storyboard1  Storyboard2 # ScrollViewerBaseControlTemplate  ScrollViewerNativeBaseStyle  ScrollViewerBaseStyle5 �� BasedOn;   5NeteaseCloudMusic.Wpf.Controls.WheelSpeedScrollViewer�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      4ctl,clr-namespace:NeteaseCloudMusic.Wpf.Controls  5      %�  &	        &	      7   &	 7     &	     &	 �    &	 �    7  7  7  7  7  7  &		 �
    7  7  7  7  &	 �    7  7  7  7  &	 l    7 	 &	 �    7  '�� �    7  '  �    7  ��5      #c8c9cc��6*   �� 5      8    6+   �� 5      " ��6.   .�5	   
   ��  �@�OverridesDefaultStyle . 62   �� 5
   
    � ��
 ���� 6'   �� 5   
    � |� .  6&   �� 5   
    � �� .  6&   �� 5   
    � �� 5      �� 5      " ��6"   .R�5      �� #��z��6    #��z��6D   #��z��6f   5      5      5      �� 5      " n�6/   .�5   
   ��  �@�OverridesDefaultStyle . 62   �� 5   
    � �� .  6&   �� 5   
    � �� 5      �� 5      " n�6"   .R�5      �� $ 	rectangle��6    $ 0��63   $ 0��6?   #��z��6K    . #��z��6�   #���  6�   	 5      P� 5      
 �@J�IsMouseOver . . �5      �� $ 	rectangle��65   # �  6L    � ��5       P� 5!      
 �@n�
IsDragging . . �5"      �� $ 	rectangle��65   # �  6L    � ��5#      5%      5'      5(      �� 5*      " n�61   .�5+   
   ��  �@�OverridesDefaultStyle . 62   �� 5,   
    � �� .  6&   �� 5-   
    � �� 5.      �� 5/      " n�6"   .R�50      �� $ 	rectangle��6    $ 4��63   $ 4��6?   #��z��6K    . #��z��6�   #���  6�   	 51      P� 52      
 �@J�IsMouseOver . . �53      �� $ 	rectangle��65   # �  6L    � ��54      P� 55      
 �@n�
IsDragging . . �56      �� $ 	rectangle��65   # �  6L    � ��57      59      5;      5<      �� 5>      " ��6'   .�5?   
   ��  �@��IsPressAndHoldEnabled .  69   �� 5@   
    �@��IsFlicksEnabled .  63   �� 5A   
    � ��# �  6'   �� 5B   
    � ��
 ���� 6'   �� 5C   
    � |� .  6&   �� 5D   
    � ��$ 0q�6,   �� 5E   
    � ��$ 8��6"   �� 5F   
    � ��$ 8��6%   �� 5G   
    � �� 5H      �� 5I      " ��6"   .R�5J      � $ Bg��6    . .+�5K      �� #��z��6!   ]� 5L      $ 
PART_Track��6    ��. #{�z 6O    5M      �� 5N   "   #��Z 6/   8��  6\    5P      �� 5Q   "   #��Z 6/   8�� 6^    5S      n� 5T   "   #��z��6(   8�� 6R   5V      5W      5X      5Z       5[   
   P� 5\      
 �@��Orientation$ 
Horizontal=�6-   . �5]      ��  � ��$
 Auto��6*   �� 5^       � ��$ 0��6-   �� 5_       � ��$ 8��6+   �� 5`       � ��$ 8��6.   �� 5a       � ��$	 0,1q�64   �� 5b       � �� 5c      �� 5d      " ��6*   .R�5e      � $ Bg��6#    . .+�5f   "   �� #��z��6)   ]� 5g   "   $ 
PART_Track��6(   #{�z 6<    5h   &   �� 5i   *   #��Z 67   8�� 6f    5k   &   �� 5l   *   #��Z 67   8�� 6g    5n   &   n� 5o   *   #��z��60   8�� 6Z   5q   #   5r      5s      5u      5v      5x      �� 5z      " ��6D    5{   
   ���� 5|      Storyboard1
 .��5}      U� $ Opacity�60   $ PART_VerticalScrollBar��6T   .\�5~         $ 0:0:.2��6+   $ .8Q�6<   5      U� 5�      $ Opacity�60   $ PART_HorizontalScrollBar��6T   .\�5�         $ 0:0:.2��6+   $ .8Q�6<   5�      5�      �� 5�      Storyboard2
 .��5�      U� $ Opacity�60   $ PART_VerticalScrollBar��6T   .\�5�         $ 0:0:.2��6+   $ 0Q�6<   5�      U� 5�      $ Opacity�60   $ PART_HorizontalScrollBar��6T   .\�5�         $ 0:0:.2��6+   $ 0Q�6<   5�      5�      5�      .R�5�   
   � $
 Grid��6   #��z��6    5�      �� 5�      $��* �6#   �� 5�      $
��Auto �6#    5�      �� 5�      $��* �6    �� 5�      $
��Auto �6    .+�5�      �� $! PART_ScrollContentPresenter��6%   $��2��6J   $��2��6[   #  z��6o   ! .  " .  #��z��6�   #��z��6  $��0��67  #��z��6G  $��0��6j  �� 5�      $# PART_VerticalScrollBar��6   $$ 0Q�68   8��  $% VerticalScrollBar��6p   $& Arrow��6�   $��1��6�   #( z' 6�   $) 0Q�6�   $��0��6�   #y�z* 6  #, z+ 6�  - 6N  �� *VerticalOffset+$. OneWay=�/ �� *TemplatedParent+6�  �� 5�      $# PART_HorizontalScrollBar��6   $$ 0Q�6:   8�� $% HorizontalScrollBar��6r   $& Arrow��6�   $��0��6�   #( z0 6�   $) 0Q�6�   $1 
Horizontal=�6  $��1��6  #y�z2 6'  #, z3 6�  - 6l  �� *HorizontalOffset+$. OneWay=�/ �� *TemplatedParent+6�  5�      	 5�   
   :� 5�      $4 
MouseEnter��6   .[�5�      �� 8�� 6"   5�      :� 5�      $4 
MouseLeave��6   .[�5�      �� 8�� 6"   5�      5�      �� 5�      " ��6>    5�   
   ���� 5�      Storyboard1
 .��5�      U� $ Opacity�60   $ PART_VerticalScrollBar��6T   .\�5�         $ 0:0:.2��6+   $ .8Q�6<   5�      U� 5�      $ Opacity�60   $ PART_HorizontalScrollBar��6T   .\�5�         $ 0:0:.2��6+   $ .8Q�6<   5�      5�      �� 5�      Storyboard2
 .��5�      U� $ Opacity�60   $ PART_VerticalScrollBar��6T   .\�5�         $ 0:0:.2��6+   $ 0Q�6<   5�      U� 5�      $ Opacity�60   $ PART_HorizontalScrollBar��6T   .\�5�         $ 0:0:.2��6+   $ 0Q�6<   5�      5�      5�      .R�5�   
   � $
 Grid��6   #��z��6    5�      �� 5�      $��* �6#   �� 5�      $
��Auto �6#    5�      �� 5�      $��* �6    �� 5�      $
��Auto �6    .+�5�      �� $! PART_ScrollContentPresenter��6%   $��2��6J   $��2��6[   #  z��6o   ! .  " .  #��z��6�   #��z��6  $��0��67  #��z��6G  $��0��6j  �� 5�      $# PART_VerticalScrollBar��6   $$ 0Q�68   8��  $% VerticalScrollBar��6p   $& Arrow��6�   $��1��6�   #( z' 6�   $) 0Q�6�   $��0��6�   #y�z* 6  #, z+ 6�  - 6N  �� *VerticalOffset+$. OneWay=�/ �� *TemplatedParent+6�  �� 5�      $# PART_HorizontalScrollBar��6   $$ 0Q�6:   8�� $% HorizontalScrollBar��6r   $& Arrow��6�   $��0��6�   #( z0 6�   $) 0Q�6�   $1 
Horizontal=�6  $��1��6  #y�z2 6'  #, z3 6�  - 6l  �� *HorizontalOffset+$. OneWay=�/ �� *TemplatedParent+6�  5�      	 5�   
   :� 5�      $4 
MouseEnter��6   .[�5�      �� 8�� 6"   5�      :� 5�      $4 
MouseLeave��6   .[�5�      �� 8�� 6"   5�      5�      �� 5�      " ��60   .�5�   
   ��  � ��$
 Auto=�68   �� 5�   
    � |� .  6&   �� 5�   
    � ��8   6%   5�      �� 5�      " ��6*   .�5�   
   ��  � ��$
 Auto=�68   �� 5�   
    � |� .  6&   �� 5�   
    � ��8   6%   5�      �� 5�      85   " ��6=   �� 5�      85   "  6=   5�      