using DTO;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class KhachHangDAO
    {
        private Connect conn = new Connect();
        // thêm 1 quyền
        public void addKhachHang(KhachHangDTO kh)
        {
            //kết nối với connect
            conn.Conn.Open();

            //tạo lớp kết nối sqlCommand
            SqlCommand command = new SqlCommand("Proc_addKhachHang", conn.Conn);
            //proc lát mình tạo trong sqlServer
            //đặt tên biến 
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@idCustomer", kh.IdCustomer);
            command.Parameters.AddWithValue("@nameCustomer", kh.NameCustomer);
            command.Parameters.AddWithValue("@address", kh.Address);
            command.Parameters.AddWithValue("@phoneNumber", kh.PhoneNumber);
            command.Parameters.AddWithValue("@email", kh.Email);
            command.Connection = conn.Conn;
            // tạo biến reader 
            command.ExecuteReader();

            conn.Conn.Close();
            // xong giờ qua tạo biến proc là ok;
        }

        public void updateKhachHang(KhachHangDTO kh)
        {
            //kết nối với connect
            conn.Conn.Open();

            //tạo lớp kết nối sqlCommand
            SqlCommand command = new SqlCommand("Proc_updateKhachHang", conn.Conn);
            //proc lát mình tạo trong sqlServer
            //đặt tên biến 
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@idCustomer", kh.IdCustomer);
            command.Parameters.AddWithValue("@nameCustomer", kh.NameCustomer);
            command.Parameters.AddWithValue("@address", kh.Address);
            command.Parameters.AddWithValue("@phoneNumber", kh.PhoneNumber);
            command.Parameters.AddWithValue("@email", kh.Email);
            command.Connection = conn.Conn;
            // tạo biến reader 
            command.ExecuteReader();

            conn.Conn.Close();
            // xong giờ qua tạo biến proc là ok;
        }

        public void deleteHoaDon(int idCustomer)
        {
            //kết nối với connect
            conn.Conn.Open();

            //tạo lớp kết nối sqlCommand
            SqlCommand command = new SqlCommand("Proc_deleteKhachHang", conn.Conn);
            //proc lát mình tạo trong sqlServer
            //đặt tên biến 
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@idCustomer", idCustomer);
            command.Connection = conn.Conn;
            // tạo biến reader 
            command.ExecuteReader();
            conn.Conn.Close();
            // xong giờ qua tạo biến proc là ok;
        }
    }
}
