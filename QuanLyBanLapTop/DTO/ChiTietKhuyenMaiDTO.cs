using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    internal class ChiTietKhuyenMaiDTO
    {
        private float discount;
        private string status;
        private int idProduct;
        private int idPromotion;

        public float Discount
        {
            get { return discount; }
            set { discount = value; }
        }

        public string Status
        {
            get { return status; }
            set { status = value; }
        }
        public int IdProduct
        {
            get { return idProduct; }
            set { idProduct = value; }
        }
        public int IDPromotion
        {
            get { return idPromotion; }
            set { idPromotion = value; }
        }
    }
}
