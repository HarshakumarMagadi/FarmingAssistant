using System;
using System.Collections.Generic;
using System.Net;
using System.Collections.Specialized;
using System.IO;
using System.Text;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Input;

public partial class farmersignup : System.Web.UI.Page
{
    static string connStr = "SERVER=localhost;DATABASE=farmingAssistant;UID=root;PASSWORD=admi";
   // MySqlConnection con = new MySqlConnection(connStr);
   // MySqlDataReader dr;
    string rndno;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           // TextBox12.Enabled = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string gender, str;

        try
        {

            //if (RadioButton1.Checked == true)
            //{
            //    gender = "Male";
            //}
            //else
            //{
            //    gender = "Female";
            //}
            //////if (TextBox12.Text == Session["otp"].ToString())
            ////{
            //    ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('OTP matched');", true);
                con.Open();
              //  str = "insert into flogin values('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + TextBox9.Text.ToString() + "','" + TextBox6.Text.ToString() + "','" + gender.ToString() + "','" + DropDownList1.Text.ToString() + "','" + DropDownList3.Text.ToString() + "','" + TextBox5.Text.ToString() + "','" + TextBox7.Text.ToString() + "','" + DropDownList2.SelectedItem.Text.ToString() + "','" + TextBox10.Text.ToString() + "')";
               // MySqlCommand cmd = new MySqlCommand(str, con);
                
              //  cmd.ExecuteNonQuery();
                Response.Redirect("index1.aspx");
            //}
            //else
            //{
            //    ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Wrong OTP');", true);
               
            //}
            
        }
        catch (Exception s)
        {
           // Label12.Text = s.Message.ToString();
            
        }
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("formerlogin.aspx");
    }

  /*  protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text == "")
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Enter above Details');", true);
            TextBox12.Focus();
        }
        else
        {
            Random rnd = new Random();
            rndno = rnd.Next(10000, 99999).ToString();
            string addr = "91" + TextBox2.Text;
            String message1;
            message1 = HttpUtility.UrlEncode("your OTP is " + rndno + " Please donot share with any one" + "\n" + "Thank you");
            using (var wb = new WebClient())
            {
                var response = wb.UploadValues("https://api.txtlocal.com/send/", new NameValueCollection()
                {
                {"apikey" , "P1T532YbOh8-ZLhpve4dyIARtyBvN9ExmoGQSooP9C"},
                {"numbers" , addr},
                {"message" , message1},
                {"sender" , "FAN"}
                });
                string result = System.Text.Encoding.UTF8.GetString(response);
                Session["otp"] = rndno;
                if (result != null)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('OTP is sent');", true);

                    TextBox12.Enabled = true;
                }
                // return result;
            }

        }

    }*/
}