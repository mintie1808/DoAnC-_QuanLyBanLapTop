using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Threading.Tasks;
using DTO;

namespace DAO
{
    public class QuyenDAO
    {
        private Connect conn = new Connect();

        // thêm 1 quyền
        public void addQuyen(QuyenDTO quyen)
        {
            //kết nối với connect
            conn.Conn.Open();

            //tạo lớp kết nối sqlCommand
            SqlCommand command = new SqlCommand("Proc_addQuyen", conn.Conn);
            //proc lát mình tạo trong sqlServer
            //đặt tên biến 
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@id", quyen.Id);
            command.Parameters.AddWithValue("@name", quyen.Name);
            command.Connection = conn.Conn;
            // tạo biến reader 
            command.ExecuteReader();
            
            conn.Conn.Close();  
            // xong giờ qua tạo biến proc là ok;
        }

        public void updateQuyen(QuyenDTO quyen)
        {
            //kết nối với connect
            conn.Conn.Open();

            //tạo lớp kết nối sqlCommand
            SqlCommand command = new SqlCommand("Proc_updateQuyen", conn.Conn);
            //proc lát mình tạo trong sqlServer
            //đặt tên biến 
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@id", quyen.Id);
            command.Parameters.AddWithValue("@name", quyen.Name);
            command.Connection = conn.Conn;
            // tạo biến reader 
            command.ExecuteReader();

            conn.Conn.Close();
            // xong giờ qua tạo biến proc là ok;
        }

        public void deleteQuyen(int id)
        {
            //kết nối với connect
            conn.Conn.Open();

            //tạo lớp kết nối sqlCommand
            SqlCommand command = new SqlCommand("Proc_deleteQuyen", conn.Conn);
            //proc lát mình tạo trong sqlServer
            //đặt tên biến 
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@id", id);
            command.Connection = conn.Conn;
            // tạo biến reader 
            command.ExecuteReader();
            
            conn.Conn.Close();
            // xong giờ qua tạo biến proc là ok;
        }
    }
}
