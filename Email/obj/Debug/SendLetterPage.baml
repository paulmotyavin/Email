   M S B A M L   `   `   `  ����@  <Email, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:EmailEmail  5          Email.SendLetterPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      localclr-namespace:Email  5        N� Title$  SendLetterPage��5
      .��5      �  � ColumnDefinitions 5   
   �� 5      $
��0.3* �6   �� 5      �� 5      $��0.15* �6    � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      .+�5   
   �� $��0��6   $��3��6$   $��0��68   $��2��6E   ���#5881576V   �� 5   
   $��Center=�6   $
��16pt(�6/   ���#344E41$��Center=�6T   $��0��6q   $��0��6�   $��	Кому:��6�   �� 5   
   $��Center=�6   $
��16pt(�6/   ���#344E41$��Center=�6T   $��0��6q   $��1��6�   $��	Тема:��6�   �� 5    
   -   5         ��Name$ ComboBx��5       )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Ящик��6$   $��5q�6J   $��10.5pt(�6V   ���#DAD7CD$��0��6}   $��3��6�   $��5,0,0,0q�6�   ���#3A5A40���#3A5A40.@�5!      �� $��Google��6   
 � Tag$ smtp.gmail.com��6,   �� 5"      $
��Mail��6   $ smtp.mail.ru��6*   �� 5#      $��Yandex��6   $ smtp.yandex.ru��6,   �� 5$      $��Rambler��6   $ smtp.rambler.ru��6-   5%      �� 5&   
   -   5        $��ToTbx��5&   s   $��5q�6   $��Center=�6   $
��14pt(�69   ���#DAD7CD���#344E41$��1��6�   $��0��6�   $+ %Введите отправителя��6�   �� 5'   
   -   5        $��
SubjectTbx��5'   s   $��5q�6   $��Center=�6   $
��14pt(�69   ���#DAD7CD���#344E41$��1��6�   $��2��6�   $��1��6�   $ Введите тему��6�   �� 5(   
   -   5        $��ReturnBT��5(   O   ���#588157���#588157
�������$��0��6_   $��8��6o   ��6|   0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ 	ArrowBack=�   Size$ 25X�6�   �� 5)   
   -   5        $��SendBT��5)   O   ���#588157���#588157
�������$��1��6]   $��2��6m   $��8��6�   ��6�     $
 Send=�$ 25X�6�   `� 5*   
   $��2��6    `� 
Background �#344E41$��0��68   $��3��6H   .�5+      c� ���#344E41���#A3B18A.@�5,      �� $��ApplicationCommands.Cut��6   ���#A3B18A��6P     $ 
ContentCut=�$ 20X��� 5-      $��ApplicationCommands.Copy��6   ���#A3B18A��6Q     $ ContentCopy=��� 5.      $��ApplicationCommands.Paste��6   ���#A3B18A��6R     $ ContentPaste=��� 5/      �� 50      $��ApplicationCommands.Undo��6   ���#A3B18A��6Q     $
 Undo=��� 51      $��ApplicationCommands.Redo��6   ���#A3B18A��6Q     $
 Redo=��� 52      �� 53      $ ��EditingCommands.ToggleBold��6   ���#A3B18A��6S     $ 
FormatBold=��� 54      $"��EditingCommands.ToggleItalic��6   ���#A3B18A��6U     $ FormatItalic=��� 55      $%��EditingCommands.ToggleUnderline��6   ���#A3B18A��6X     $ FormatUnderline=��� 56      �� 58      $&�� EditingCommands.IncreaseFontSize��6   ���#A3B18A��6Y     $ FormatFontSizeIncrease=��� 59      $&�� EditingCommands.DecreaseFontSize��6   ���#A3B18A��6Y     $ FormatFontSizeDecrease=��� 5:      �� 5;      ���#A3B18A��6.     $" ClipboardTextMultipleOutline=��� 5<      ���#A3B18A$��EditingCommands.AlignLeft��6.   ��6R     $ FormatAlignLeft=��� 5=      ���#A3B18A$!��EditingCommands.AlignCenter��6.   ��6T     $ FormatAlignCenter=��� 5>      ���#A3B18A$ ��EditingCommands.AlignRight��6.   ��6S     $ FormatAlignRight=��� 5?      ���#A3B18A$"��EditingCommands.AlignJustify��6.   ��6U     $ FormatAlignJustify=�5@      5A      �� 5B   
   -   5        $��
MessageRtb��5B      ���#588157$
��12pt(�6=   $' !Введите сообщение��6M   	 �� 
AcceptsTab	 . $��3��6�   $��0��6�   $��3��6�   $��5��6�   
 � 	Resources
 5C       �� 
TargetType �� Property �� Value��%X   'J�       �� 5D      " J�6   .�5E      ��  �@��Margin$ 0q�6/   5F      5G      5H      5I      5J      