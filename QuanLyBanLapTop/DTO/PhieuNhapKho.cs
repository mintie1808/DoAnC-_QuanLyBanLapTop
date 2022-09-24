using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class PhieuNhapKho
    {
        private int id;
        private string idSupplier;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        public string IdSupplier
        {
            get { return idSupplier; }
            set { idSupplier = value; }
        }
    }
}
