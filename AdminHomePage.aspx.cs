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

public partial class AdminHomePage : System.Web.UI.Page
{
    static string connStr = "SERVER=localhost;DATABASE=farmingAssistant;UID=root;PASSWORD=admi";
    MySqlConnection con = new MySqlConnection(connStr);
    MySqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            TextBox6.Text = DateTime.Now.ToShortDateString();
            string str = "select taluks from ramanagara";
            MySqlCommand cmd = new MySqlCommand(str, con);
            con.Open();
            string data = "";
            MySqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                data = rdr.GetString("taluks");
                DropDownList2.Items.Add(data);
            }
            rdr.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string str;
        try
        {
            con.Open();
            str = "insert into mprice values('" + TextBox1.Text.ToString() + "','" + DropDownList1.Text.ToString() + "','" + DropDownList2.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + TextBox4.Text.ToString()+ "','" + TextBox5.Text.ToString()+ "','" + DropDownList3.Text.ToString() + "','" + TextBox6.Text.ToString() + "')";
            MySqlCommand cmd = new MySqlCommand(str, con);
            cmd.ExecuteNonQuery();
           
        }
        catch (Exception s)
        {
            s.Message.ToString();
        }
        finally
        {
            con.Close();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("AdminLogin.aspx");
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
        {
            DropDownList2.Items.Clear();
            string str = "select taluks from ramanagara";
            MySqlCommand cmd = new MySqlCommand(str, con);
            con.Open();
            string data = "";
            MySqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                data = rdr.GetString("taluks");
                DropDownList2.Items.Add(data);
            }
            rdr.Close();
        }
        else if (DropDownList1.SelectedIndex==1)
        {
            
            DropDownList2.Items.Clear();
            string str = "select taluks from tumkur";
            MySqlCommand cmd = new MySqlCommand(str, con);
            con.Open();
            string data = "";
            MySqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                data = rdr.GetString("taluks");
                DropDownList2.Items.Add(data);
            }
            rdr.Close();
        }
       else //(DropDownList1.SelectedIndex == 2)
        {
            DropDownList2.Items.Clear();
            string str = "select taluks from banglore";
            MySqlCommand cmd = new MySqlCommand(str, con);
            con.Open();
            string data = "";
            MySqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                data = rdr.GetString("taluks");
                DropDownList2.Items.Add(data);
            }
            rdr.Close();
        }
    }
}