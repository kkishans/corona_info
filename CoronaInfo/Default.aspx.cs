using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;
using System.Net;
using System.IO;
using Newtonsoft.Json;
using System.Collections;
using Newtonsoft.Json.Linq;
namespace CoronaInfo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            try
            {
                indiaCoronoSatus();
                coronaStateWise();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        public void indiaCoronoSatus()
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


            foreach (var conutry in conutries)
            {

                Chart1.Series["Series1"].Points.AddXY(conutry.date.ToString(), conutry.Confirmed);
                labConfirmed.Text = conutry.Confirmed.ToString();
                labrecovered.Text = conutry.Recovered.ToString();
                labdeaths.Text = conutry.Deaths.ToString();
            }
        }

        public void coronaStateWise()
        {
            HttpWebRequest webrequest = (HttpWebRequest)WebRequest.Create(string.Format("https://corona-virus-world-and-india-data.p.rapidapi.com/api_india"));
            webrequest.Method = "GET";
            webrequest.Headers.Add("X-RapidAPI-Host", "corona-virus-world-and-india-data.p.rapidapi.com");
            webrequest.Headers.Add("X-RapidAPI-Key", "55d9753780msh52807990ef45c81p16db34jsnd0098e4d360c");

            HttpWebResponse webResponse = (HttpWebResponse)webrequest.GetResponse();

            // labTest.Text = webResponse.StatusCode.ToString() + " " + webResponse.Server+"<br>";

            string json_string;
            using (Stream stream = webResponse.GetResponseStream())
            {
                StreamReader reader = new StreamReader(stream, System.Text.Encoding.UTF8);
                json_string = reader.ReadToEnd();
            }

            JObject job = JObject.Parse(json_string);
            List<JToken> tokens = job.Children().ToList();

           
            foreach (JProperty state in job["state_wise"])
            {
                //fill drop down menu
                DropDownList1.Items.Add(state.Name);

                TableRow row = new TableRow();
                TableCell c1 = new TableCell();
                TableCell c2 = new TableCell();
                TableCell c3 = new TableCell();
                TableCell c4 = new TableCell();
                TableCell c5 = new TableCell();
                c1.Text = state.Name;
                c1.CssClass = c2.CssClass = c3.CssClass = c4.CssClass = c5.CssClass ="td";
                row.Cells.Add(c1);
                c2.Text = job["state_wise"][state.Name]["confirmed"].ToString();
                row.Cells.Add(c2);
                c3.Text = job["state_wise"][state.Name]["active"].ToString();
                row.Cells.Add(c3);
                c4.Text = job["state_wise"][state.Name]["recovered"].ToString();
                row.Cells.Add(c4);
                c5.Text = job["state_wise"][state.Name]["deaths"].ToString();
                row.Cells.Add(c5);
                dataTable.Rows.Add(row);
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