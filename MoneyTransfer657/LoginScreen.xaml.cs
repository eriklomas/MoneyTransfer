﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Data.SQLite;
using System.Security.Cryptography;
using System.Net.Http;
using Binance.API.Csharp.Client;
using System.Threading;
using System.ComponentModel;

namespace MoneyTransfer657
{
    /// <summary>
    /// Interaction logic for LoginScreen.xaml
    /// </summary>
    public partial class LoginScreen : Window
    {
        public LoginScreen()
        {
            InitializeComponent();
        }

        public decimal Get_price(string symbol)
        {
            var apiClient = new ApiClient("kqj7EeRsUcWxOsGuvVvtqyrV04ieCHKROQpjE3vyXgvVQEfKzcIKVMI4n89O4AKt", "79rvVk1A5rFyLnmTzoGQEXT8eiwHn9LgTpAmFmzNb0OcTGEw8XmxUoEjV33WQFON");
            var BinanceClient = new BinanceClient(apiClient);
            var priceChangeInfo = BinanceClient.GetAllPrices().Result;
            for (int i = 0; i < priceChangeInfo.Count(); i++)
            {
                if (priceChangeInfo.ElementAt(i).Symbol.Contains(symbol))
                {
                    return priceChangeInfo.ElementAt(i).Price;

                }
            }
            return 0.0m;
        }
        private void loginButton_Click(object sender, RoutedEventArgs e)
        {
            SQLiteConnection sqlCon = new SQLiteConnection("Data Source = MyDatabase.sqlite; Version=3;");
            try
            {
                if (sqlCon.State == System.Data.ConnectionState.Closed)
                    sqlCon.Open();

                string query = "SELECT COUNT(1) FROM user WHERE Username=@Username AND Password=@Password";
                SQLiteCommand sqlCmd = new SQLiteCommand(query, sqlCon);
                sqlCmd.CommandType = System.Data.CommandType.Text;
                sqlCmd.Parameters.AddWithValue("@Username", userTextBox.Text);
                sqlCmd.Parameters.AddWithValue("@Password", passTextBox.Password);
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                if (count == 1)
                {
                    MainWindow dashboard = new MainWindow();
                    dashboard.Show();
                    this.Close();
                }
                else
                {
                    MessageBox.Show("Username or password is Incorrect.");
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                sqlCon.Close();
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            //MainWindow dashboard = new MainWindow();
            //dashboard.Show();
            //this.Close();
            object result = null;
            Thread td = new Thread(() => {
                result = Get_price("BTCUSD");
            });
            td.Start();
            td.Join();
            MessageBox.Show(result.ToString());






        }
    }

}
