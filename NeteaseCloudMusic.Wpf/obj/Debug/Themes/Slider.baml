   M S B A M L   `   `   `  ����R  NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   Color_White  	Color_Red  
Color_Gray  	Brush_Red  �� Color  
Brush_Gray  SliderButtonStyle �� 
TargetType �� Property �� Value �� 
TargetType  DecreaseSliderButton �� BasedOn  IncreaseSliderButton  SliderThumbStyle A�Name'   !System.Windows.VisualStateManager    VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState 	 HorizontalSlider	 � RowDefinitions
 m�Name J� SnapsToDevicePixels m� 	Placement m� Fill ��Name �� CornerRadius ]�Name ]� DecreaseRepeatButton ]� Thumb ]� IncreaseRepeatButton �� Triggers P� Property P� Value �� 
TargetName 
 VerticalSlider � ColumnDefinitions �� Triggers  SliderThumbMiniStyle  HorizontalSliderMini  
SliderMini�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml      5      %�  &	        &	      &	 >     &	 ]     7  &	 u     7  &	 �     &	     7  7  &	 \    7  7  &	 �    7  7   7  &		 �    7  7  7  7  &	
 �
    7  7  7  7  7  7  '�� l    7 	 7 
 &	 �    7  7   7  &	     7  7  7  7  &	 {    7  7 
 ��5      #fefefe��6)   ��5      #c8e6ea��6'   ��5      #e5e5e5��6(   �� 5	      8    6(   �� 5
      8    6)   �� 5      " ��5      .�5   
   ��  �@J�SnapsToDevicePixels . 5      �� 5   
    �@�OverridesDefaultStyle . 5      �� 5   
    � �� .  5      �� 5   
    � |� .  5      �� 5   
    � �� 5      �� 5      " ��6"   .R�5      �� 
������ ._�5      �� #��z��6!   $��2��6K   5      5      5      5      �� 5!      8   " ��6V   .�5"   
   ��  � ��8  6'   5#      �� 5%      8   " ��6V   .�5&   
   ��  � ��8  6'   5'      �� 5)      " n�5*      .�5+   
   ��  �@J�SnapsToDevicePixels . 5,      �� 5-   
    �@�OverridesDefaultStyle . 5.      �� 5/   
    � ��$ 26��50      �� 51   
    � ��$ 16��52      �� 53   
    �@�Cursor$
 Hand��54      �� 55   
    � �� 56      �� 57      " n�6"   .R�58      � 
������ .+�59      A� $ Ellipse��6"   $��1��5:      $��16��61   $��16��6=   ��5;      �� 5<      8    6.   ��5>      �� 5?      8   6.    5A        5B      CommonStates��. 5C   "     
Normal��6.   5`      5b      A� 5c      $��4��6"   $��4��6-   ��5d      �� 5e   "   8   62   5g      5h      5i      5k      5l      �� 5o      " ��5p      .R�5q   
   � 	 5r      �� 5s      $
��Auto �6    �� 5t      $
��Auto �6    #��z��5u      �� 5v      $
��Auto �6    .+�5x      m� $
 TopTick��6    . $	 Top=�5z      $��4��5{      $y�	Collapsed=�5|       5}      �� 5~      $  #c8e6ea��6&   5�      �� 5�      $ TrackBackground��6   $��0q�5�      $ 2��5�      $��4��5�      $��1��5�      $��1q�5�      ��5�      �� 5�      8    6&   5�      ]� 5�      $ 
PART_Track��5�      $��1��5�       5�      �� 5�      8�� $��Slider.DecreaseLarge��5�       5�      n� 5�      8�� 6    5�      �� 5�      8�� $��Slider.IncreaseLarge��5�      5�      m� 5�      $
 
BottomTick��6    . $��2��5�      # z��5�      $ Bottom=�5�      $��4��5�      $y�	Collapsed=�5�      5�       5�   
   P� 5�       �@��TickPlacement$ TopLeft=�5�      . �5�      �� $ TopTick��6    � y�$ Visible=�5�      5�      P� 5�       �@��TickPlacement$ BottomRight=�5�      . �5�      �� $ 
BottomTick��6    � y�$ Visible=�5�      5�      P� 5�       �@��TickPlacement$
 Both=�5�      . �5�      �� $ TopTick��6    � y�$ Visible=�5�      �� 5�      $ 
BottomTick��6    � y�$ Visible=�5�      5�      5�      �� 5�      " ��5�      .R�5�   
   �  5�      �� 5�      $
