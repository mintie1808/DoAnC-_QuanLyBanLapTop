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



        public int IdCustomer
        {
            get { return idCustomer; }
            set { idCustomer = value; }
        }

        public string NameCustomer
        {
            get { return nameCustomer; }
            set { nameCustomer = value; }
        }

        public string Address
        {
            get { return address; }
            set { address = value; }
        }

        public string PhoneNumber
        {
            get { return phoneNumber; }
            set { phoneNumber = value; }
        }

        public string Email
        {
            get { return email; }
            set { email = value; }
        }


    }

}