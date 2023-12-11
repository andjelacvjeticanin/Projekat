using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Projekat
{
    public class Oficir
    {
        public int Jmbg
        {
            get; set;
        }
        public string Ime
        {
            get; set;
        }
        public string Prezime
        {
            get; set;
        }
        public string Mesto
        {
            get; set;
        }
        public string NazivOdlikovanja
        {
            get; set;
        }
        public string NazivCina
        {
            get; set;
        }
        public string Kontakt
        {
            get; set;
        }
        public Oficir()
        {

        }
        public Oficir(DataRow dr)
        {
            this.Jmbg = (int)dr["JMBG"];
            this.Ime = (string)dr["Ime"];
            this.Prezime = (string)dr["Prezime"];
            this.Mesto = (string)dr["MestoRodjenja"];
            this.NazivOdlikovanja = (string)dr["NazivOdlikovanja"];
            this.NazivCina = (string)dr["NazivCina"];
            this.Kontakt = (string)dr["Kontakt"];

        }
        public static List<Oficir> UcitajSveOficire()
        {
            List<Oficir> oficiri = new List<Oficir>();
            SqlCommand cmd = Konekcija.GetCommand();
            cmd.CommandText = "usp_SviOficiri";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dtable = new DataTable();
            try
            {
                cmd.Connection.Open();
                da.Fill(dtable);
                if (dtable.Rows.Count > 0)
                {
                    foreach (DataRow dr in dtable.Rows)
                    {
                        oficiri.Add(new Oficir(dr));
                    }
                    return oficiri;
                }
                else
                {
                    return null;
                }


            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return null;
            }
            finally
            {
                cmd.Connection.Close();

            }

        }
    }
}