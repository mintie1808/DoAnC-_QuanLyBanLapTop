using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class PhieuNhapKho
    {
        private int idReceipt;
        private string idSupplier;
//         private DateTime dateReceipt;
//         private float sumPay;

        public int IdReceipt
        {
            get { return idReceipt; }
            set { idReceipt = value; }
        }

        public string IdSupplier
        {
            get { return idSupplier; }
            set { idSupplier = value; }
        }

//         public DateTime DateReceipt
//         {
//             get { return dateReceipt; }
//             set { dateReceipt = value; }
//         }

//         public float SumPay
//         {
//             get { return sumPay; }
//             set { sumPay = value; }
//         }

//         public PhieuNhapKho(int idReceipt, string idSupplier, DateTime dateReceipt, float sumPay)
//         {
//             this.idReceipt = idReceipt;
//             this.idSupplier = idSupplier;
//             this.dateReceipt = dateReceipt;
//             this.sumPay = sumPay;
//         }
        
        public PhieuNhapKho(int idReceipt, string idSupplier)
        {
            this.idReceipt = idReceipt;
            this.idSupplier = idSupplier;
        }
    }
}
