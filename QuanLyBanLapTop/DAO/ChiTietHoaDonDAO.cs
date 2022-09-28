using DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class ChiTietHoaDonDAO
    {
        private Connect conn = new Connect();
        public void addChiTietHoaDon(ChiTietHoaDonDTO chiTietHoaDon)
        {
            conn.Conn.Open();
            SqlCommand command = new SqlCommand("Proc_addChiTietHoaDon", conn.Conn);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@quantityProduct", chiTietHoaDon.QuantityProduct);
            command.Parameters.AddWithValue("@unitPrice", chiTietHoaDon.UnitPrice);
            command.Parameters.AddWithValue("@intoMoney", chiTietHoaDon.IntoMoney);
            command.Parameters.AddWithValue("@moneyDown", chiTietHoaDon.MoneyDown);
            command.Parameters.AddWithValue("@idProduct", chiTietHoaDon.IdProduct);
            command.Parameters.AddWithValue("@idBill", chiTietHoaDon.IdBill);
            command.Connection = conn.Conn;
            
            SqlDataReader reader = command.ExecuteReader();
            reader.Close();
            conn.Conn.Close();

        }
        public void updateChiTietHoaDon(ChiTietHoaDonDTO chiTietHoaDon)
        {
            conn.Conn.Open();
            SqlCommand command = new SqlCommand("Proc_updateChiTietHoaDon", conn.Conn);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@quantityProduct", chiTietHoaDon.QuantityProduct);
            command.Parameters.AddWithValue("@unitPrice", chiTietHoaDon.UnitPrice);
            command.Parameters.AddWithValue("@intoMoney", chiTietHoaDon.IntoMoney);
            command.Parameters.AddWithValue("@moneyDown", chiTietHoaDon.MoneyDown);
            command.Parameters.AddWithValue("@idProduct", chiTietHoaDon.IdProduct);
            command.Parameters.AddWithValue("@idBill", chiTietHoaDon.IdBill);
            command.Connection = conn.Conn;

            SqlDataReader reader = command.ExecuteReader();
            reader.Close();
            conn.Conn.Close();

        }
        public void deleteChiTietHoaDon(string idProduct, int idBill)
        {
            conn.Conn.Open();
            SqlCommand command = new SqlCommand("Proc_deleteChiTietHoaDon", conn.Conn);
            command.CommandType = CommandType.StoredProcedure;
          
            command.Parameters.AddWithValue("@idProduct", idProduct);
            command.Parameters.AddWithValue("@idBill", idBill);
            command.Connection = conn.Conn;

            SqlDataReader reader = command.ExecuteReader();
            reader.Close();
            conn.Conn.Close();

        }
    }
}
