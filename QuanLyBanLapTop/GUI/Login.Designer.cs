namespace GUI
{
    partial class Login
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Login));
            this.text_user = new System.Windows.Forms.Label();
            this.text_pass = new System.Windows.Forms.Label();
            this.input_user = new System.Windows.Forms.TextBox();
            this.input_pass = new System.Windows.Forms.TextBox();
            this.btn_login = new System.Windows.Forms.Button();
            this.btn_forgot = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.img_avatarLogin = new System.Windows.Forms.PictureBox();
            this.text_title = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btn_exit = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.img_avatarLogin)).BeginInit();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // text_user
            // 
            this.text_user.AutoSize = true;
            this.text_user.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.text_user.Location = new System.Drawing.Point(34, 65);
            this.text_user.Name = "text_user";
            this.text_user.Size = new System.Drawing.Size(95, 23);
            this.text_user.TabIndex = 0;
            this.text_user.Text = "Tài khoản";
            // 
            // text_pass
            // 
            this.text_pass.AutoSize = true;
            this.text_pass.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.text_pass.Location = new System.Drawing.Point(34, 126);
            this.text_pass.Name = "text_pass";
            this.text_pass.Size = new System.Drawing.Size(91, 23);
            this.text_pass.TabIndex = 1;
            this.text_pass.Text = "Mật khẩu";
            // 
            // input_user
            // 
            this.input_user.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.input_user.Location = new System.Drawing.Point(149, 61);
            this.input_user.Name = "input_user";
            this.input_user.Size = new System.Drawing.Size(364, 30);
            this.input_user.TabIndex = 2;
            this.input_user.TextChanged += new System.EventHandler(this.input_user_TextChanged);
            // 
            // input_pass
            // 
            this.input_pass.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.input_pass.Location = new System.Drawing.Point(149, 122);
            this.input_pass.Name = "input_pass";
            this.input_pass.Size = new System.Drawing.Size(364, 30);
            this.input_pass.TabIndex = 3;
            // 
            // btn_login
            // 
            this.btn_login.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_login.Location = new System.Drawing.Point(149, 189);
            this.btn_login.Name = "btn_login";
            this.btn_login.Size = new System.Drawing.Size(161, 38);
            this.btn_login.TabIndex = 4;
            this.btn_login.Text = "Đăng nhập";
            this.btn_login.UseVisualStyleBackColor = true;
            this.btn_login.Click += new System.EventHandler(this.login_click);
            // 
            // btn_forgot
            // 
            this.btn_forgot.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_forgot.Location = new System.Drawing.Point(352, 189);
            this.btn_forgot.Name = "btn_forgot";
            this.btn_forgot.Size = new System.Drawing.Size(161, 38);
            this.btn_forgot.TabIndex = 5;
            this.btn_forgot.Text = "Quên mật khẩu";
            this.btn_forgot.UseVisualStyleBackColor = true;
            this.btn_forgot.Click += new System.EventHandler(this.forgot_click);
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.SystemColors.Control;
            this.groupBox1.Controls.Add(this.img_avatarLogin);
            this.groupBox1.Location = new System.Drawing.Point(30, 99);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(435, 411);
            this.groupBox1.TabIndex = 6;
            this.groupBox1.TabStop = false;
            // 
            // img_avatarLogin
            // 
            this.img_avatarLogin.Dock = System.Windows.Forms.DockStyle.Fill;
            this.img_avatarLogin.Image = ((System.Drawing.Image)(resources.GetObject("img_avatarLogin.Image")));
            this.img_avatarLogin.Location = new System.Drawing.Point(3, 18);
            this.img_avatarLogin.Name = "img_avatarLogin";
            this.img_avatarLogin.Size = new System.Drawing.Size(429, 390);
            this.img_avatarLogin.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.img_avatarLogin.TabIndex = 0;
            this.img_avatarLogin.TabStop = false;
            // 
            // text_title
            // 
            this.text_title.AutoSize = true;
            this.text_title.Font = new System.Drawing.Font("Arial", 19.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.text_title.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.text_title.Location = new System.Drawing.Point(356, 35);
            this.text_title.Name = "text_title";
            this.text_title.Size = new System.Drawing.Size(333, 38);
            this.text_title.TabIndex = 7;
            this.text_title.Text = "Đăng nhập hệ thống";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btn_exit);
            this.groupBox2.Controls.Add(this.input_user);
            this.groupBox2.Controls.Add(this.text_user);
            this.groupBox2.Controls.Add(this.text_pass);
            this.groupBox2.Controls.Add(this.btn_forgot);
            this.groupBox2.Controls.Add(this.input_pass);
            this.groupBox2.Controls.Add(this.btn_login);
            this.groupBox2.Font = new System.Drawing.Font("Microsoft YaHei UI", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(482, 106);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(535, 404);
            this.groupBox2.TabIndex = 8;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Thông tin đăng nhập";
            // 
            // btn_exit
            // 
            this.btn_exit.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_exit.Location = new System.Drawing.Point(236, 255);
            this.btn_exit.Name = "btn_exit";
            this.btn_exit.Size = new System.Drawing.Size(204, 38);
            this.btn_exit.TabIndex = 6;
            this.btn_exit.Text = "Thoát chương trình";
            this.btn_exit.UseVisualStyleBackColor = true;
            this.btn_exit.Click += new System.EventHandler(this.exitSystem_click);
            // 
            // Login
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1056, 531);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.text_title);
            this.Controls.Add(this.groupBox1);
            this.Name = "Login";
            this.Text = "Đăng nhập";
            this.Load += new System.EventHandler(this.Login_Load);
            this.groupBox1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.img_avatarLogin)).EndInit();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label text_user;
        private System.Windows.Forms.Label text_pass;
        private System.Windows.Forms.TextBox input_user;
        private System.Windows.Forms.TextBox input_pass;
        private System.Windows.Forms.Button btn_login;
        private System.Windows.Forms.Button btn_forgot;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.PictureBox img_avatarLogin;
        private System.Windows.Forms.Label text_title;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btn_exit;
    }
}

