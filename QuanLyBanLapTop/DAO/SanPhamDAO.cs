using DTO;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class SanPhamDAO
    {
        private Connect conn = new Connect();

        public void addProcduct( SanPham sp)
        {
            conn.Conn.Open();
            SqlCommand command = new SqlCommand("Proc_addProduct", conn.Conn);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@idProduct", sp.IdProduct);
            command.Parameters.AddWithValue("@nameProduct", sp.NameProduct);
            command.Parameters.AddWithValue("@unitPrice", sp.UnitPrice);
            command.Parameters.AddWithValue("@quantityProduct", sp.QuantityProduct);
            command.Parameters.AddWithValue("@statusProduct", sp.StatusProduct);
            command.Parameters.AddWithValue("@idTypeProduct", sp.IdTypeProduct);
            command.Parameters.AddWithValue("@idManufactutre", sp.IDManuFacture);
            command.Parameters.AddWithValue("@image", sp.Image);


            command.ExecuteNonQuery();

            conn.Conn.Close();
        }

        public void updateProcduct(SanPham sp)
        {
            conn.Conn.Open();
            SqlCommand command = new SqlCommand("Proc_updateProduct", conn.Conn);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@idProduct", sp.IdProduct);
            command.Parameters.AddWithValue("@nameProduct", sp.NameProduct);
            command.Parameters.AddWithValue("@unitPrice", sp.UnitPrice);
            command.Parameters.AddWithValue("@quantityProduct", sp.QuantityProduct);
            command.Parameters.AddWithValue("@statusProduct", sp.StatusProduct);
            command.Parameters.AddWithValue("@idTypeProduct", sp.IdTypeProduct);
            command.Parameters.AddWithValue("@idManufactutre", sp.IDManuFacture);
            command.Parameters.AddWithValue("@image", sp.Image);

            command.ExecuteNonQuery();

            conn.Conn.Close();
        }

        public void deleteProcduct(string id)
        {
            conn.Conn.Open();
            SqlCommand command = new SqlCommand("Proc_deleteProduct", conn.Conn);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@idProduct", id);

            command.ExecuteNonQuery();

            conn.Conn.Close();
        }

    }
}
