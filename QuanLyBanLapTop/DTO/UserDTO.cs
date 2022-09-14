using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class UserDTO
    {
        private string userName;
        private string password;
        private string maTK;

        public string UserName
        {
            get { return userName; }
           
        }
        public string Password
        {
            get { return password; }
            set { password = value; }
        }
        public string MaTK
        {
            get { return maTK; }
            set { maTK = value; }
        }
        public UserDTO(string user, string pass)
        {
            this.userName = user;
            this.password = pass;
        }


    }
    
}
