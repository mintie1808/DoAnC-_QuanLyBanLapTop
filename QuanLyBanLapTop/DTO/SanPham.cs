using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class SanPham
    {
        private string idProduct;
        private string nameProduct;
        private float unitPrice;
        private int quantityProduct;
        private string statusProduct;
        private int idTypeProduct;
        private int idManuFacture;
        private string image;

        public string IdProduct { get { return idProduct; } set { idProduct = value; } }
        public string NameProduct { get { return nameProduct; } set { nameProduct = value; } }
        public float UnitPrice{ get { return unitPrice; } set { unitPrice = value; } }
        public int QuantityProduct { get { return quantityProduct; } set { quantityProduct = value; } }
        public string StatusProduct { get { return statusProduct; } set { statusProduct = value; } }
        public int IdTypeProduct { get { return idTypeProduct; } set { idTypeProduct = value; } }
        public int IDManuFacture { get { return idManuFacture; } set { idManuFacture = value; } }

        public string Image { get { return image; } set { image = value; } }


    }
}
