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


public partial class AdminMarketPage : System.Web.UI.Page
{
    protected string sendmsg;
    static string connStr = "SERVER=localhost;DATABASE=farmingAssistant;UID=root;PASSWORD=admi";
    MySqlConnection con = new MySqlConnection(connStr);
    MySqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Button4.Enabled = false;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        long s1 = int.Parse(TextBox7.Text);
        long s2 = int.Parse(TextBox5.Text);
        long s = s1 * s2;
        TextBox6.Text = s.ToString() + " Rs.";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminHomePage.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Button4.Enabled = true;
        try
        {
            string str;
            con.Open();
            str = "insert into accmark values('" + TextBox3.Text.ToString() + "','" + TextBox1.Text.ToString() + "','" + TextBox4.Text.ToString() + "','" + DropDownList1.Text.ToString() + "','" + TextBox5.Text.ToString() + "','" + TextBox7.Text.ToString() + "','" + TextBox6.Text.ToString()  + "')";
            MySqlCommand cmd = new MySqlCommand(str, con);
            
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, GetType(), "alertmsg", "alert('Record Saved')", true);

            //"P1T532YbOh8-ZLhpve4dyIARtyBvN9ExmoGQSooP9C"
            string mobile = "91" + TextBox1.Text;
            String message1;
            message1 = HttpUtility.UrlEncode("-Farming Assistant\n"+ TextBox5.Text + DropDownList1.Text + "of "+TextBox4.Text+" solds for of price" + TextBox7.Text + "\nTotal amount= " + TextBox6.Text + "\n-Thank you");
            using (var wb = new WebClient())
            {
                var response = wb.UploadValues("https://api.txtlocal.com/send/", new NameValueCollection()
                {
                {"apikey" , "cE9SNGMHWn4-2i0Q2SYj7nPNhhE7jWIOPWRDOQXdiE"},
                {"numbers" , mobile},
                {"message" , message1},
                {"sender" , "FaN"}
                });
                string result = System.Text.Encoding.UTF8.GetString(response);

                if (result != null)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('message sent'+'\nTo :'+addr);", true);
                }
              
            }

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

    protected void Button4_Click(object sender, EventArgs e)
    {
        
            Button4.Attributes.Add("onclick", "return printing()");
       

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        TextBox7.Text = "";
        TextBox6.Text = "";
        TextBox5.Text = "";
        TextBox4.Text = "";
        TextBox3.Text = "";
        TextBox1.Text = "";
    }
}