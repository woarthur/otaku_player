   M S B A M L   `   `   `  ����P  LNeteaseCloudMusic.Wpf, Version=0.0.1.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:NeteaseCloudMusic.WpfNeteaseCloudMusic.Wpf  5   	   Q-clr-namespace:NeteaseCloudMusic.Wpf.ViewModelNeteaseCloudMusic.Wpf.ViewModel  5   H        NeteaseCloudMusic.Wpf.wind   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:NeteaseCloudMusic.Wpf     5   	   V RXamlAnimatedGif, Version=2.0.0.0, Culture=neutral, PublicKeyToken=20a987d8023d9690<gif2https://github.com/XamlAnimatedGif/XamlAnimatedGif  5   	   =	viewmodel-clr-namespace:NeteaseCloudMusic.Wpf.ViewModel  6H     � Title$
  wind��5
   	   $	��200��6   $	��200��6#    � WindowStyle$
 None=�6/    � AllowsTransparency . 
������  � DataContext 5	   	   �� *Main+   Locator �� Source# [  .��5      � -   5        
������ .+�5   
   �� '  !XamlAnimatedGif.AnimationBehavior   	SourceUri$; 5pack://application:,,,/Resources/Image/activewind.gif?�6   $	��175��6h   $	��175��6t   6�   �� 5   
   $��30��6   $��30��6     ScaleButton#��[ 6(   $
��Left=�6M   $��	15 10 0 0q�6h   $	����6|   $��
/#iconfont)�6�   $��20(�6�   
������ ���#d2d2d3
������ ��6�   �� *PrevMusicCmd+6   �� 5   
   -   5        
������ $��Center=�5   *   $��0q�5   !   $��30��65   #��[ 5   !   $��0 10 0 0q�5   !   .��5      �� $	����6     SegoeAssets#��[ 5   ,   $��Center=�5   ,   $��Center=�5   ,   ���#2b2b2b$��20(�5   ,   $��1 0 0 0q�5   ,   5      �� 5   
   $��30��6   $��30��6   #��[ 6(   $��Right=�6M   $��	0 10 15 0q�6i   $	����6}   $��
/#iconfont)�6�   $��20(�6�   
������ ���#d2d2d3
������ ��6�   �� *NextMusicCmd+6"  5       5!      