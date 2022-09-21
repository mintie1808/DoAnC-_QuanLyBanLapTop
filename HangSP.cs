using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public int id;
    public string nameManufacturer;

    public int ID
    {
        get { return id; }
        set { id = value;}
    }

    public string NameManufacturer
    {
        get { return nameManufacturer; }
        set { nameManufacturer = value; }
    }

}