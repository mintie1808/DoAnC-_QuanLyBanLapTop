using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;

namespace DAO
{
    public class DanhMucLapTopDAO
    {
        private Connect conn = new Connect();

        // them 1 danh muc
        public void addDanhMucLapTop(DanhMucLapTopDTO dm)
        {
            // ket noi voi connect
            conn.Conn.Open();
            // tao lop ket noi sqlCommand
            SqlCommand command = new SqlCommand("Proc_addTypeProduct", conn.Conn);
            // dat ten bien
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@id", dm.IdTypeProduct);
            command.Parameters.AddWithValue("@name", dm.NameTypeProduct);
            command.Connection = conn.Conn;
            // tao bien reader
            SqlDataReader reader = command.ExecuteReader();
            reader.Close();
            conn.Conn.Close();
        }

        public void updateDanhMucLapTop(DanhMucLapTopDTO dm)
        {
            // ket noi voi connect
            conn.Conn.Open();
            // tao lop ket noi sqlCommand
            SqlCommand command = new SqlCommand("Proc_updateTypeProduct", conn.Conn);
            // dat ten bien
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@id", dm.IdTypeProduct);
            command.Parameters.AddWithValue("@name", dm.NameTypeProduct);
            command.Connection = conn.Conn;
            // tao bien reader
            SqlDataReader reader = command.ExecuteReader();
            reader.Close();
            conn.Conn.Close();
        }

        public void deleteDanhMucLapTop(int id)
        {
            // ket noi voi connect
            conn.Conn.Open();
            // tao lop ket noi sqlCommand
            SqlCommand command = new SqlCommand("Proc_deleteTypeProduct", conn.Conn);
            // dat ten bien
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@id", id);
            command.Connection = conn.Conn;
            // tao bien reader
            SqlDataReader reader = command.ExecuteReader();
            reader.Close();
            conn.Conn.Close();
        }

    }
}
