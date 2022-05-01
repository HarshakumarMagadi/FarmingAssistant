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


public partial class DealersHomePage : System.Web.UI.Page
{
    static string connStr = "SERVER=localhost;DATABASE=farmingAssistant;UID=root;PASSWORD=admi";
    MySqlConnection con = new MySqlConnection(connStr);
    MySqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label5.Text = Session["dealer"].ToString();
            MySqlCommand cmd = new MySqlCommand();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            cmd.CommandText = "SELECT *FROM mprice";
            cmd.Connection = con;
            da.SelectCommand = cmd;
            da.Fill(ds, "mprice");
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      
        string str;
        try
        {
            con.Open();
            str = "insert into dealerpost values('" + TextBox7.Text.ToString() + "','" + TextBox6.Text.ToString() + "','" + TextBox1.Text.ToString() + "','" + DropDownList3.Text.ToString() + "','" + TextBox2.Text.ToString()  + "','" + TextBox3.Text.ToString() + "','" + TextBox5.Text.ToString() + "','" + TextBox4.Text.ToString() + "')";
            MySqlCommand cmd = new MySqlCommand(str, con);

            cmd.ExecuteNonQuery();
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox2.Text = "";
        }
        catch (Exception s)
        {
            errormsg.Text= s.Message.ToString();
        }
        finally
        {
            con.Close();
        }
    }


    //protected void Button2_Click1(object sender, EventArgs e)
    //{
    //    Session.Remove("dealer");
    //    Session.Clear();
    //    Response.Redirect("Dealerlogin.aspx");
    //}

    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Remove("dealer");
        Session.Clear();
        Response.Redirect("Dealerlogin.aspx");
        }
    }