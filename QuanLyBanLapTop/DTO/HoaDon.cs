using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace DTO
{
    public class HoaDon
    {
        private int id;
        private DateTime dateBill;
        private float sumPay;
        private string typePay;
        private float discountMoney;
        private float pay;
        private string status;


        public int idEmployee
        {
            get { return id; }
            set { id = value; }
        }

        public DateTime dateBill
        {
            get { return dateBill; }
            set { dateBill = value; }
        }

        public float sumPay
        {
            get { return sumPay; }
            set { sumPay = value; }
        }

        public string typePay
        {
            get { return typePay; }
            set { typePay = value; }
        }

        public float discountMoney
        {
            get { return discountMoney; }
            set { discountMoney = value; }
        }

        public float pay
        {
            get { return pay; }
            set { pay = value; }
        }

        public string status
        {
            get { return status; }
            set { status = value; }
        }

    }

}