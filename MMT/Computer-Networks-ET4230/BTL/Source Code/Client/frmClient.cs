using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Net;
using System.Net.Sockets;
using System.IO;

namespace frmHungClient
{
    public partial class frmClient : Form
    {
        public frmClient()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void btnNhan_Click(object sender, EventArgs e)
        {
            string links = "";
            TcpClient socketforserver;
            try
            {
                socketforserver = new TcpClient(txtServer.Text.Trim(), int.Parse(txtPort.Text));

            }
            catch
            {
                MessageBox.Show("Failed to connect to server ");
                return;
            }
            NetworkStream networkstream = socketforserver.GetStream();
            StreamReader streamreader = new StreamReader(networkstream);
            try
            {
                string outputstring;
                outputstring = streamreader.ReadLine();
                if (outputstring != null)
                {
                    MessageBox.Show(outputstring);
                }
                links = txtPathNhan.Text + "/" + outputstring;
                FileStream newfile = new FileStream(links, FileMode.OpenOrCreate, FileAccess.Write);
                int byteread;
                byte[] buffer =  new byte[256];
                while ((byteread = networkstream.Read(buffer, 0, 256)) > 0)
                {
                    newfile.Write(buffer, 0, byteread);
                }
                newfile.Close();
                networkstream.Close();
            }
            catch
            {

                MessageBox.Show("Exception reading from server");
                networkstream.Close();
            }
           
        }

        private void btnNoiLuu_Click(object sender, EventArgs e)
        {
            folderBrowserDialog1.ShowDialog();
            txtPathNhan.Text = folderBrowserDialog1.SelectedPath;
        }

      
       
    }
}
