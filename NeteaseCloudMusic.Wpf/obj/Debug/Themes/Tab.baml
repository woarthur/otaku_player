   M S B A M L   `   `   `  ����P  LNeteaseCloudMusic.Wpf, Version=0.0.1.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:NeteaseCloudMusic.Wpf.ThemesNeteaseCloudMusic.Wpf.Themes  5      O,clr-namespace:NeteaseCloudMusic.Wpf.ControlsNeteaseCloudMusic.Wpf.Controls  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   TabItem.Selected.Border  �� Color �� 
TargetType �� Property �� Value �� 
TargetType �Name J� SnapsToDevicePixels-   'System.Windows.Input.KeyboardNavigation    TabNavigation � ColumnDefinitions	 ��Name
 � RowDefinitions ��Name ��Name K� IsItemsHost    TabIndex K� ZIndex ��Name    DirectionalNavigation ��Name �� Triggers P� Property P� Value �� 
TargetName �� RelativeSource �� AncestorType0   *NeteaseCloudMusic.Wpf.Controls.AnimatedTab �� BasedOn�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      4local*clr-namespace:NeteaseCloudMusic.Wpf.Themes  5      9controls,clr-namespace:NeteaseCloudMusic.Wpf.Controls  5      %�  &	        '�� !     7   '�� x    '  �    7���� 5      $  #bc2f2e��66   �� 5	      " ��6   .�5
   
   ��  � ��$ 2q�6$   �� 5   
    � ��$ Center=�67   �� 5   
    � ��$ Center=�65   �� 5   
    � ��
 ���� 6'   �� 5   
    � ��8   6(   �� 5   
    � ��$ 1q�6,   �� 5   
    � ��# � ��6'   �� 5   
    � �� 5      �� 5      " ��6"   .R�5      � $ templateRoot��6   }�.  . $ Local=�6`    5      �� 5      $	 ColumnDefinition0��6/   �� 5      $	 ColumnDefinition1��6/   $��0 �6J   
 5      �� 5      $ RowDefinition0��6,   $
��Auto �6D   �� 5      $ RowDefinition1��6,   $��* �6D   .+�5      �� $ headerPanel��6#   
������ $��0��5   #    . $��2,2,2,0q�5!   #   $��0��5"   #   $ 1��5#   #   $ 1��5$   #   �� 5%      $��0 0 0 1q�6!   ���#dddde16;   �� 5&      $ contentPanel��6!   #��z��5'   !   #��z��5(   !   #��z��5)   !   $��0��5*   !   $ 	Contained=�5+   !   $��1��5,   !   $ 2��5-   !   $ Local=�6A   ._�5.      �� $ PART_SelectedContentHost��6/   $��SelectedContent��6Q   #��z��6q   # z 6�   5/      50       51      P� 52       �@��TabStripPlacement$ Bottom=�6?   . �53      �� $ headerPanel��69    � ��$ 1��6R   �� 54      $ contentPanel��69    � ��$ 0��6S   �� 55      $ RowDefinition0��67    � ��$ * �6S   �� 56      $ RowDefinition1��67    � ��$
 Auto �6S   �� 57      $ headerPanel��67    � ��$ 2,0,2,2q�6P   58      P� 59       �@��TabStripPlacement$
 Left=�6?   . �5:      �� $ headerPanel��69    � ��$ 0��6R   �� 5;      $ contentPanel��69    � ��$ 0��6S   �� 5<      $ headerPanel��6<    � ��$ 0��6U   �� 5=      $ contentPanel��6<    � ��$ 1��6V   �� 5>      $ ColumnDefinition0��66    � ��$
 Auto �6U   �� 5?      $ ColumnDefinition1��66    � ��$ * �6U   �� 5@      $ RowDefinition0��67    � ��$ * �6S   �� 5A      $ RowDefinition1��67    � ��$ 0 �6S   �� 5B      $ headerPanel��67    � ��$ 2,2,0,2q�6P   5C      P� 5D       �@��TabStripPlacement$ Right=�6?   . �5E      �� $ headerPanel��69    � ��$ 0��6R   �� 5F      $ contentPanel��69    � ��$ 0��6S   �� 5G      $ headerPanel��6<    � ��$ 1��6U   �� 5H      $ contentPanel��6<    � ��$ 0��6V   �� 5I      $ ColumnDefinition0��66    � ��$ * �6U   �� 5J      $ ColumnDefinition1��66    � ��$
 Auto �6U   �� 5K      $ RowDefinition0��67    � ��$ * �6S   �� 5L      $ RowDefinition1��67    � ��$ 0 �6S   �� 5M      $ headerPanel��67    � ��$ 0,2,2,2q�6P   5N      P� 5O       � {� .  . �5P      �� $ templateRoot��6G   # � ��6a    � ��5Q      5S      5U      5V      �� 5X      " ��6   .�5Y   
   ��  �@�FocusVisualStyle 6-   Z� �� 5Z   
    � ��
 �   �6'   �� 5[   
    � ��
 ���� 6'   �� 5\   
    � ��
 ���� 6(   �� 5]   
    � ��$ 0q�6#   �� 5^   
    � ��$
 0 10q�6$   �� 5_   
    � ��$ 15(�6%   �� 5`   
    � ��$ Stretch=�67   �� 5a   
    � ��$ Stretch=�65   �� 5b   
    � �� 5c      �� 5d      " ��6"   .R�5e      � $ templateRoot��6    . $��0 0 20 0q�5f      .+�5g      �� $ Border��5i   !   
������ $��0 0 0 2q�5h   !   5i   !   �� 5j      $ contentPresenter��6+   $��Header��5k   +   |�.  #��z��5n   +   ��. # z 5p   +   ��5m   +   �� *HorizontalContentAlignment+ �� " ����5p   g   �� *VerticalContentAlignment+ �� " ��5q       5r      P� 5s       �@��
IsSelected . . �5u      �� $ Border��6%    � �� �#1f2a3f5w   %   �� 5x       � �� �#1f2a3f5y   %   5z      5|      5~      5      �� 5�      "  6   8   67   5�      