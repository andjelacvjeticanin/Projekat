using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace Projekat
{
    public class Vojnici
    {
        private List<Oficir> oficiri = Oficir.UcitajSveOficire();
        public static List<string> odlikovanja = new List<string>();
        public static List<string> cin = new List<string>();

        public List<Oficir> PretraziVojsku(ParametriZaPretragu parametri)
        {
            List<Oficir> pk = new List<Oficir>();
           
           
            
            foreach (Oficir k in oficiri)
            {
                if ((parametri.NazivCina == "" ||
               k.NazivCina.ToLower().Contains(parametri.NazivCina.ToLower())) &&
                (parametri.NazivOdlikovanja == "" ||
               k.NazivOdlikovanja.ToLower().Contains(parametri.NazivOdlikovanja.ToLower())))
                {
                    pk.Add(k);
                }
            }
            return pk;

        }

    }
}