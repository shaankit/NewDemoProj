using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsProject
{
    public partial class AddName : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string AppendNames(AddNameRequestProxy objproxy)
        {
            return objproxy.FirstName + " " + objproxy.LastName + " " + objproxy.Phone  + " " + objproxy.Address + " " + objproxy.City  + " " + objproxy.State  + " " + objproxy.ZipCode+ " " + DateTime.Now.ToString();
        }

        [WebMethod]
        public static string Getname()
        {
            return (ConfigurationManager.AppSettings["Name"].ToString() + " " + ConfigurationManager.AppSettings["LastName"].ToString());
        }

    }
}