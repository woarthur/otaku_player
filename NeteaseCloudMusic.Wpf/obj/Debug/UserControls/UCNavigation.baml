   M S B A M L   `   `   `  ����P  LNeteaseCloudMusic.Wpf, Version=0.0.1.0, Culture=neutral, PublicKeyToken=nullW0clr-namespace:NeteaseCloudMusic.Wpf.UserControls"NeteaseCloudMusic.Wpf.UserControls  5      5    /NeteaseCloudMusic.Wpf.UserControls.UCNavigation   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Blocal0clr-namespace:NeteaseCloudMusic.Wpf.UserControls     5      ���#f3f3f5���#dddde1$��0 0 1 0q�5
      $	��200��5        � 	Resources  5         MyBackground �� 
StartPoint �� EndPoint � Color � Offset 	 Close �� TargetProperty	 W� To g� Duration W� EasingFunction0  *System.Windows.Media.Animation.QuarticEase  Open��%K  &	        &	 (    &	 �    �� 5   
   $	 0,0&�63   $	 0,1&�6D   .��5      � $ #448cb4��6   $	 0.2Q�6+   � 5      $ #48a8c7��6   $	 0.4Q�6+   � 5      $ #49b5cb��6   $	 0.6Q�6+   � 5      $ #51bfcf��6   $	 0.8Q�6+   � 5      $ #57afcd��6   $	 0.9Q�6+   5      �� 5   
   .��5      W� $ Width�6   $ 44X�5      $ 0:0:0.3D�6&    5        5      5      5      �� 5   
   .��5      W� $ Width�6   $	 192X�5       $ 0:0:0.3D�6'    5!        5"      5$      5%      5&      .��5'      � #��[  6   	 � RowDefinitions	 5(   
   �� 5)      $��44 �6   �� 5*      $��* �6   �� 5+      $
��auto �6   .+�5-   
   �� -   5        
 ��Name$
 btnOpenCloseNavigation��58      $��0��5-      $��44��5.      $��44��6   
������ ���#d2d2d3$	����51      $��0q�52      $
��Left=�53      $	��Top=�54      $��14(�55        ScaleButton#��[ 56        SegoeAssets#��[ 57      58      �� 59   
   -   5         ��Name$ listviewNavigation��5@      $��1��59      $��0q�6    
������   NavigationTemplate#��[ 5:        ListViewNavigationItem#��[ 5;      $��Disabled=�5<       �� SelectionMode$ Single=�5=      $��0q�5>      ��5?      �� *NavigationList+5@      � 5B   
   $��2��6   .+�5C      �� $��0 0 0 0q�6   � 5D      $��Center=�6   .+�5E      ��  �� Orientation$ 
Horizontal=�6   $	��100��5F      $��60��5G      .+�5H      �� $��30��6   $��30��6'   $	��7 0q�5I      $*��$../Resources/Image/default_album.png��5J       J� OpacityMask 5K      !� 5L       !� Visual 5M   "   A� 5N   &   $��35��6.   $��35��6:   
���   �6E   5P      5R      �� 5S      $��otaku��6    $��Center=�6-   $��5 0 0 0q�5T       ���#fffbf9$��15(�6F   5U      �� 5V      #��[ 6   
������ $��2��5X      $��44��5Y      $��44��5Z      .��5\      �� #��[ 6!   $	����5]   !   ���#fffbf9 �� TextAlignment$ Center=�5_   !   $��0 0 0 0q�5`   !   $��16(�5a   !   5c      �� 5d      -   5        $
 btnOpenCloseSetting��5i      #��[ 5d      
������ $��2��5f      $��44��5g      $��44��5h      .��5j      �� #��[ 6!   $	����5k   !   ���#fffbf9$ Center=�5m   !   $��0 0 0 0q�5n   !   $��16(�5o   !   5q      5r      5s      5t      5u      