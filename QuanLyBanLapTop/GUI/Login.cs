using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BUS;

namespace GUI
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }

        private void Login_Load(object sender, EventArgs e)
        {

        }

      

        private void login_click(object sender, EventArgs e)
        {
            string text_user = input_user.Text + "",
                    text_pass = input_pass.Text + "";
            UserBUS us = new UserBUS();
            string result = us.login(text_user, text_pass);
            Console.WriteLine(result);

        }

        private void forgot_click(object sender, EventArgs e)
        {

        }

        private void exitSystem_click(object sender, EventArgs e)
        {

        }

        private void input_user_TextChanged(object sender, EventArgs e)
        {

        }

        private void text_title_Click(object sender, EventArgs e)
        {

        }

        private void text_user_Click(object sender, EventArgs e)
        {

        }
    }
}
