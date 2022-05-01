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

public partial class FarmerChangePassword : System.Web.UI.Page
{
    static string xyz;
    static string connStr = "SERVER=localhost;DATABASE=farmingAssistant;UID=root;PASSWORD=admi";
    MySqlConnection con = new MySqlConnection(connStr);
    MySqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            xyz = Session["phone"].ToString();

        }
    }

    public void messagebox(string message)
    {
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        MySqlCommand cmd = con.CreateCommand();
        cmd.CommandText = "Select  passw from flogin where mobileno='" + xyz + "'";
        MySqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            if (TextBox1.Text == rd["passw"].ToString())
            {
                rd.Close();
                cmd.CommandText = "update flogin set passw='" + TextBox2.Text + "' where mobileno='" + xyz + "'";
                cmd.ExecuteNonQuery();

                messagebox("Password Changed");
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";

            }
            else
            {

                messagebox("Incorrect Password!!");
                TextBox1.Text = "";

            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("farmerhomepage.aspx");
    }
}
               