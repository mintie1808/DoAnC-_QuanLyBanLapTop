using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class KhuyenMaiDTO
    {
        private int id;
        private string namePromotion;
        private string status;
        private DateTime startDay;
        private DateTime endDay;
        private int idTypeProduct;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        public string NamePromotion
        {
            get { return namePromotion; }
            set { namePromotion = value; }
        }
        public string Status
        {
            get { return status; }
            set { status = value; }
        }

        public DateTime StartDay
        {
            get { return startDay; }
            set { startDay = value; }
        }
        public DateTime EndDay
        {
            get { return endDay; }
            set { endDay = value; }
        } 
        public int IdTypeProduct
        {
            get { return idTypeProduct; }
            set { idTypeProduct = value; }
        }
    
    }
}
