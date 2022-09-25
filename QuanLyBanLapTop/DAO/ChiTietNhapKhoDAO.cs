using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
namespace DAO
{
    public class ChiTietNhapKhoDAO
    {
        private Connect conn = new Connect();
        // thêm 1 nhà cung cấp
        public void addDetailReceipt(ChiTietNhapKho ctnk)
        {
            // kết nối với connect
            conn.Conn.Open();
            // tạo lớp kết nối sqlCommand 
            SqlCommand command = new SqlCommand("Proc_addDetailReceipt", conn.Conn);
            // đặt tên biến
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@idReceipt", ctnk.IdReceipt);
            command.Parameters.AddWithValue("@idCoupon", ctnk.IdCoupon);
            command.Parameters.AddWithValue("@quantityRequest", ctnk.QuantityRequest);
            command.Parameters.AddWithValue("@quantityActual", ctnk.QuantityActual);
            command.Parameters.AddWithValue("@unitPrice", ctnk.UnitPrice);
            command.Parameters.AddWithValue("@intoMoney", ctnk.IntoMoney);
            command.Connection = conn.Conn;
            // tạo biến reader
            SqlDataReader reader = command.ExecuteReader();
            reader.Close();
            conn.Conn.Close();
        }

        public void deleteDetailReceipt(int IdReceipt, int IdCoupon)
        {
            // kết nối với connect
            conn.Conn.Open();
            // tạo lớp kết nối sqlCommand 
            SqlCommand command = new SqlCommand("Proc_deleteDetailReceipt", conn.Conn);
            // đặt tên biến
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@idReceipt", IdReceipt);
            command.Parameters.AddWithValue("@idCoupon", IdCoupon);
            command.Connection = conn.Conn;
            // tạo biến reader
            SqlDataReader reader = command.ExecuteReader();
            reader.Close();
            conn.Conn.Close();
        }

        public void updateDetailReceipt(ChiTietNhapKho ctnk)
        {
            // kết nối với connect
            conn.Conn.Open();
            // tạo lớp kết nối sqlCommand 
            SqlCommand command = new SqlCommand("Proc_updateDetailReceipt", conn.Conn);
            // đặt tên biến
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@idReceipt", ctnk.IdReceipt);
            command.Parameters.AddWithValue("@idCoupon", ctnk.IdCoupon);
            command.Parameters.AddWithValue("@quantityRequest", ctnk.QuantityRequest);
            command.Parameters.AddWithValue("@quantityActual", ctnk.QuantityActual);
            command.Parameters.AddWithValue("@unitPrice", ctnk.UnitPrice);
            command.Parameters.AddWithValue("@intoMoney", ctnk.IntoMoney);
            command.Connection = conn.Conn;
            // tạo biến reader
            SqlDataReader reader = command.ExecuteReader();
            reader.Close();
            conn.Conn.Close();
        }
    }
}
