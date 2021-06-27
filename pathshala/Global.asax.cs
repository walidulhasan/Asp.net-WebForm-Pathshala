using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using pathshala;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace pathshala
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {

            sign_in sin = new sign_in();
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            
            //BundleConfig.RegisterBundles(BundleTable.Bundles);

        }
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.EnableFriendlyUrls();

            // Put any additional route registrations here.
        }
    }
}