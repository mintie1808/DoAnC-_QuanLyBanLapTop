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
        private string id;
        private int idQuyen;

        public string Id { 
            get { return id; }
            set { id = value; }
        }
        public int IdQuyen { 
            get { return idQuyen; }
            set { idQuyen = value; }
        }
        public string UserName
        {
            get { return userName; }
           
        }
        public string Password
        {
            get { return password; }
            set { password = value; }
        }
        public UserDTO(string user, string pass)
        {
            this.userName = user;
            this.password = pass;
        }
        public UserDTO(string id,string user, string pass, int idQuyen)
        {
            this.userName = user;
            this.password = pass;
            this.id = id;
            this.idQuyen = idQuyen;
        }


    }
    
}
