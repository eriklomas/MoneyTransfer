using System;
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

namespace MoneyTransfer657
{
    /// <summary>
    /// Interaction logic for InvestPage.xaml
    /// </summary>
    public partial class InvestPage : Window
    {
        public InvestPage()
        {
            InitializeComponent();
        }

        private void main3MenuButton_Click(object sender, RoutedEventArgs e)
        {
            MainWindow dashboard = new MainWindow();
            dashboard.Show();
            this.Close();
        }
    }
}
