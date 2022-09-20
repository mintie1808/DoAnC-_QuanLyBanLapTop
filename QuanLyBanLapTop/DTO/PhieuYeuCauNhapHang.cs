﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class PhieuYeuCauNhapHang
    {
        private int id;
        private DateTime dateAdded;
        private float intoMoney;
        private string idSupplier;

        public int Id { get { return id; } set { id = value; } }
        public DateTime DateAdded { get { return dateAdded; } set { dateAdded = value; } }
        public float IntoMoney { get { return intoMoney; } set { intoMoney = value; } }
        public string IdSupplier { get { return idSupplier; } set { idSupplier = value; } }
    }
}