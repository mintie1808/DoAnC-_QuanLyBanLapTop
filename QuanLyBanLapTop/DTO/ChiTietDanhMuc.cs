using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO 
{
    public int idManufactory;
    public int idTypeProduct;

    public int idManufactory
    {
        get { return id; }
        set { id =  value; }
    }

    public int idTypeProduct
    {
        get { return idTypeProduct; }
        set { idTypeProduct = value; }
    }
}