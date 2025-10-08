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

namespace frmHungServer
{
    public partial class frmServer : Form
    {
        public frmServer()
        {
            InitializeComponent();
        }

       private void frmServer_Load(object sender, EventArgs e)
        {
                   
        }

        private void btnSelect_Click(object sender, EventArgs e)
        {
            openFileDialog1.ShowDialog();
            txtFile.Text = openFileDialog1.FileName;
        }

        private void btnSend_Click(object sender, EventArgs e)
        {
            IPAddress localip = IPAddress.Parse(txtip.Text);
            this.run(localip);
        }
        private void send_file_to_client(Socket Socketforclient, string filepath)
        {
            NetworkStream hungstream = new NetworkStream(Socketforclient);
            StreamWriter hungwriter = new StreamWriter(hungstream);
            FileInfo file = new FileInfo(@filepath);
            string thestring;
            thestring = file.Name;
            if (thestring != null)
            {
                MessageBox.Show("Sending", thestring);
                hungwriter.WriteLine(thestring);
                hungwriter.Flush();
            }
            FileStream tempfile = new FileStream(file.FullName, FileMode.OpenOrCreate, FileAccess.Read);
            byte[] buffer = new byte[2560000];
            int byteread;
            while ((byteread = tempfile.Read(buffer, 0, 2560000)) > 0)
            {
                hungstream.Write(buffer, 0, byteread);

            }
            tempfile.Close();
            hungwriter.Close();
        }
        private void run(IPAddress localip)
        {
            TcpListener hunglisten = new TcpListener(localip, int.Parse(txtPort.Text));
            hunglisten.Start();
            for (; ; )
            {
                Socket soketforclient = hunglisten.AcceptSocket();
                if (soketforclient.Connected)
                {
                    send_file_to_client(soketforclient, txtFile.Text);
                    soketforclient.Close();
                }
                break;
            }
        }

       

       
    }
}
