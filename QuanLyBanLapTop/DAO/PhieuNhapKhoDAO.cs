using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
namespace DAO
{
    public class PhieuNhapKhoDAO
    {
        private Connect conn = new Connect();
        // thêm 1 nhà cung cấp
        public void addReceipt(PhieuNhapKho pnk)
        {
            // kết nối với connect
            conn.Conn.Open();
            // tạo lớp kết nối sqlCommand 
            SqlCommand command = new SqlCommand("Proc_addReceipt", conn.Conn);
            // đặt tên biến
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@idReceipt", pnk.IdReceipt);
            command.Parameters.AddWithValue("@idSupplier", pnk.IdSupplier);
            command.Parameters.AddWithValue("@dateReceipt", pnk.DateReceipt);
            command.Parameters.AddWithValue("@sumPay", pnk.SumPay);
            command.Connection = conn.Conn;
            // tạo biến reader
            SqlDataReader reader = command.ExecuteReader();
            reader.Close();
            conn.Conn.Close();
        }

        public void deleteReceipt(int IdReceipt)
        {
            // kết nối với connect
            conn.Conn.Open();
            // tạo lớp kết nối sqlCommand 
            SqlCommand command = new SqlCommand("Proc_deleteReceipt", conn.Conn);
            // đặt tên biến
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@idReceipt", IdReceipt);
            command.Connection = conn.Conn;
            // tạo biến reader
            SqlDataReader reader = command.ExecuteReader();
            reader.Close();
            conn.Conn.Close();
        }

        public void updateReceipt(PhieuNhapKho pnk)
        {
            // kết nối với connect
            conn.Conn.Open();
            // tạo lớp kết nối sqlCommand 
            SqlCommand command = new SqlCommand("Proc_updateReceipt", conn.Conn);
            // đặt tên biến
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@idReceipt", pnk.IdReceipt);
            command.Parameters.AddWithValue("@idSupplier", pnk.IdSupplier);
            command.Parameters.AddWithValue("@dateReceipt", pnk.DateReceipt);
            command.Parameters.AddWithValue("@sumPay", pnk.SumPay);
            command.Connection = conn.Conn;
            // tạo biến reader
            SqlDataReader reader = command.ExecuteReader();
            reader.Close();
            conn.Conn.Close();
        }
    }
}
