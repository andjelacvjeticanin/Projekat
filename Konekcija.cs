using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Projekat
{
    public class Konekcija
    {
        public static string conString = @"Data Source=.\SQLEXPRESS;Initial Catalog=Projekat;Integrated Security=true ";

        public static SqlCommand GetCommand()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = new SqlConnection(conString);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            return cmd;

        }
    }
}