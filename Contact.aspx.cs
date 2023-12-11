using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projekat
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> ls = new List<string>();
            SqlCommand cmd = Konekcija.GetCommand();
            cmd.CommandText = "usp_SelectImePrezime";
        }
    }
}