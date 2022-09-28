using DTO;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class ChiTietPhieuYeuCauNhapHangDAO
    {
        private Connect conn = new Connect();   
        

        public void addDetailCoupon(ChiTietPhieuYcNhapHang ct)
        {
            conn.Conn.Open();
            SqlCommand command = new SqlCommand("Proc_addDetailCoupon",conn.Conn);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@quantityImport", ct.QuantityImport);
            command.Parameters.AddWithValue("@unitPrice", ct.UnitPrice);
            command.Parameters.AddWithValue("@intoMoney", ct.IntoMoney);
            command.Parameters.AddWithValue("@idCoupon", ct.IdCoupon);
            command.Parameters.AddWithValue("@idProduct", ct.IdProduct);
            command.ExecuteReader();
            conn.Conn.Close();
        }

        public void updateDetailCoupon(ChiTietPhieuYcNhapHang ct)
        {
            conn.Conn.Open();
            SqlCommand command = new SqlCommand("Proc_updateDetailCoupon", conn.Conn);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@quantityImport", ct.QuantityImport);
            command.Parameters.AddWithValue("@unitPrice", ct.UnitPrice);
            command.Parameters.AddWithValue("@intoMoney", ct.IntoMoney);
            command.Parameters.AddWithValue("@idCoupon", ct.IdCoupon);
            command.Parameters.AddWithValue("@idProduct", ct.IdProduct);
            command.ExecuteReader();
            conn.Conn.Close();
        }

        public void deleteDetailCoupon(string idProduct, int idCoupon)
        {
            conn.Conn.Open();
            SqlCommand command = new SqlCommand("Proc_deleteDetailCoupon", conn.Conn);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@idCoupon", idCoupon);
            command.Parameters.AddWithValue("@idProduct", idProduct);
            command.ExecuteReader();
            conn.Conn.Close();
        }
    }
}
