using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Net;
using System.Collections.Specialized;
using System.IO;

public partial class FarmerViewSaledDetails : System.Web.UI.Page
{
    protected string sendmsg;
    static string connStr = "SERVER=localhost;DATABASE=farmingAssistant;UID=root;PASSWORD=admi";
    MySqlConnection con = new MySqlConnection(connStr);
    MySqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        LoadData();
    }
    public void LoadData()
    {
        string xyz = Session["phone"].ToString();
        MySqlCommand cmd = new MySqlCommand();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        cmd.CommandText = "SELECT *FROM accmark where mobileno='" + xyz + "' ; ";
        cmd.Connection = con;
        da.SelectCommand = cmd;
        da.Fill(ds, "mprice");
        Repeater1.DataSource = ds;
        Repeater1.DataBind();

    }
}