using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    internal class ChiTietHoaDonDTO
    {
        private int quantityProduct;
        private float unitPrice;
        private float intoMoney;
        private float moneyDown;
        private string idProduct;
        private int idBill;

        public int QuantityProduct
        {
            get { return quantityProduct; }
            set { quantityProduct = value; }
        }

        public float UnitPrice
        {
            get { return unitPrice; }
            set { unitPrice = value; }
        }
        public float IntoMoney
        {
            get { return intoMoney; }
            set { intoMoney = value; }
        }
        public float MoneyDown
        {
            get { return moneyDown; }
            set { moneyDown = value; }
        }
        public string IdProduct
        {
            get { return idProduct; }
            set { idProduct = value; }
        }
        public int IdBill
        {
            get { return idBill; }
            set { idBill = value; }
        }

    }
}
