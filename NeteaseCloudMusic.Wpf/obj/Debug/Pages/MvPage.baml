   M S B A M L   `   `   `  ����P  LNeteaseCloudMusic.Wpf, Version=0.0.1.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:NeteaseCloudMusic.Wpf.PagesNeteaseCloudMusic.Wpf.Pages  5      Q-clr-namespace:NeteaseCloudMusic.Wpf.ViewModelNeteaseCloudMusic.Wpf.ViewModel  5      W0clr-namespace:NeteaseCloudMusic.Wpf.UserControls"NeteaseCloudMusic.Wpf.UserControls  5
      (    "NeteaseCloudMusic.Wpf.Pages.MvPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;local)clr-namespace:NeteaseCloudMusic.Wpf.Pages     5      <vm-clr-namespace:NeteaseCloudMusic.Wpf.ViewModel     5      ?uc0clr-namespace:NeteaseCloudMusic.Wpf.UserControls     5
        N� Title$  MvPage��5       N� 
Background
 ���� .��5      � $��
25 0 25 20q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   � $��Stretch=�6   $��50��6-   .+�5      ��  �� Orientation$ 
Horizontal=�6   $��Center=�62   .+�5      �� ���#dedede��6   �� *	Mv.Name+65   �� 5      ���#dedede$
��20 0q�6P   $��11(�6_   ��6   �� *Mv.ArtistName+6_   5      �� 5      $��Right=�6�   $��Center=�5         TextForeground_Light_Brush#��[  5      ��5      �� *Mv.PlayCount+  PlayCountToStringConverter �� 	Converter# [  �� StringFormat$ 播放: {0}��5      5      3   -NeteaseCloudMusic.Wpf.UserControls.UCMvPlayer  5   
   $��1��6   5      5      