using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
   public class DanhMucLapTopDTO
    {
        private int idTypeProduct;
        private string nameTypeProduct;

        public int IdTypeProduct
        {
            get { return idTypeProduct; }
            set { idTypeProduct = value; }
        }

        public string NameTypeProduct
        {
            get { return nameTypeProduct; }
            set { nameTypeProduct = value; }
        }
        public DanhMucLapTopDTO(int id, string name)
        {
            this.idTypeProduct = id;
            this.nameTypeProduct = name;
        }
    }
}
