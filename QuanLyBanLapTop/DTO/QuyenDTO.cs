using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class QuyenDTO
    {
        private int idQuyen;
        private string nameAuth;

        public int IdQuyen
        { 
            get { return idQuyen; }
            set { idQuyen = value; }
        }
        public string NameAuth
        { 
            get { return nameAuth; }
            set { nameAuth = value; }
        }
        public QuyenDTO(int id, string name)
        {
            this.idQuyen = id;
            this.nameAuth = name;
        }

    }
}
