using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class ChiTietPhieuYcNhapHang
    {
        private string idProduct;
        private int idSupplier;
        private int quantityImport;
        private float unitPrice;
        private float intoMoney;

        public string IdProduct   // property
        {
            get { return idProduct; }   // get method
            set { idProduct = value; }  // set method
        }

        public int IdSupplier   // property
        {
            get { return idSupplier; }   // get method
            set { idSupplier = value; }  // set method
        }

        public int QuantityImport   // property
        {
            get { return quantityImport; }   // get method
            set { quantityImport = value; }  // set method
        }

        public float UnitPrice   // property
        {
            get { return unitPrice; }   // get method
            set { unitPrice = value; }  // set method
        }

        public float IntoMoney   // property
        {
            get { return intoMoney; }   // get method
            set { intoMoney = value; }  // set method
        }

    }
}
