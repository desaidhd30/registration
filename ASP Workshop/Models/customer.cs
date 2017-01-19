using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace registration
{
    public class Customer
    {
        //constructor without parameters
        public Customer() { }

        public string Firstname { get; set; }

        public string lastname { get; set; }

        public string UserId { get; set; }

        public string Password { get; set; }

        public string Confirmpassword { get; set; }

        public string Address { get; set; }

        public string City { get; set; }

        public string Province { get; set; }

        public string Postalcode { get; set; }
        public string Country { get; set; }

        public string Homephone { get; set; }

        public string Busphone { get; set; }

        public string email { get; set; }

    }
}