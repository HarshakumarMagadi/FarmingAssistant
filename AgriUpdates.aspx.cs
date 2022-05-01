using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AgriUpdates : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void l_Click(object sender, EventArgs e)
    {
        Response.Redirect("farmerhomepage.aspx");
    }
}