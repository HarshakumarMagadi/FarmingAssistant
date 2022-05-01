using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cropsview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       
            if (Session["farmer"] != null)
            {
                Label5.Text = Session["farmer"].ToString();
                
            }
            else
            {
            //throw new Exception();
            //Label5.Text = Session["farmer"].ToString();
            
            ScriptManager.RegisterStartupScript(this, GetType(), "alertmsg", "alert('Session Expired')", true);

            }



    }

    protected void l_Click(object sender, EventArgs e)
    {
        Session.Remove("farmer");
        Session.Abandon();
        Response.Redirect("formerlogin.aspx");
    }
}