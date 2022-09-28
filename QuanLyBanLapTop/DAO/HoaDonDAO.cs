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
    public class HoaDonDAO
    {
        private Connect conn = new Connect();
        // thêm 1 quyền
        public void addHoaDon(HoaDonDTO hd)
        {
            //kết nối với connect
            conn.Conn.Open();

            //tạo lớp kết nối sqlCommand
            SqlCommand command = new SqlCommand("Proc_addHoaDon", conn.Conn);
            //proc lát mình tạo trong sqlServer
            //đặt tên biến 
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@id", hd.IdBill);
            command.Parameters.AddWithValue("@dateBill", hd.DateBill);
            command.Parameters.AddWithValue("@sumPay", hd.SumPay);
            command.Parameters.AddWithValue("@typePay", hd.TypePay);
            command.Parameters.AddWithValue("@discountMoney", hd.DiscountMoney);
            command.Parameters.AddWithValue("@pay", hd.Pay);
            command.Parameters.AddWithValue("@status", hd.Status);
            command.Parameters.AddWithValue("@idEmployee", hd.IdEmployee);
            command.Parameters.AddWithValue("@idCustomer", hd.IdCustomer);
            command.Connection = conn.Conn;
            // tạo biến reader 
            command.ExecuteReader();

            conn.Conn.Close();
            // xong giờ qua tạo biến proc là ok;
        }

        public void updateHoaDon(HoaDonDTO hd)
        {
            //kết nối với connect
            conn.Conn.Open();

            //tạo lớp kết nối sqlCommand
            SqlCommand command = new SqlCommand("Proc_updateHoaDon", conn.Conn);
            //proc lát mình tạo trong sqlServer
            //đặt tên biến 
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@id", hd.IdBill);
            command.Parameters.AddWithValue("@dateBill", hd.DateBill);
            command.Parameters.AddWithValue("@sumPay", hd.SumPay);
            command.Parameters.AddWithValue("@typePay", hd.TypePay);
            command.Parameters.AddWithValue("@discountMoney", hd.DiscountMoney);
            command.Parameters.AddWithValue("@pay", hd.Pay);
            command.Parameters.AddWithValue("@status", hd.Status);
            command.Parameters.AddWithValue("@idEmployee", hd.IdEmployee);
            command.Parameters.AddWithValue("@idCustomer", hd.IdCustomer);
            command.Connection = conn.Conn;
            // tạo biến reader 
            command.ExecuteReader();

            conn.Conn.Close();
            // xong giờ qua tạo biến proc là ok;
        }

        public void deleteHoaDon(int idBill)
        {
            //kết nối với connect
            conn.Conn.Open();

            //tạo lớp kết nối sqlCommand
            SqlCommand command = new SqlCommand("Proc_deleteHoaDon", conn.Conn);
            //proc lát mình tạo trong sqlServer
            //đặt tên biến 
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@id", idBill);
            command.Connection = conn.Conn;
            // tạo biến reader 
            command.ExecuteReader();
            conn.Conn.Close();
            // xong giờ qua tạo biến proc là ok;
        }
    }
}
}
