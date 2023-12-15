using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projekat
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
        }

        protected void DodajOficira_Click(object sender, EventArgs e)
        {
            if (UnesiOficira(TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text,TextBox11.Text,TextBox12.Text))
            {
                Label1.Text = "Uspesno ste uneli oficira!";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox11.Text = "";
                TextBox12.Text = "";

            }
            else
            {
                Label1.Text = "Greska!";
            }
        }
        public bool UnesiOficira(string Ime, string Prezime, string Mesto, string Kontakt, string NazivCina, string NazivOdlikovanja)
        {
            SqlCommand cmd = Konekcija.GetCommand();
            cmd.CommandText = "usp_UnesiOficira";
            cmd.Parameters.AddWithValue("ime", Ime);
            cmd.Parameters.AddWithValue("prezime", Prezime);
            cmd.Parameters.AddWithValue("mesto", Mesto);
            cmd.Parameters.AddWithValue("nazivOdlikovanja",NazivOdlikovanja);
            cmd.Parameters.AddWithValue("nazivCina", NazivCina);
            cmd.Parameters.AddWithValue("kontakt", Kontakt);
            try
            {
                cmd.Connection.Open();
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return false;
            }
            finally
            {
                cmd.Connection.Close();
            }
        }
        
    }
}