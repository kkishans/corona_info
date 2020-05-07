using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CoronaInfo
{

    public class Record
    {
        Record(int c, string d)
        {
            confirmed = c;
            date = d;
        }
        public int confirmed { get; set; }
        public string date { get; set; }
    }
}
