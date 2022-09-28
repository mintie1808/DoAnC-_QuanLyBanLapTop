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
    public class ChiTietKhuyenMaiDAO
    {
        private Connect conn = new Connect();

        public void addChiTietKhuyenMai(ChiTietKhuyenMaiDTO chiTietKhuyenMai)
        {

            conn.Conn.Open();

            SqlCommand command = new SqlCommand("Proc_addChiTietKhuyenMai", conn.Conn);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@discount", chiTietKhuyenMai.Discount);
            command.Parameters.AddWithValue("@status", chiTietKhuyenMai.Status);
            command.Parameters.AddWithValue("@idProduct", chiTietKhuyenMai.IdProduct);
            command.Parameters.AddWithValue("@idPromotion", chiTietKhuyenMai.IdPromotion);
            command.Connection = conn.Conn;
            SqlDataReader reader = command.ExecuteReader();
            reader.Close();
            conn.Conn.Close();
        }

        public void updateChiTietKhuyenMai(ChiTietKhuyenMaiDTO chiTietKhuyenMai)
        {

            conn.Conn.Open();

            SqlCommand command = new SqlCommand("Proc_updateChiTietKhuyenMai", conn.Conn);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@discount", chiTietKhuyenMai.Discount);
            command.Parameters.AddWithValue("@status", chiTietKhuyenMai.Status);
            command.Parameters.AddWithValue("@idProduct", chiTietKhuyenMai.IdProduct);
            command.Parameters.AddWithValue("@idPromotion", chiTietKhuyenMai.IdPromotion);
            command.Connection = conn.Conn;
            SqlDataReader reader = command.ExecuteReader();
            reader.Close();
            conn.Conn.Close();
        }
        public void deleteChiTietKhuyenMai(string idProduct, int idPromotion)
        {

            conn.Conn.Open();

            SqlCommand command = new SqlCommand("Proc_deleteChiTietKhuyenMai", conn.Conn);
            command.CommandType = CommandType.StoredProcedure;
    
            command.Parameters.AddWithValue("@idProduct", idProduct);
            command.Parameters.AddWithValue("@idPromotion", idPromotion);
            command.Connection = conn.Conn;
            SqlDataReader reader = command.ExecuteReader();
            reader.Close();
            conn.Conn.Close();
        }
    }
}
