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

        public DateTime DateBill
        {
            get { return dateBill; }
            set { dateBill = value; }
        }

        public float SumPay
        {
            get { return sumPay; }
            set { sumPay = value; }
        }

        public string TypePay
        {
            get { return typePay; }
            set { typePay = value; }
        }

        public float DiscountMoney
        {
            get { return discountMoney; }
            set { discountMoney = value; }
        }

        public float Pay
        {
            get { return pay; }
            set { pay = value; }
        }

        public string Status
        {
            get { return status; }
            set { status = value; }
        }

    }

}