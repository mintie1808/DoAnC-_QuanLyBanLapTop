using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class HangSP
    {
        private int id;
        private string nameManufacturer;

        public int Id   // property
        {
            get { return id; }   // get method
            set { id = value; }  // set method
        }

        public string NameManufacturer   // property
        {
            get { return nameManufacturer; }   // get method
            set { nameManufacturer = value; }  // set method
        }

    }
}
