using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class Connect
    {
        private SqlConnection conn;
        public SqlConnection Conn
        {
            get { return conn; }
            set { conn = value; }
        }
        public void myConnect(string sConnect)
        {
            try
            {
                this.conn = new SqlConnection(sConnect);
            }catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
        public Connect()
        {
            try
            {
                string sConnect = @"Data Source=DESKTOP-727ABL2;Initial Catalog=QuanLyBanLapTop;Integrated Security=True";
                this.conn = new SqlConnection(sConnect);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

    }
}
