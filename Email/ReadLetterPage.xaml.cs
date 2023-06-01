using System;
using System.Collections.Generic;
using System.IO;
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
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Xml.Linq;

namespace Email
{
    /// <summary>
    /// Логика взаимодействия для ReadLetterPage.xaml
    /// </summary>
    public partial class ReadLetterPage : Page
    {
        private string toWhom;
        private string fromWhom;
        private string subject;
        private string message;
        public ReadLetterPage()
        {
            InitializeComponent();
        }
        public void GetMessage(string To, string From, string Sub)
        {
            toWhom = To; fromWhom = From; subject = Sub; /*message = Message;*/
            ToWhom.Text = toWhom;
            FromWhom.Text = fromWhom;
            SubjectTbx.Text = subject;
            ConverterRTF.ToRtf(message);

            //подобно тому, что было в лекции про RichTextBox
            var text = new TextRange(MessageRtb.Document.ContentStart, MessageRtb.Document.ContentEnd);
            FileStream fs = new FileStream("msg.rtf", FileMode.Open);
            text.Load(fs, DataFormats.Rtf);
            fs.Close();

            //для очистки
            File.Delete("msg.rtf");
        }
    }
}
