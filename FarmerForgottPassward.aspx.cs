using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Net;
using System.Collections.Specialized;
using System.IO;
using System.Text;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Input;

public partial class FarmerForgottPassward : System.Web.UI.Page
{
    static string xyz;
    static string connStr = "SERVER=localhost;DATABASE=farmingAssistant;UID=root;PASSWORD=admi";
    MySqlConnection con = new MySqlConnection(connStr);
    MySqlCommand cmd = new MySqlCommand();
    MySqlDataAdapter da = new MySqlDataAdapter();
    static string Answer,rndno;
    public static string sub, from, message;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;

        }
    }
    void readDataById()
    {
        Panel3.Visible = true;
        Panel4.Visible = false;
        TextBox1.Visible = true;
        try
        {
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT   sq, ans FROM flogin WHERE mobileno ='" + TextBox1.Text + "' ";
            MySqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Panel1.Visible = true;
                TextBox2.Text = rd["sq"].ToString();
                Answer = rd["ans"].ToString();
                lblReadMsg.Visible = false;
            }
            else
            {
                lblReadMsg.Visible = true;
                lblReadMsg.Text = "Not found user/mobile number";
            }
        }
        catch (Exception ee)
        {

        }
        finally
        {
            con.Close();
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        readDataById();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Answer == TextBox3.Text)
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            lblMsg.Text = "";
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Wrong Answer');", true);
            lblMsg.Text = "Enter the correct Answer";
            TextBox3.Text = "";
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            if (TextBox4.Text == "")
            {
                TextBox4.Focus();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Enter new password');", true);
                TextBox4.ForeColor.Equals("red");
            }
            else
            {
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "update flogin set passw='" + TextBox4.Text + "' WHERE mobileno ='" + TextBox1.Text + "'";
                cmd.ExecuteNonQuery();
                // lblsuccess.Text = "Password Changed";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Password changed sucessfully');", true);

                con.Close();
            }
        }
        catch (Exception em)
        {

        }
        finally
        {
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel1.Visible = false;

        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("formerlogin.aspx");
    }

   
    protected void Button6_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "By OTP")
        {
            Panel3.Visible = true;
            Button1.Visible = false;
            Button5.Visible = true;
        }
        else if(DropDownList1.SelectedItem.Text == "By Secuirity Question")
        {
            Panel4.Visible = false;
            Panel3.Visible = true;
            Button1.Visible = true;
            Button5.Visible = false;
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Select one');", true);

        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Enter mobile number');", true);

        }
        else
        {
            Random rnd = new Random();
            rndno = rnd.Next(10000, 99999).ToString();
            string addr = "91" + TextBox1.Text;
            String message1;
            message1 = HttpUtility.UrlEncode("your OTP is " + rndno + " Please donot share with any one" + "\n" + "Thank you");
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
                Session["otp"] = rndno;
                if (result != null)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('OTP is sent');", true);

                    TextBox6.Enabled = true;
                }
                // return result;
            }

            Panel4.Visible = true;

        }
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        if (TextBox6.Text == "")
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Please Enter OTP');", true);

        }
        if (TextBox6.Text== rndno)
        {
            Panel2.Visible = true;
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Wrong OTP \n again click on send OTP');", true);

        }
    }
}