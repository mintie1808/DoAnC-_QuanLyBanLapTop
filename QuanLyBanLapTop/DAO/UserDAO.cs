using DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace DAO
{
    public class UserDAO
    {
        public string searchUser(UserDTO us)
        {
            //NhaCungCapDAO ncc = new NhaCungCapDAO();
            //ncc.deleteSupplier("MSI");

            //PhieuNhapKhoDAO pnk = new PhieuNhapKhoDAO();
            //pnk.addReceipt(new PhieuNhapKho(3002, "Acer", new DateTime(2022, 08, 12), 56000000));
            //PhieuNhapKho phieu = (new PhieuNhapKho(3002, "Apple", new DateTime(2022, 12, 24), 99000000));
            //pnk.updateReceipt(phieu);

            //ChiTietNhapKhoDAO ctnk = new ChiTietNhapKhoDAO();
            //ChiTietNhapKho ct = (new ChiTietNhapKho(3002, 6002, 10, 20, 50000000, 200000000));
            //ctnk.updateDetailReceipt(ct);

            Connect connect = new Connect();
            connect.Conn.Open();

            SqlCommand sqlCommand = new SqlCommand("proc_login", connect.Conn);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@user", us.UserName);
            sqlCommand.Parameters.AddWithValue("@pass", us.Password);

            sqlCommand.Connection = connect.Conn;

            SqlDataReader reader = sqlCommand.ExecuteReader();
            string result = null;
            if (reader.HasRows)
            {
                result = "0";

            }
            reader.Close();
            connect.Conn.Close();
            return result;
        }
    }
}
