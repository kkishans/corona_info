using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using Newtonsoft.Json;
namespace CoronaInfo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                HttpWebRequest webrequest = (HttpWebRequest)WebRequest.Create(string.Format("https://api.covid19api.com/dayone/country/india"));
                webrequest.Method = "GET";

                HttpWebResponse webResponse = (HttpWebResponse)webrequest.GetResponse();

               // labTest.Text = webResponse.StatusCode.ToString() + " " + webResponse.Server+"<br>";

                string json_string;
                using (Stream stream = webResponse.GetResponseStream())
                {
                    StreamReader reader = new StreamReader(stream, System.Text.Encoding.UTF8);
                    json_string = reader.ReadToEnd();
                }
                List<Conutry> conutries = JsonConvert.DeserializeObject<List<Conutry>>(json_string);
                //labTest.Text = conutries.Count.ToString();
                  labTest.Text = "<br> Confirmed        Reconvered      deaths <br>";
                 
                foreach ( var conutry in conutries)
                {
                    labTest.Text += conutry.Confirmed + "&emsp;" + conutry.Recovered + "&emsp;" + conutry.Deaths + " <br>";
                    labConfirmed.Text = conutry.Confirmed.ToString();
                    labrecovered.Text = conutry.Recovered.ToString();
                    labdeaths.Text = conutry.Deaths.ToString();
                }
            }
            catch (Exception ex)
            {
                labTest.Text = ex.Message;
            }
        }
    }
    public class Conutry
    {
        public string conutry {get; set;}
        public string Conutrycode { get; set; }
        public string lat { get; set; }
        public string lon { get; set; }
        public int Confirmed { get; set; }
        public int Deaths { get; set; }
        public int Recovered { get; set; }
        public string status{ get; set;}
        public string   date{get; set;}

    }
}