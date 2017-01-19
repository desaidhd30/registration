using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace registration
{
    public class TravelexpertsDB
    {
        public static SqlConnection GetConnection()
        {
            string connString = "Data Source=(LocalDB)\\MSSQLLocalDB;" +
                "AttachDbFilename=|DataDirectory|\\TravelExperts.mdf;" +
                "Integrated Security=True;Connect Timeout=30";
            SqlConnection conn = new SqlConnection(connString);
            return conn;
        }
    }
}