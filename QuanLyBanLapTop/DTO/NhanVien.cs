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
        private string idUser;
        private float salaryEmployee;


        public int IdEmployee
        {
            get { return idEmployee; }
            set { idEmployee = value; }
        }

        public string IdUser{
            get { return idUser; }
            set { idUser = value; }
        }
        public float SalaryEmployee
        {
            get { return salaryEmployee; }
            set { salaryEmployee = value; }
        }

        public string NameEmployee
        {
            get { return nameEmployee; }
            set { nameEmployee = value; }
        }

        public string ServiceEmployee
        {
            get { return serviceEmployee; }
            set { serviceEmployee = value; }
        }

        public DateTime Birthday
        {
            get { return birthday; }
            set { birthday = value; }
        }

        public float TotalSales
        {
            get { return totalSales; }
            set { totalSales = value; }
        }

        public string PhoneNumber
        {
            get { return phoneNumber; }
            set { phoneNumber = value; }
        }


        public int QuantityBillPay
        {
            get { return quantityBillPay; }
            set { quantityBillPay = value; }
        }

    }

}