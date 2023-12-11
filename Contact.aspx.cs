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
            GridView1.DataSource = Oficir.UcitajSveOficire();
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd = Konekcija.GetCommand();
            cmd.CommandText = "Izmeni";
            cmd.Parameters.AddWithValue("@id", (DropDownList1.SelectedIndex + 1));
            cmd.Parameters.AddWithValue("@odlikovanje", DropDownList2.Text);
            cmd.Parameters.AddWithValue("@cin", DropDownList3.Text);
            try
            {
                cmd.Connection.Open();
                int a = cmd.ExecuteNonQuery();
                if (a == 1)
                {
                    Console.WriteLine("Uspesno ste izmenili");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                cmd.Connection.Close();
            }
            GridView1.DataSource = Oficir.UcitajSveOficire();
            GridView1.DataBind();
        }
    }
}