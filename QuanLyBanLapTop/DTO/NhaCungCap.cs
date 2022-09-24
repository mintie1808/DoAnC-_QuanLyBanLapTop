using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace DTO
{
    public class NhaCungCap
    {
        private string idSupplier;
        private string nameSupplier;

        public string IdSupplier   
        {
            get { return idSupplier; }   
            set { idSupplier = value; } 
        }

        public string NameSupplier
        {
            get { return nameSupplier; }
            set { nameSupplier = value; }
        }
    }
}
