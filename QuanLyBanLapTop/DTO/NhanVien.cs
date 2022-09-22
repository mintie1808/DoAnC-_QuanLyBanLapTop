using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace DTO
{
    public class NhanVien
    {
        private int idEmployee;
        private string nameEmployee;
        private string serviceEmployee;
        private DateTime birthday;
        private string phoneNumber;
        private float totalSales;
        private int quantityBillPay;


        public int idEmployee
        {
            get { return idEmployee; }
            set { idEmployee = value; }
        }

        public string nameEmployee
        {
            get { return nameEmployee; }
            set { nameEmployee = value; }
        }

        public string serviceEmployee
        {
            get { return serviceEmployee; }
            set { serviceEmployee = value; }
        }

        public DateTime birthday
        {
            get { return birthday; }
            set { birthday = value; }
        }

        public string totalSales
        {
            get { return totalSales; }
            set { totalSales = value; }
        }

        public float serviceEmployee
        {
            get { return serviceEmployee; }
            set { serviceEmployee = value; }
        }

        public int quantityBillPay
        {
            get { return quantityBillPay; }
            set { quantityBillPay = value; }
        }

    }

}