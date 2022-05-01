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

public partial class FarmerViewDealers : System.Web.UI.Page
{
    protected string sendmsg;
    static string connStr = "SERVER=localhost;DATABASE=farmingAssistant;UID=root;PASSWORD=admi";
    MySqlConnection con = new MySqlConnection(connStr);
    MySqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
            Button3.Visible = false;
            Panel1.Visible = false;
            MySqlCommand cmd = new MySqlCommand();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            cmd.CommandText = "SELECT *FROM dsignup";
            cmd.Connection = con;
            da.SelectCommand = cmd;
            da.Fill(ds, "dsignup");
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //protected void (object sender, RepeaterItemEventArgs e) 
        RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
       // for (int i = 0; i < this.Repeater1.Items.Count; i++)
       // {
            string tt = (item.FindControl("TextBox5") as TextBox).Text;
        if (tt == "")
        {
            //TextBox t1 = (item.FindControl("TextBox5") as TextBox);
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Type message!..');", true);

        }
        else
        {
            TextBox t1 = item.FindControl("TextBox2") as TextBox;
            string addr = "91" + t1.Text;
            String message1;
            message1 = HttpUtility.UrlEncode(tt + "\nby" + "\n" + "  -Farming Assistant \n Thank you");
            using (var wb = new WebClient())
            {
                var response = wb.UploadValues("https://api.txtlocal.com/send/", new NameValueCollection()
                {
                {"apikey" , "P1T532YbOh8-W1fpXZYyEOvRtKD6NR2cIhbOCC6VhF"},
                {"numbers" , addr},
                {"message" , message1},
                {"sender" , "FAN"}
                });
                string result = System.Text.Encoding.UTF8.GetString(response);

                if (result != null)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('message sent'+'\nTo :'+addr);", true);
                }
                // return result;
            }
        }
        }
    
    public void GetMessage(string message)
    {
        sendmsg = message.ToString();
        
        StringBuilder sb = new StringBuilder();
        sb.Append("<script type='text/javascript'>");
         sb.Append("alert('sent successfully');");
        sb.Append("</script>");
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ajax", sb.ToString(), false);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = "His requirements Posts";
        RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
        TextBox t1 = item.FindControl("TextBox2") as TextBox;
        string mobileno = t1.Text;
        Button3.Visible = true;
        Panel1.Visible = true;
        Panel2.Visible = false;
        MySqlCommand cmd = new MySqlCommand();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        cmd.CommandText = "SELECT *FROM dealerpost where mobile='"+mobileno+"'";
        cmd.Connection = con;
        da.SelectCommand = cmd;
        da.Fill(ds, "dealerpost");
        Repeater2.DataSource = ds;
        Repeater2.DataBind();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Label1.Text = "All Posts requirements of Market agent/dealers";
        Panel1.Visible = true;
        Panel2.Visible = false;
        MySqlCommand cmd = new MySqlCommand();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        cmd.CommandText = "SELECT *FROM dealerpost";
        cmd.Connection = con;
        da.SelectCommand = cmd;
        da.Fill(ds, "dealerpost");
        Repeater2.DataSource = ds;
        Repeater2.DataBind();
    }
}