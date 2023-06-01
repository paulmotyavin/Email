using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Email
{
    
    public partial class SendLetterPage : Page
    {
        private string AddressToWhom;
        private ListMessagesPage listPage;
        private UserWindow userWindow;
        public SendLetterPage(ListMessagesPage list, UserWindow user)
        {
            InitializeComponent();
            listPage = list;
            userWindow = user;
        }
        public void GetAddress(string address)
        {
            AddressToWhom = address;
            ToTbx.Text = address;
        }

        private void ReturnBT_Click(object sender, RoutedEventArgs e)
        {
            userWindow.PageFrame.Content = listPage;
        }
    }
}
