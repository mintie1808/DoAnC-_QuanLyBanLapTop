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
        NhanVienDao nvDAO = new NhanVienDao();
        NhanVien nv = new NhanVien(1, 'quan', 'cntt', '0389938946', 8000000, 200, 50, '1');
        nvDAO.addNhanVien(nv);
        private Connect conn = new Connect();

        /**
        NhanVienDao nvDAO = new NhanVienDao();
        NhanVien nv = new NhanVien(1, 'quan', 'cntt', '0389938946', 8000000, 200, 50, '1');
        nvDAO.addNhanVien(nv);
        **/
        // thêm 1 quyền
        public void addNhanVien(NhanVienDTO nv)
        {
            //kết nối với connect
            conn.Conn.Open();

            //tạo lớp kết nối sqlCommand
            SqlCommand command = new SqlCommand("Proc_addNhanVien", conn.Conn);
            //proc lát mình tạo trong sqlServer
            //đặt tên biến 
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@idEmployee", nv.idEmployee);
            command.Parameters.AddWithValue("@nameEmployee", nv.nameEmployee);
            command.Parameters.AddWithValue("@serviceEmployee", nv.serviceEmployee);
            command.Parameters.AddWithValue("@phoneNumber", nv.phoneNumber);
            command.Parameters.AddWithValue("@salaryEmployee", nv.salaryEmployee);
            command.Parameters.AddWithValue("@totalSales", nv.totalSales);
            command.Parameters.AddWithValue("@quantityBillPay", nv.quantityBillPay);
            command.Parameters.AddWithValue("@idUser", nv.idUser);
            command.Connection = conn.Conn;
            // tạo biến reader 
            command.ExecuteReader();

            conn.Conn.Close();
            // xong giờ qua tạo biến proc là ok;
        }

        public void updateNhanVien(NhanVienDTO nv)
        {
            //kết nối với connect
            conn.Conn.Open();

            //tạo lớp kết nối sqlCommand
            SqlCommand command = new SqlCommand("Proc_updateQuyen", conn.Conn);
            //proc lát mình tạo trong sqlServer
            //đặt tên biến 
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@idEmployee", nv.idEmployee);
            command.Parameters.AddWithValue("@nameEmployee", nv.nameEmployee);
            command.Parameters.AddWithValue("@serviceEmployee", nv.serviceEmployee);
            command.Parameters.AddWithValue("@phoneNumber", nv.phoneNumber);
            command.Parameters.AddWithValue("@salaryEmployee", nv.salaryEmployee);
            command.Parameters.AddWithValue("@totalSales", nv.totalSales);
            command.Parameters.AddWithValue("@quantityBillPay", nv.quantityBillPay);
            command.Parameters.AddWithValue("@idUser", nv.idUser);
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
            command.Parameters.AddWithValue("@idEmployee", nv.idEmployee);
            command.Connection = conn.Conn;
            // tạo biến reader 
            command.ExecuteReader();

            conn.Conn.Close();
            // xong giờ qua tạo biến proc là ok;
        }
    }

    
}
