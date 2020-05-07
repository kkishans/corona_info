using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoronaInfo
{
    public partial class main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void link_set(string link)
        {
            List<HyperLink> mylinks = new List<HyperLink>();
            mylinks.Add(linkhome);
            mylinks.Add(linkstatistics);
            mylinks.Add(linksymptoms);
            mylinks.Add(linkoverview);
            mylinks.Add(linkprevention);
            mylinks.Add(linkabout);

            foreach (var a in mylinks)
            {
                if (a.NavigateUrl.ToString().Equals(link))
                {
                    a.CssClass = "selected";
                }
                else
                    a.CssClass = a.CssClass.Replace("selected", "");
            }
        }
    }
}