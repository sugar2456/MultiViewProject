using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MultiViewProject
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.SetActiveView(DefaultView);
            }
        }
        protected void LinkButton_Command(Object sender, CommandEventArgs e)
        {
            switch(e.CommandArgument)
            {
                case "DefaultView":
                    MultiView1.SetActiveView(DefaultView);
                    break;
                case "News":
                    MultiView1.SetActiveView(NewsView);
                    break;
                case "Shopping":
                    MultiView1.SetActiveView(ShoppingView);
                    break;
                default:
                    throw new Exception("You did not select a valid list item.");
            }
        }
    }
}