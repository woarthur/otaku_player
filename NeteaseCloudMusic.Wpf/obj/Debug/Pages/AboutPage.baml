   M S B A M L   `   `   `  ����P  LNeteaseCloudMusic.Wpf, Version=0.0.1.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:NeteaseCloudMusic.Wpf.PagesNeteaseCloudMusic.Wpf.Pages  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5      I)clr-namespace:NeteaseCloudMusic.Wpf.ModelNeteaseCloudMusic.Wpf.Model  5      +    %NeteaseCloudMusic.Wpf.Pages.AboutPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;local)clr-namespace:NeteaseCloudMusic.Wpf.Pages     5      4s&clr-namespace:System;assembly=mscorlib     5      ;model)clr-namespace:NeteaseCloudMusic.Wpf.Model     5        N� Title$  	AboutPage��5       � 	Resources 5         MyBackground �� 
StartPoint �� EndPoint � Color � Offset  ComponentItems �� Type/   )NeteaseCloudMusic.Wpf.Model.ComponentItem   Name   Description	   WebSite
   License  TB_Name �� 
TargetType �� Property �� Value  TB_Title  
TB_Content��%=  &	        &	 (    &	 X    &	 �    &	 j    �� 5   
   $	 0,0&�63   $	 0,1&�6D   .��5      � $ #448cb4��6   $	 0.2Q�6+   � 5      $ #48a8c7��6   $	 0.4Q�6+   � 5      $ #49b5cb��6   $	 0.6Q�6+   � 5      $ #51bfcf��6   $	 0.8Q�6+   � 5      $ #57afcd��6   $	 0.9Q�6+   5      �� 5   
   "  6)   .s�5        $ 	MvvmLight��6"   $� �MVVMLight是一个实现MVVM模式的轻量级框架（相对于Prism），能够更好的帮助我们开发WPF 、Windows Phone、Windows 8、SilverLight相关项目��5   "   $	 http://www.mvvmlight.net/��5   "   $?
 9https://github.com/lbugnion/mvvmlight/blob/master/LICENSE��5   "     5      $ Flurl��6"   $d ^A fluent, portable URL builder. To make HTTP calls off the fluent chain, check out Flurl.Http.��5   "   $	 https://flurl.dev��5   "   $$
 https://licenses.nuget.org/MIT��5   "     5      $ LiteDb��6"   $T NLiteDB - A lightweight embedded .NET NoSQL document store in a single datafile��5   "   $	 https://www.litedb.org��5    "   $:
 4https://raw.github.com/mbdavid/LiteDB/master/LICENSE��5!   "     5"      $ NeteaseCloudMusicApi��6"   $ 网易云音乐 API��5#   "   $5	 /https://github.com/wwh1004/NeteaseCloudMusicApi��5$   "   $$
 https://licenses.nuget.org/MIT��5%   "     5&      $ 
Newtonsoft��6"   $D >Json.NET is a popular high-performance JSON framework for .NET��5'   "   $%	 https://www.newtonsoft.com/json��5(   "   $$
 https://licenses.nuget.org/MIT��5)   "     5*      $ Ookii.Dialogs.Wpf��6"   $� �Ookii.Dialogs.Wpf is a class library for .NET applications providing several common dialogs. Included are classes for task dialogs, credential dialogs, progress dialogs, and common file dialogs��5+   "   $6	 0https://github.com/caioproiete/ookii-dialogs-wpf��5,   "   $J
 Dhttps://github.com/caioproiete/ookii-dialogs-wpf/blob/master/LICENSE��5-   "     5.      $ Costura.Fody��6"   $8 2Fody add-in for embedding references as resources.��5/   "   $%	 https://github.com/Fody/Costura��50   "   $$
 https://licenses.nuget.org/MIT��51   "     52      $ taglib-sharp��6"   $� �TagLib# (aka taglib-sharp) is a library for reading and writing metadata in media files, including video, audio, and photo formats.��53   "   $*	 $https://github.com/mono/taglib-sharp��55   "   $.
 (www.opensource.org/licenses/lgpl-2.1.php��56   "     57      $  GongSolutions.WPF.DragDrop��6"   $@ :An easy to use drag'n'drop framework for WPF applications.��58   "   $3	 -https://github.com/punker76/gong-wpf-dragdrop��59   "   $D
 >https://www.nuget.org/packages/gong-wpf-dragdrop/2.0.6/license��5:   "     5;      $ HandyControl��6"   $5 /Contains some commonly used simple WPF controls��5<   "   $,	 &https://github.com/NaBian/HandyControl��5=   "   $B
 <https://github.com/HandyOrg/HandyControl/blob/master/LICENSE��5>   "   5?      �� 5A   
   " ��6    .�5B      ��  � ��$
 Bold"�6+   �� 5C       � �� �#0f2b386+   5D      �� 5E   
   " ��6!   .�5F      ��  � ��$
 Bold"�6+   �� 5G       � ��$ 0 0 20 5q�6'   �� 5H       � �� �#0f2b386+   5I      �� 5J   
   " ��6#   .�5K      ��  � �� �#0f2b386+   �� 5L       � ��$ 0 0 0 5q�6'   �� 5M       � �� �#0f2b386+   5N      5O      .��5P      �� .��5Q   
   � $	��0 0q�6   #��[  6    � RowDefinitions 5R      �� 5S      $
��auto �6    �� 5T      $
��auto �6    �� 5U      $��* �6    .+�5W      �� $
��20 0q�6   .+�5X      �� $��关于��6   $��20(�5Y       �� Padding$
 0 20q�5Z      ���#0f2b386'   �� 5[       �� Orientation$ 
Horizontal=�6   .+�5\      �� $��名称��6    #��[ 6*   �� 5]      $��鲸风播放器��6    ���#0f2b386-   5^      �� 5_      $ 
Horizontal=�6   .+�5`      �� $��版本��6    #��[ 6*   �� 5a      -   5         ��Name$ 
txtVersion��5a       ���#0f2b3864   5b      �� 5c      $ 
Horizontal=�6   .+�5d      �� $��作者��6    #��[ 6*   �� 5e      $��otaku小许��6    ���#0f2b386/   5f      �� 5g      $ 
Horizontal=�6   .+�5h      �� $��Email��6    #��[ 6-   �� 5i      $��20231106@buaa.edu.cn��6    ���#0f2b386<   5j      5k      �� 5l      $��1��6   $
��20 0q�6&   .+�5m      �� $��声明��6   $��20(�5n      $
 0 20q�5o      ���#0f2b386'   �� 5p      #��[ 6   $7��11、本程序所有资源均来自网易云音乐��6@   �� 5q      #��[ 6   $7��12、本程序仅供学习交流编程技术使用��6@   �� 5r      #��[ 6   $R��L3、如果侵犯您的合法权益，请及时联系本人第一时间删除��6@   5s      � 5t      $��2��6   $
��20 0q�6     5u      �� 5v      $
��Auto �6$   �� 5w      $��* �6$   .+�5z      �� $��组件��6   $��20(�5{      $
 0 20q�5|      ���#0f2b386'   �� 5}      #��[ 6   $��1��5~      ���#0f2b38��5�      �� 5�       �� DataType"  6'   .R�5�      �� $��0 0 0 10q�6)   .+�5�   "   �� #��[ 6B   ��6,   �� *Name+6B   �� 5�   "   $
��Wrap=�6I   ��6,   �� *Description+6I   �� 5�   "   $ 
Horizontal=�6-   .+�5�   &   �� �� 5�   &   -   5        
 � Tag 5�   0   �� *	WebSite+.�6`   网站5�   '   5�   '   �� 5�   &   $��10 0 0 0q�60   �� 5�   &   -   5         5�   0   �� *	License+.�6`   	License5�   '   5�   '   5�   #   5�      5�      5�      5�      5�      5�      5�      