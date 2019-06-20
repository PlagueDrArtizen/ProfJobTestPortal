using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Portal.Models
{
    public class EmploeeViewModel
    {
        public int EmploeeId { get; set; }

        public string TabelNumber { get; set; }

        public int PastTestCount { get; set; }
    }
}