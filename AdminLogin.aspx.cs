using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class AdminLogin : System.Web.UI.Page
{
    static string connStr = "SERVER=localhost;DATABASE=farmingAssistant;UID=root;PASSWORD=admi";
    MySqlConnection con = new MySqlConnection(connStr);
    MySqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        LoginFun();
    }
   
    void LoginFun()
    {
        try
        {
            MySqlCommand cmd = new MySqlCommand();
            cmd = con.CreateCommand();
            con.Open();
            cmd.CommandText = "select  *from adminlogin";
            dr = cmd.ExecuteReader();
            //Session["farmer"] = TextBox1.Text.Trim().ToString();
            while (dr.Read())
            {

                if (dr["username"].ToString() == TextBox1.Text.Trim() && dr["passward"].ToString() == TextBox2.Text.Trim())
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alertmsg", "alert('Login successfull')", true);
                    //popup();
                    Response.Redirect("AdminHomePage.aspx");

                }
                else
                {
                    
                    ScriptManager.RegisterStartupScript(this, GetType(), "alertmsg", "alert('Not valid username or password')", true);
                    TextBox2.Text = "";
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


    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("index1.aspx");
    }
}