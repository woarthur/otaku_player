   M S B A M L   `   `   `  ����P  LNeteaseCloudMusic.Wpf, Version=0.0.1.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:NeteaseCloudMusic.Wpf.ThemesNeteaseCloudMusic.Wpf.Themes  5      O,clr-namespace:NeteaseCloudMusic.Wpf.ControlsNeteaseCloudMusic.Wpf.Controls  5      Q-clr-namespace:NeteaseCloudMusic.Wpf.ConverterNeteaseCloudMusic.Wpf.Converter  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35h dMicrosoft.Expression.Interactions, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35  �� MergedDictionaries �� SourceO    INeteaseCloudMusic.Wpf.Converter.ScrollViewerVerticalOffsetBottomConverter -  )ScrollViewerVerticalOffsetBottomConverter  Color_GrayListbox_Selected  Color_GrayListbox_Hover  Brush_GrayListbox_Selected �� Color  Brush_GrayListbox_Hover  ListViewNavigationItem �� 
TargetType �� Property �� Value �� 
TargetType �� Padding J� SnapsToDevicePixels	 �� ContentStringFormat
 �� ContentStringFormat �� Triggers ]� 
Conditions �� Property �� Value �� 
TargetName P� Property P� Value  ListViewMusicItem J� RenderTransformOrigin � Triggers :� RoutedEvent �� 
TargetName �� TargetProperty9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value  ListViewAlbumItem  ListViewMvItem �� BasedOn ��Name;   5NeteaseCloudMusic.Wpf.Controls.WheelSpeedScrollViewer  Name   SpeedFactor.  (System.Windows.Interactivity.Interaction   	BehaviorsA  ;Microsoft.Expression.Interactivity.Layout.FluidMoveBehavior   Duration   EaseY/  )System.Windows.Media.Animation.CircleEase7  1System.Windows.Media.Animation.EasingFunctionBase    
EasingMode�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      Bei9http://schemas.microsoft.com/expression/2010/interactions  5      4local*clr-namespace:NeteaseCloudMusic.Wpf.Themes  5      4ctl,clr-namespace:NeteaseCloudMusic.Wpf.Controls  5      ;	converter-clr-namespace:NeteaseCloudMusic.Wpf.Converter  5        5	      �� 5
   
   $ ColorAndBrush.xaml?�6   %�  &	        &	      &	 2     &	 Q     7  &	 i     7  &	 �     &	 �    &	 ?    &	 �    7  '�� 3       5      6:   ��5      #dddde1��68   ��5      #e8e8eb��65   �� 5      8   69   �� 5      8   66   �� 5      " ��6+   .�5   
   ��  � ��$ 40��6#   �� 5   
    �@�FocusVisualStyle 6-   Z� �� 5   
    � ��$ 0q�6,   �� 5   
    � ��$ 0q�6$   �� 5   
    � �� 5      �� 5      " ��6"   .R�5      �� $��Bd��5#      #��z��5      # z��5       #��z��5!      #��z��5"       . ._�5%      �� #��z��6+   #��z��5&       #
 z	 5'       #��z��5(       #��z��5)       # z 5*       5+       5-      ]� 5.       5/      �� 50   "    �@��IsSelectionActive .  6R   �� 51   "    �@��
IsSelected . 6K   ./�53      �� $ Bd��6A    � �� �#3d71a054   )   55      ]� 56       57      �� 58   "    �@��IsSelectionActive . 6R   �� 59   "    �@��
IsSelected . 6K   ./�5;      �� $ Bd��6A    � �� �#385e936Q   5<      ]� 5=       5>      �� 5?   "    �@J�IsMouseOver . 6M   �� 5@   "    �@��
IsSelected .  6K   ./�5B      �� $ Bd��6A    � �� �#3d71a05C   )   5D      P� 5E       � {� .  5K      5M      5O      5P      �� 5R      " ��6&   .�5S   
   ��  � ��$ 44��6#   �� 5T   
    �@�FocusVisualStyle 6-   Z� �� 5U   
    � ��$ 0q�6,   �� 5V   
    � �� 5W      �� 5X      " ��6"   .R�5Y      �� $��Bd��5]      #��z��5Y      # z��5Z      #��z��5[      #��z��5\       . $ 0.5 0.5&�5_      z�5`      �� 5a       5c      :� 5d      $ 	MouseDown��6+   .[�5e   "   �� .��5f   &   �� .��5g   *   U� $ Bd��6H   $� �(Panel.RenderTransform).                                                                                     (ScaleTransform.ScaleX)�5h   I   .\�5j   .     $ 0��6C   $ 1Q�6O     5k   .   $ 0:0:0.05��6C   $
 0.98Q�6V     5l   .   $ 0:0:0.2��6C   $ 1Q�6U   5m   +   5n   '   5o   #   5p      ._�5r      �� #��z��6+   #��z��5s   +   #
 z	 5t   +   #��z��5u   +   #��z��5v   +   # z 5w   +   5x       5y      P� 5z       �@��AlternationIndex$ 0��6K   . �5{      ��  � �� �#a0d7e06;   5|      P� 5}       �@��AlternationIndex$ 1��6K   . �5~      ��  � �� �#bee5e66M   5      ]� 5�       5�      �� 5�   "    �@��IsSelectionActive .  6R   �� 5�   "    �@��
IsSelected . 6K   ./�5�      �� $ Bd��6A    � �� �#49adc95�   )   5�      ]� 5�       5�      �� 5�   "    �@��IsSelectionActive . 6R   �� 5�   "    �@��
IsSelected . 6K   ./�5�      �� $ Bd��6A    � �� �#4495ba6Q   �� 5�      $ Bd��6C    � �� 5�   "   ��5�   &   	#FF26A0DA��6A   5�      5�      ]� 5�       5�      �� 5�   "    �@J�IsMouseOver . 6M   �� 5�   "    �@��
IsSelected .  6K   ./�5�      �� $ Bd��6A    � �� �#66c3d15�   )   5�      P� 5�       � {� .  5�      5�      5�      5�      �� 5�      " ��6&   .�5�   
   ��  � ��$	 152��6#   �� 5�   
    � ��$	 150��6"   �� 5�   
    � ��$ 0 20 0 0q�6#   �� 5�   
    �@�FocusVisualStyle 6-   Z� �� 5�   
    � ��$ 0q�6,   �� 5�   
    � �� 5�      �� 5�      " ��6"   .R�5�      �� $��Bd��5�      #��z��5�      # z��5�      #��z��5�      #��z��5�       . $ 0.5 0.5&�5�      z�5�      �� 5�       5�      :� 5�      $ 	MouseDown��6+   .[�5�   "   �� .��5�   &   �� .��5�   *   U� $ Bd��6H   $� �(Panel.RenderTransform).                                                                                     (ScaleTransform.ScaleX)�5�   I   .\�5�   .     $ 0��6C   $ 1Q�6O     5�   .   $ 0:0:0.05��6C   $
 0.98Q�6V     5�   .   $ 0:0:0.2��6C   $ 1Q�6U   5�   +   U� 5�   *   $ Bd��6H   $� �(Panel.RenderTransform).                                                                                     (ScaleTransform.ScaleY)�5�   I   .\�5�   .     $ 0��6C   $ 1Q�6O     5�   .   $ 0:0:0.05��6C   $
 0.98Q�6V     5�   .   $ 0:0:0.2��6C   $ 1Q�6U   5�   +   5�   '   5�   #   5�      ._�5�      �� #��z��6+   #��z��5�   +   #
 z	 5�   +   #��z��5�   +   #��z��5�   +   # z 5�   +   5�       5�      5�      5�      5�      �� 5�      8   " ��6P   .�5�   
   ��  � ��$	 176��6"   �� 5�   
    � ��$	 160��6#   �� 5�   
    � ��$ 0 0 0 5q�6#   5�      �� 5�      " ��6   .�5�   
   ��  � ��$ 1q�6,   �� 5�   
    � ��# � ��6'   �� 5�   
    � ��$ Disabled=�6G   �� 5�   
    � ��$
 Auto=�6E   �� 5�   
    � �� .  6:   �� 5�   
    �@��PanningMode$
 Both=�65   �� 5�   
    �@��IsFlicksEnabled .  63   �� 5�   
    � ��$ Center=�65   �� 5�   
    � ��$ Stretch=�67   �� 5�   
    � �� 5�      �� 5�      " ��6"   .R�5�      �� $ Bd��6   #��z��6)   #��z��6U   #��z��6�   $ 1q�6�    . ._�5�      � .+�5�        $ sv��6o   |�.  #��z��6K   $	 1.5Q�5�   9   .��5�   "   �� # z 61   #��z��5�   1    5�   &     5�   *   $ 0:0:0.3D�6?    5   .     5  2   $  EaseOut=�6=   5  +   5  #   5     5     5      5     ]� 5      5     �� 5   "    �@��
IsGrouping . 6B   �� 5!  "   " �@%�IsVirtualizingWhenGrouping .  6d   ./�5#     ��  � �� .  6N   5$     53     55     56     57     