using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public int id;
    public string nameTypeProduct;
    public int idManufacturer;

    public int ID
    {
        get { return id; }
        set { id = value; }
    }

    public string NameTypeProduct 
    {
        get { return nameTypeProduct; }
        set { nameTypeProduct = value; }
    }

    public int IdManufacturer
    {
        get { return idManufacturer; }
        set { idManufacturer = value; }
    }
}