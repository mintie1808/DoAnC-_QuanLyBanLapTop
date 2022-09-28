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
    public class NhanVienDao
    {
        private Connect conn = new Connect();

        /**
        NhanVienDao nvDAO = new NhanVienDao();
        NhanVien nv = new NhanVien(1, 'quan', 'cntt', '0389938946', 8000000, 200, 50, '1');
        nvDAO.addNhanVien(nv);
        **/
        // thêm 1 quyền
        public void addNhanVien(NhanVien nv)
        {
            //kết nối với connect
            conn.Conn.Open();

            //tạo lớp kết nối sqlCommand
            SqlCommand command = new SqlCommand("Proc_addNhanVien", conn.Conn);
            //proc lát mình tạo trong sqlServer
            //đặt tên biến 
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@idEmployee", nv.IdEmployee);
            command.Parameters.AddWithValue("@nameEmployee", nv.NameEmployee);
            command.Parameters.AddWithValue("@serviceEmployee", nv.ServiceEmployee);
            command.Parameters.AddWithValue("@phoneNumber", nv.PhoneNumber);
            command.Parameters.AddWithValue("@salaryEmployee", nv.SalaryEmployee);
            command.Parameters.AddWithValue("@totalSales", nv.TotalSales);
            command.Parameters.AddWithValue("@quantityBillPay", nv.QuantityBillPay);
            command.Parameters.AddWithValue("@idUser", nv.IdUser);
            command.Connection = conn.Conn;
            // tạo biến reader 
            command.ExecuteReader();

            conn.Conn.Close();
            // xong giờ qua tạo biến proc là ok;
        }

        public void updateNhanVien(NhanVien nv)
        {
            //kết nối với connect
            conn.Conn.Open();

            //tạo lớp kết nối sqlCommand
            SqlCommand command = new SqlCommand("Proc_updateEmployee", conn.Conn);
            //proc lát mình tạo trong sqlServer
            //đặt tên biến 
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@idEmployee", nv.IdEmployee);
            command.Parameters.AddWithValue("@nameEmployee", nv.NameEmployee);
            command.Parameters.AddWithValue("@serviceEmployee", nv.ServiceEmployee);
            command.Parameters.AddWithValue("@phoneNumber", nv.PhoneNumber);
            command.Parameters.AddWithValue("@salaryEmployee", nv.SalaryEmployee);
            command.Parameters.AddWithValue("@totalSales", nv.TotalSales);
            command.Parameters.AddWithValue("@quantityBillPay", nv.QuantityBillPay);
            command.Parameters.AddWithValue("@idUser", nv.IdUser);
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
            SqlCommand command = new SqlCommand("Proc_deleteEmployee", conn.Conn);
            //proc lát mình tạo trong sqlServer
            //đặt tên biến 
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@idEmployee", id);
            command.Connection = conn.Conn;
            // tạo biến reader 
            command.ExecuteReader();

            conn.Conn.Close();
            // xong giờ qua tạo biến proc là ok;
        }
    }

    
}
