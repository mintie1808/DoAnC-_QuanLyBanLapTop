using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class ChiTietNhapKho
    {
        private int quantityRequest;
        private int quantityActual;
        private float unitPrice;
        private float intoMoney;   
        private int idReceipt;
        private int idCoupon;

        public int QuantityRequest
        {
            get { return quantityRequest; }
            set { quantityRequest = value; }
        }

        public int QuantityActual
        {
            get { return quantityActual; }
            set { quantityActual = value; }
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

        public int IdReceipt
        {
            get { return idReceipt; }
            set { idReceipt = value; }
        }

        public int IdCoupon
        {
            get { return idCoupon; }
            set { idCoupon = value; }
        }

        public ChiTietNhapKho(int idReceipt, int idCoupon, int quantityRequest, int quantityActual, float unitPrice, float intoMoney)
        {
            this.idReceipt = idReceipt;
            this.idCoupon = idCoupon;
            this.quantityRequest = quantityRequest;
            this.quantityActual = quantityActual;
            this.unitPrice = unitPrice;
            this.intoMoney = intoMoney;
        }
    }
}
