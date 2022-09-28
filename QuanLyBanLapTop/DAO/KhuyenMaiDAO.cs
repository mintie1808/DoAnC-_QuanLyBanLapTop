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
        public class KhuyenMaiDAO
    {
        private Connect conn = new Connect();
        
        public void addKhuyenMai(KhuyenMaiDTO khuyenMai)
        {
          
            conn.Conn.Open();
           
            SqlCommand command = new SqlCommand("Proc_addKhuyenMai", conn.Conn);
            
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@idPromotion", khuyenMai.IdPromotion);
            command.Parameters.AddWithValue("@namePromotion", khuyenMai.NamePromotion);
            command.Parameters.AddWithValue("@status", khuyenMai.Status);
            command.Parameters.AddWithValue("@startDay", khuyenMai.StartDay);
            command.Parameters.AddWithValue("@endDay", khuyenMai.EndDay);
            command.Connection = conn.Conn;
          
            SqlDataReader reader = command.ExecuteReader();
            reader.Close();
            conn.Conn.Close();
        }
        public void updateKhuyenMai(KhuyenMaiDTO khuyenMai)
        {

            conn.Conn.Open();

            SqlCommand command = new SqlCommand("Proc_updateKhuyenMai", conn.Conn);

            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@idPromotion", khuyenMai.IdPromotion);
            command.Parameters.AddWithValue("@namePromotion", khuyenMai.NamePromotion);
            command.Parameters.AddWithValue("@status", khuyenMai.Status);
            command.Parameters.AddWithValue("@startDay", khuyenMai.StartDay);
            command.Parameters.AddWithValue("@endDay", khuyenMai.EndDay);
            command.Connection = conn.Conn;

            SqlDataReader reader = command.ExecuteReader();
            reader.Close();
            conn.Conn.Close();
        }
        public void deleteKhuyenMai(int idPromotion)
        {

            conn.Conn.Open();

            SqlCommand command = new SqlCommand("Proc_deleteKhuyenMai", conn.Conn);

            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@idPromotion", idPromotion);
           
            command.Connection = conn.Conn;

            SqlDataReader reader = command.ExecuteReader();
            reader.Close();
            conn.Conn.Close();
        }

    }
}
