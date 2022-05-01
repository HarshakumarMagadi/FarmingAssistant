using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Net;
using System.Collections.Specialized;

public partial class Dealerlogin : System.Web.UI.Page
{
    static string connStr = "SERVER=localhost;DATABASE=farmingAssistant;UID=root;PASSWORD=admi";
    MySqlConnection con = new MySqlConnection(connStr);
    MySqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    void LoginFun()
    {
        try
        {
            MySqlCommand cmd = new MySqlCommand();
            cmd = con.CreateCommand();
            con.Open();
            cmd.CommandText = "select *from dsignup";
            dr = cmd.ExecuteReader();
            //Session["farmer"] = TextBox1.Text.Trim().ToString();
            while (dr.Read())
            {
                if (dr["mobileno"].ToString() == TextBox1.Text.Trim() && dr["passw"].ToString() == TextBox2.Text.Trim())
                {
                    Session["dealer"] = dr["mobileno"].ToString();
                    Response.Redirect("DealersHomePage.aspx");
                }
                else
                {

                    ScriptManager.RegisterStartupScript(this, GetType(), "alertmsg", "alert('Not valid username or password')", true);
                    
                }


            }
        }
        catch (Exception ex)
        {
            Label4.Text = ex.Message.ToString();
        }
        finally
        {
            con.Close();
        }
    }





    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("index1.aspx");

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        LoginFun();
    }
}
