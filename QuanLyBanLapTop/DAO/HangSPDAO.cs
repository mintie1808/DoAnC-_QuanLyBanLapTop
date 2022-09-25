using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;

namespace DAO
{
    public class HangSPDAO
    {
        private Connect conn = new Connect();

        public void addHangSanPham(HangSP hsp)
        {
            // ket noi voi connect
            conn.Conn.Open();
            // tao lop ket noi sqlCommand
            SqlCommand command = new SqlCommand("Proc_addManufacture", conn.Conn);
            // dat ten bien
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@id", hsp.Id);
            command.Parameters.AddWithValue("@name", hsp.NameManufacturer);
            command.Connection = conn.Conn;
            // tao bien reader
            SqlDataReader reader = command.ExecuteReader();
            reader.Close();
            conn.Conn.Close();
        }

        public void updateHangSanPham(HangSP hsp)
        {
            // ket noi voi connect
            conn.Conn.Open();
            // tao lop ket noi sqlCommand
            SqlCommand command = new SqlCommand("Proc_updateManufacture", conn.Conn);
            // dat ten bien
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@id", hsp.Id);
            command.Parameters.AddWithValue("@name", hsp.NameManufacturer);
            command.Connection = conn.Conn;
            // tao bien reader
            SqlDataReader reader = command.ExecuteReader();
            reader.Close();
            conn.Conn.Close();
        }

        public void deleteHangSanPham(int id)
        {
            // ket noi voi connect
            conn.Conn.Open();
            // tao lop ket noi sqlCommand
            SqlCommand command = new SqlCommand("Proc_deleteManufacture", conn.Conn);
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
