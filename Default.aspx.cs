using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projekat
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<Oficir> lista = Oficir.UcitajSveOficire();
                foreach (Oficir o in lista)
                {
                    DropDownList1.Items.Add(new ListItem(o.NazivOdlikovanja));
                }
                foreach (Oficir o in lista)
                {
                    DropDownList2.Items.Add(new ListItem(o.NazivCina));
                }
            }

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            
            ParametriZaPretragu parametri = new ParametriZaPretragu();
            parametri.NazivOdlikovanja = DropDownList1.Text;
            parametri.NazivCina = DropDownList2.Text;
            List<Oficir> pronadjeniKontakti = new List<Oficir>();
            Vojnici V = new Vojnici();

            pronadjeniKontakti = V.PretraziVojsku(parametri);
            GridView1.DataSource = pronadjeniKontakti;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/About.aspx");
        }
    }
}