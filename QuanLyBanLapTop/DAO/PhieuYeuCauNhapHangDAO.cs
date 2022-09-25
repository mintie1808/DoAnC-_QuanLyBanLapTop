using DTO;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class PhieuYeuCauNhapHangDAO
    {
        private Connect conn = new Connect();

        public void addCoupon(PhieuYeuCauNhapHang p)
        {
            conn.Conn.Open();
            SqlCommand command = new SqlCommand("Proc_addCoupon", conn.Conn);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@idCoupon", p.IdCoupon);
            command.Parameters.AddWithValue("@dateAdded", p.DateAdded);
            command.Parameters.AddWithValue("@intoMoney", p.IntoMoney);
            command.Parameters.AddWithValue("@idSupplier", p.IdSupplier);


            command.ExecuteReader();
            conn.Conn.Close();  

        }
        public void updateCoupon(PhieuYeuCauNhapHang p)
        {
            conn.Conn.Open();
            SqlCommand command = new SqlCommand("Proc_updateCoupon", conn.Conn);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@idCoupon", p.IdCoupon);
            command.Parameters.AddWithValue("@dateAdded", p.DateAdded);
            command.Parameters.AddWithValue("@intoMoney", p.IntoMoney);
            command.Parameters.AddWithValue("@idSupplier", p.IdSupplier);
            command.ExecuteReader();
            conn.Conn.Close();
        }
        public void deleteCoupon(int id)
        {
            conn.Conn.Open();
            SqlCommand command = new SqlCommand("Proc_deleteCoupon", conn.Conn);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@idCoupon", id);
            command.ExecuteReader();
            conn.Conn.Close();
        }
    }
}
