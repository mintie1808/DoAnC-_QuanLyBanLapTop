using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;
using DAO;
using DTO;

namespace BUS
{
    public class UserBUS
    {
        static UserDTO currentAcc;
        private Connect connect = new Connect();
        public string login(string userName, string pass)
        {
            string info = null;
            if (userName == "")
                return "requeid_user";
            if (pass == "")
                return "requeid_pass";
            TaiKhoanDAO us = new TaiKhoanDAO();
            UserDTO userDTO = new UserDTO(userName, pass);
            string result = us.searchUser(userDTO);

            if(result != null)
            {
                currentAcc = userDTO;
                return "success";
            }
            else
            {
                return "notFound";
            }
        }
    }
}
