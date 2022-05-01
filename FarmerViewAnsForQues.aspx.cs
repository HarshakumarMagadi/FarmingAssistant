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

public partial class FarmerViewAnsForQues : System.Web.UI.Page
{
    static string connStr = "SERVER=localhost;DATABASE=farmingAssistant;UID=root;PASSWORD=admi";
    MySqlConnection con = new MySqlConnection(connStr);
    MySqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        loadPosts();
        
    }
    
    public void loadPosts()
    {
        string no = Session["phone"].ToString();
        MySqlCommand cmd = new MySqlCommand();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        cmd.CommandText = "SELECT *FROM adminsolveques where mobile='"+no+"'";
        cmd.Connection = con;
        da.SelectCommand = cmd;
        da.Fill(ds, "adminsolveques");
        Repeater1.DataSource = ds;
        Repeater1.DataBind();

    }
    public void GetImage(object ImadeID)
    {
        if (ImadeID != null)
        {
            //do something with the ImageID to return the image path as string
        }
        else
        {
          
        }

    }
}