using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class HangSanPhamDTO
    {
        private int idManufactutre;
        private string nameManufacturer;

        public int IdManufactutre
        {
            get { return idManufactutre; }
            set { idManufactutre = value; }
        }

        public string NameManufacturer
        {
            get { return nameManufacturer; }
            set { nameManufacturer = value; }
        }

        public HangSanPhamDTO(int id, string name)
        {
            idManufactutre = id;
            nameManufacturer = name;
        }

    }
     

}
