using DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace DAO
{
    public class UserDAO
    {
        public string searchUser(UserDTO us)
        {
           
            Connect connect = new Connect();
            connect.Conn.Open();

            SqlCommand sqlCommand = new SqlCommand("proc_login", connect.Conn);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@user", us.UserName);
            sqlCommand.Parameters.AddWithValue("@pass", us.Password);

            sqlCommand.Connection = connect.Conn;

            SqlDataReader reader = sqlCommand.ExecuteReader();
            string result = null;
            if (reader.HasRows)
            {
                result = "0";

            }
            reader.Close();
            connect.Conn.Close();
            return result;
        }
    }
}