��Auto �6#   �� 5�      $
��Auto �6#   #��z��5�      �� 5�      $
��Auto �6#   .+�5�      m� $
 TopTick��6    . $
 Left=�5�      $��4��5�      $y�	Collapsed=�5�       5�      �� 5�      8    6&   5�      �� 5�      $ TrackBackground��6   $��0q�5�      $ 2��5�      $��4��5�      $��1��5�      $��1q�5�      ��5�      �� 5�      8   6&   ��5�      �� 5�      8   6&   5�      ]� 5�      $ 
PART_Track��5�      $��1��5�       5�      �� 5�      8�� $��Slider.DecreaseLarge��5�       5�      n� 5�      8�� 6    5�      �� 5�      8�� $��Slider.IncreaseLarge��5�      5�      m� 5�      $
 
BottomTick��6    . $��2��5�      # z��5�      $ Right=�5�      $��4��5�      $y�	Collapsed=�5�      5�       5�   
   P� 5�       �@��TickPlacement$ TopLeft=�5�      . �5�      �� $ TopTick��6    � y�$ Visible=�5�      5�      P� 5�       �@��TickPlacement$ BottomRight=�5�      . �5�      �� $ 
BottomTick��6    � y�$ Visible=�5�      5�      P� 5�       �@��TickPlacement$
 Both=�5�      . �5      �� $ TopTick��6    � y�$ Visible=�5     �� 5     $ 
BottomTick��6    � y�$ Visible=�5     5     5     �� 5
     " ��6   .�5  
   ��  �@J�SnapsToDevicePixels . 5     �� 5  
    �@�OverridesDefaultStyle . 5      5  
   P� 5      �@��Orientation$ 
Horizontal=�5     . �5     ��  � ��$	 104��5     �� 5      � ��$ 21��5     �� 5      � ��8   5     5     P� 5      �@��Orientation$ Vertical=�5     . �5     ��  � ��$ 21��5     �� 5      � ��$	 104��5     �� 5      � ��8  5      5!     5#     �� 5%     " n�5&     .�5'  
   ��  �@J�SnapsToDevicePixels . 5(     �� 5)  
    �@�OverridesDefaultStyle . 5*     �� 5+  
    � ��$ 26��5,     �� 5-  
    � ��$ 12��5.     �� 5/  
    �@�Cursor$
 Hand��50     �� 51  
    � �� 52     �� 53     " n�6"   .R�54     � 
������ .+�55     A� $ Ellipse��6"   $��1��56     $��12��61   $��12��6=   ��57     �� 58     8    6.   ��5:     �� 5;  "   8   62   5=     A� 5>     $��2��6"   $��2��6-   ��5?     �� 5@  "   8   62   5B     5C     5D     5F     5G     �� 5I     " ��5J     .R�5K  
   � 	 5L     �� 5M     $
��Auto �6    �� 5N     $
��Auto �6    #��z��5O     �� 5P     $
��Auto �6    .+�5R     m� $
 TopTick��6    . $	 Top=�5T     $��2��5U     $y�	Collapsed=�5V      5W     �� 5X     $  #c8e6ea��6&   5Z     �� 5[     $ TrackBackground��6   $��0q�5\     $ 2��5]     $��2��5^     $��1��5_     $��0q�5`     ��5a     �� 5b     8    6&   5d     ]� 5e     $ 
PART_Track��5f     $��1��5e      5g     �� 5h     8�� $��Slider.DecreaseLarge��5i      5k     n� 5l     8�� 6    5n     �� 5o     8�� $��Slider.IncreaseLarge��5p     5r     m� 5s     $
 
BottomTick��6    . $��2��5u     # z��5v     $ Bottom=�5w     $��2��5x     $y�	Collapsed=�5y     5z      5{  
   P� 5|      �@��TickPlacement$ TopLeft=�5}     . �5~     �� $ TopTick��6    � y�$ Visible=�5�     5�     P� 5�      �@��TickPlacement$ BottomRight=�5�     . �5�     �� $ 
BottomTick��6    � y�$ Visible=�5�     5�     P� 5�      �@��TickPlacement$
 Both=�5�     . �5�     �� $ TopTick��6    � y�$ Visible=�5�     �� 5�     $ 
BottomTick��6    � y�$ Visible=�5�     5�     5�     �� 5�     " ��6   .�5�  
   ��  �@J�SnapsToDevicePixels . 5�     �� 5�  
    �@�OverridesDefaultStyle . 5�      5�  
   P� 5�      �@��Orientation$ 
Horizontal=�5�     . �5�     ��  � ��$ 80��5�     �� 5�      � ��$ 21��5�     �� 5�      � ��8   5�     5�     P� 5�      �@��Orientation$ Vertical=�5�     . �5�     ��  � ��$ 21��5�     �� 5�      � ��$	 104��5�     �� 5�      � ��8  5�     5�     5�     5�     