using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO 
{
    public class ChiTietDanhMuc {
        private int idManufactory;
        private int idTypeProduct;

        public int IdManufactory
        {
            get { return idManufactory; }
            set { idManufactory = value; }
        }

        public int IdTypeProduct
        {
            get { return idTypeProduct; }
            set { idTypeProduct = value; }
        }
    }
}