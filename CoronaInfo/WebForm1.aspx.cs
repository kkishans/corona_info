using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.Net;
using System.IO;
using Newtonsoft.Json;
using System.Collections;
using Newtonsoft.Json.Linq;
using System.Data;

namespace CoronaInfo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                
                
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}