   M S B A M L   `   `   `  ����K  GMoneyTransfer657, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:MoneyTransfer657MoneyTransfer657  5   	   "    MoneyTransfer657.BankingPage   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:MoneyTransfer657     5   	     � Title$  BankingPage��5   	   $	��450��6   $	��800��6*   .��5	      �  � ColumnDefinitions 5
   
   �� 5      �� 5      $��2* �6    � RowDefinitions 5   
   �� 5      �� 5      $��3* �6   .+�5   
   �� -   5         ��Name$ bankingMainLabel��5      $��Banking��6*   $��Center=�6<   $��0q�6Y   $��Center=�6d   $��36(�6   $��2��6�   �� 5   
   -   5         ��Name$ mainMenu2Button��5      $��	Main Menu��6*   $
��Left=�6>   $	��Top=�6Y   $��64��6q   $��35��6|   ���	#FF2FD878$��10(�6�   6�   �� 5   
   -   5        $ linkedAccountLabel��5      $��Linked Accounts��6,   $��Center=�6F   $��0q�6c   $��1��6n   $��14(�6{   $	��Top=�6�   �� 5   
   $��Center=�6   $��13��61   $��0,17,0,0q�6=   $��1��6O   $	��Top=�6\   $	��111��6t   �� 5   
   -   5         ��Name$ linkedAccountsListBox��5      $��50q�61   $��1��6=   �� 5   
   -   5         ��Name$ bankingMenuStackPanel��5      $��1��64   $��99.2,50.2,62.6,50q�6D   $��1��6_   .+�5      �� -   5        $ transfertoAppButton��5      $��Transfer to Application��62   $��44��6T   $
��10,0q�6`   �� 5      $��13��6   $��	0,0,0.2,0q�6$   �� 5      -   5        $ transfertoBankButton��5      $��Transfer to Your Bank��63   $��44��6S   $
��10,0q�6_   �� 5      $��13��6   $��	0,0,0.2,0q�6$   �� 5      -   5        $ autoDepositButton��5      $��Automatic Deposits��60   $��44��6M   $��	10,0,11,0q�6Y   �� 5      $��13��6   $��	0,0,0.2,0q�6$   �� 5      -	   5        $ linkAccountButton��5      $��Link Account��60   $��44��6G   $
��10,0q�6S   5      �� 5    
   -
   5        $ bankingOptionsLabel��5       $��Banking Options��6-   $��Center=�6G   $��0q�6d   $��1��6o   $��14(�6|   $	��Top=�6�   $��1��6�   �� 5!   
   $��Center=�6   $��13��61   $��0,17,0,0q�6=   $��1��6O   $	��Top=�6\   $	��111��6t   $��1��6�   �� 5"   
   -   5        $ bankingExampleButton��5"      $��Linked Account Example��6/   $��1��6P   $
��Left=�6`   $��0.2,0.2,0,0q�6{   $��1��6�   $	��Top=�6�   $	��116��6�   $��10(�6�   ���	#FFEBFF006�   5%      5&      