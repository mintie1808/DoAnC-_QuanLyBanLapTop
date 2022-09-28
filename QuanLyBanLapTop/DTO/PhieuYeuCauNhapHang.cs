using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class PhieuYeuCauNhapHang
    {
        private int idCoupon;
        private DateTime dateAdded;
        private float intoMoney;
        private string idSupplier;

        public int IdCoupon { get { return idCoupon; } set { idCoupon = value; } }
        public DateTime DateAdded { get { return dateAdded; } set { dateAdded = value; } }
        public float IntoMoney { get { return intoMoney; } set { intoMoney = value; } }
        public string IdSupplier { get { return idSupplier; } set { idSupplier = value; } }

        public PhieuYeuCauNhapHang(int idCoupon, DateTime dateAdded, float intoMoney, string idSupplier)
        {
            IdCoupon = idCoupon;
            DateAdded = dateAdded;
            IntoMoney = intoMoney;
            IdSupplier = idSupplier;
            IdCoupon = idCoupon;
            DateAdded = dateAdded;
            IntoMoney = intoMoney;
            IdSupplier = idSupplier;
        }
    }
}
