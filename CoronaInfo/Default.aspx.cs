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
namespace CoronaInfo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
            string[] districts = {"Andaman and Nicobar Islands", "Andhra Pradesh", "Arunachal Pradesh", "Assam", "Bihar", "Chandigarh", "Chhattisgarh", "Dadra and Nagar Haveli", "Daman and Diu", "Delhi", "Goa", "Gujarat", "Haryana", "Himachal Pradesh", "Jammu", "Jharkhand", "Karnataka", "Kashmir", "Kerala", "Ladakh", "Lakshadweep", "Madhya Pradesh", "Maharashtra", "Manipur", "Meghalaya", "Mizoram", "Nagaland", "Odisha", "Puducherry", "Punjab", "Rajasthan", "Sikkim", "Tamil Nadu", "Telangana", "Tripura", "Uttarakhand", "Uttar Pradesh", "West Bengal"};
            foreach (var item in districts)
	        {
		        DropDownList1.Items.Add(item);
	        }
            try
            {
                HttpWebRequest webrequest = (HttpWebRequest)WebRequest.Create(string.Format("https://api.covid19api.com/dayone/country/india"));
                webrequest.Method = "GET";

                HttpWebResponse webResponse = (HttpWebResponse)webrequest.GetResponse();

            Master.link_set("default.aspx");


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
                 
                 foreach ( var conutry in conutries)
                 {

                     DateTime Mdate = DateTime.Parse(conutry.date);
                     string date= Mdate.ToShortDateString();
                     Chart1.Series["Series1"].Points.AddXY(date, conutry.Confirmed);
                     labConfirmed.Text = conutry.Confirmed.ToString();
                     labrecovered.Text = conutry.Recovered.ToString();
                     labdeaths.Text = conutry.Deaths.ToString();
                 }
             }
             catch (Exception ex)
             {
                 Response.Write(ex.Message);
             }


                Response.Write(district);
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
               
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

    public class District
    {

    }
}