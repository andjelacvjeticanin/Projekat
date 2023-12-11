using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
            List<Oficir> lista = Oficir.UcitajSveOficire();
            foreach(Oficir o in lista)
            {
                DropDownList1.Items.Add(new ListItem(o.Ime + " " + o.Prezime));
            }
            foreach (Oficir o in lista)
            {
                DropDownList2.Items.Add(new ListItem(o.NazivOdlikovanja));
            }
            foreach (Oficir o in lista)
            {
                DropDownList3.Items.Add(new ListItem(o.NazivCina));
            }

        }
    }
}