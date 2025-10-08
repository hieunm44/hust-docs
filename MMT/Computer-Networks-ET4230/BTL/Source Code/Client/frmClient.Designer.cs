namespace frmHungClient
{
    partial class frmClient
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.btnNoiLuu = new System.Windows.Forms.Button();
            this.txtPathNhan = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txtPort = new System.Windows.Forms.TextBox();
            this.txtServer = new System.Windows.Forms.TextBox();
            this.btnNhan = new System.Windows.Forms.Button();
            this.folderBrowserDialog1 = new System.Windows.Forms.FolderBrowserDialog();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Blue;
            this.label1.Location = new System.Drawing.Point(140, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(226, 20);
            this.label1.TabIndex = 0;
            this.label1.Text = "Ứng dụng truyền file qua mạng";
            this.label1.UseWaitCursor = true;
            // 
            // btnNoiLuu
            // 
            this.btnNoiLuu.Location = new System.Drawing.Point(10, 71);
            this.btnNoiLuu.Name = "btnNoiLuu";
            this.btnNoiLuu.Size = new System.Drawing.Size(77, 23);
            this.btnNoiLuu.TabIndex = 1;
            this.btnNoiLuu.Text = "Nơi lưu :";
            this.btnNoiLuu.UseVisualStyleBackColor = true;
            this.btnNoiLuu.UseWaitCursor = true;
            this.btnNoiLuu.Click += new System.EventHandler(this.btnNoiLuu_Click);
            // 
            // txtPathNhan
            // 
            this.txtPathNhan.Location = new System.Drawing.Point(93, 73);
            this.txtPathNhan.Name = "txtPathNhan";
            this.txtPathNhan.Size = new System.Drawing.Size(366, 20);
            this.txtPathNhan.TabIndex = 3;
            this.txtPathNhan.UseWaitCursor = true;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(20, 46);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(51, 13);
            this.label2.TabIndex = 0;
            this.label2.Text = "IP Server";
            this.label2.UseWaitCursor = true;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(268, 46);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(32, 13);
            this.label3.TabIndex = 0;
            this.label3.Text = "Port :";
            this.label3.UseWaitCursor = true;
            // 
            // txtPort
            // 
            this.txtPort.Location = new System.Drawing.Point(306, 39);
            this.txtPort.Name = "txtPort";
            this.txtPort.Size = new System.Drawing.Size(153, 20);
            this.txtPort.TabIndex = 3;
            this.txtPort.UseWaitCursor = true;
            // 
            // txtServer
            // 
            this.txtServer.Location = new System.Drawing.Point(93, 39);
            this.txtServer.Name = "txtServer";
            this.txtServer.Size = new System.Drawing.Size(153, 20);
            this.txtServer.TabIndex = 3;
            this.txtServer.UseWaitCursor = true;
            // 
            // btnNhan
            // 
            this.btnNhan.Location = new System.Drawing.Point(382, 99);
            this.btnNhan.Name = "btnNhan";
            this.btnNhan.Size = new System.Drawing.Size(77, 23);
            this.btnNhan.TabIndex = 1;
            this.btnNhan.Text = "Nhận";
            this.btnNhan.UseVisualStyleBackColor = true;
            this.btnNhan.UseWaitCursor = true;
            this.btnNhan.Click += new System.EventHandler(this.btnNhan_Click);
            // 
            // frmClient
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(469, 243);
            this.Controls.Add(this.txtPort);
            this.Controls.Add(this.txtServer);
            this.Controls.Add(this.txtPathNhan);
            this.Controls.Add(this.btnNhan);
            this.Controls.Add(this.btnNoiLuu);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D;
            this.Name = "frmClient";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Client";
            this.UseWaitCursor = true;
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnNoiLuu;
        private System.Windows.Forms.TextBox txtPathNhan;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtPort;
        private System.Windows.Forms.TextBox txtServer;
        private System.Windows.Forms.Button btnNhan;
        private System.Windows.Forms.FolderBrowserDialog folderBrowserDialog1;
        private System.Windows.Forms.Label label1;
    }
}

