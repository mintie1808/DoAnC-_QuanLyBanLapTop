using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace DTO
{
    public class KhachHang
    {
        private int idCustomer;
        private string nameCustomer;
        private string address;
        private string phoneNumber;
        private string email;



        public int idCustomer
        {
            get { return idCustomer; }
            set { idCustomer = value; }
        }

        public string nameCustomer
        {
            get { return nameCustomer; }
            set { nameCustomer = value; }
        }

        public string address
        {
            get { return address; }
            set { address = value; }
        }

        public string phoneNumber
        {
            get { return phoneNumber; }
            set { phoneNumber = value; }
        }

        public string email
        {
            get { return email; }
            set { email = value; }
        }


    }

}