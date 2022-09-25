using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class KhuyenMaiDTO
    {
        private int idPromotion;
        private string namePromotion;
        private string status;
        private DateTime startDay;
        private DateTime endDay;

        public int IdPromotion
        {
            get { return idPromotion; }
            set { idPromotion = value; }
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
    }
}
