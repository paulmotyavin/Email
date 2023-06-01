using ImapX;
using ImapX.Collections;
using MaterialDesignThemes.Wpf;
using Spire.Doc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
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
    public partial class ListMessagesPage : Page
    {
        private UserWindow userWindow;
        private List<string> msgs = new List<string>();
        MessageCollection messages;
        public ListMessagesPage(UserWindow window)
        {
            InitializeComponent();
            userWindow = window;
        }

        private void MessagesLbx_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (MessagesLbx.SelectedItem != null)
            {
                string to = "";
                foreach (var i in (MessagesLbx.SelectedItem as Message).To)
                    to += i.Address;
                string from = (MessagesLbx.SelectedItem as Message).From.Address.ToString();
                string subject = (MessagesLbx.SelectedItem as Message).Subject;
                ReadLetterPage readLetterPage = new ReadLetterPage();
                readLetterPage.GetMessage(to, from, subject);
                userWindow.PageFrame.Content = readLetterPage;
            }
        }

        private void Open_MouseRightButtonDown(object sender, MouseButtonEventArgs e)
        {
            
        }

        public void Folder(string folder)
        {
            MessageBox.Show(folder);
            /*Task.Run(() =>
            {*/
                messages = ImapHelper.GetMessagesForFolder(folder);
           /* });*/
/*            Task.WaitAll();
*/            if (messages != null)
            {
                /*MessageBox.Show("Works!");
                *//*foreach (var message in messages)
                {
                    msgs.Add(message.Subject);
                }*/
                MessagesLbx.ItemsSource = null;
                /*MessagesLbx.ItemsSource = msgs;*/
                MessagesLbx.ItemsSource = messages;
            }
            userWindow.Progress.Visibility = Visibility.Hidden;

            MessageBox.Show("Hi!");
        }

        private void MessagesLbx_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            
        }

        private void MessagesLbx_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show(sender.ToString());
            if (sender == Open)
            {

                foreach (var item in (MessagesLbx.SelectedItem as Message).Body.Html)
                    MessageBox.Show(item.ToString());
                string to = "";
                foreach (var i in (MessagesLbx.SelectedItem as Message).To)
                    to += i.Address;
                string from = (MessagesLbx.SelectedItem as Message).From.Address.ToString();
                string subject = (MessagesLbx.SelectedItem as Message).Subject;
                ReadLetterPage readLetterPage = new ReadLetterPage();
                readLetterPage.GetMessage(to, from, subject);
                userWindow.PageFrame.Content = readLetterPage;
            }
            else
            {
                SendLetterPage page = new SendLetterPage(this, userWindow);
                page.GetAddress((MessagesLbx.SelectedItem as Message).From.Address);
                userWindow.PageFrame.Content = page;
            }
        }
    }
}
