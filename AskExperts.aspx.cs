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

public partial class AskExperts : System.Web.UI.Page
{
    static byte[] imgBinarydata1;
    static string connStr = "SERVER=localhost;DATABASE=farmingAssistant;UID=root;PASSWORD=admi";
    MySqlConnection con = new MySqlConnection(connStr);
    MySqlDataReader dr;
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            regFun();
            TextBox4.Text = Session["phone"].ToString();
        }
       
       
    }
    public void Check_Clicked(Object sender, EventArgs e)
    {
        CheckBox checkbox = sender as CheckBox;
        if (checkbox.Checked)
        {
          
           TextBox1.Text = checkbox.Text;
            if (checkbox.ID == CheckBox1.ID)
            {
                CheckBox1.Checked = true;
                CheckBox2.Checked = false;
                CheckBox3.Checked = false;
                CheckBox4.Checked = false;
                CheckBox5.Checked = false;
            }
           else if (checkbox.ID == CheckBox2.ID)
            {
                CheckBox1.Checked = true;
                CheckBox1.Checked = false;
                CheckBox3.Checked = false;
                CheckBox4.Checked = false;
                CheckBox5.Checked = false;
            }
           else if (checkbox.ID == CheckBox3.ID)
            {
                CheckBox3.Checked = true;
                CheckBox2.Checked = false;
                CheckBox1.Checked = false;
                CheckBox4.Checked = false; CheckBox5.Checked = false;
            }
           else if (checkbox.ID == CheckBox4.ID)
            {
                CheckBox4.Checked = true;
                CheckBox2.Checked = false;
                CheckBox3.Checked = false;
                CheckBox1.Checked = false; CheckBox5.Checked = false;
            }
            else //if (checkbox.ID == CheckBox5.ID)
            {
                CheckBox5.Checked = true;
                CheckBox4.Checked = false;
                CheckBox2.Checked = false;
                CheckBox3.Checked = false;
                CheckBox1.Checked = false; 
            }
        }
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~img" + FileUpload1.FileName));
            Image1.ImageUrl = "~img" + FileUpload1.FileName;

        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertmsg", "alert('please select image')", true);
        }
        Stream imgStream2 = FileUpload1.PostedFile.InputStream;
        int imglen2 = FileUpload1.PostedFile.ContentLength;
        imgBinarydata1 = new byte[imglen2];
        int n2 = imgStream2.Read(imgBinarydata1, 0, imglen2);

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("farmerhomepage.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd = con.CreateCommand();
            cmd.CommandText = "insert into askexperts(id,name,mobile,quetion,description,img) values(@id,@name,@mobile,@quetion,@description,@img)";
            cmd.Parameters.AddWithValue("@id", TextBox5.Text.ToString());
            cmd.Parameters.AddWithValue("@name", TextBox3.Text.ToString());
            cmd.Parameters.AddWithValue("@mobile", TextBox4.Text.ToString());
            cmd.Parameters.AddWithValue("@quetion", TextBox1.Text.ToString());
            cmd.Parameters.AddWithValue("@description", TextBox2.Text.ToString());
            cmd.Parameters.Add(new MySqlParameter("@img", MySqlDbType.LongBlob)).Value = imgBinarydata1;
            cmd.ExecuteNonQuery();


        }
        catch (Exception ee)
        {

        }
        finally
        {

            MySqlCommand cmd = new MySqlCommand();
            cmd = con.CreateCommand();
            cmd.CommandText = "insert into askexperts1(id,mobile,img) values(@id,@mobile,@img)";
            cmd.Parameters.AddWithValue("@id", TextBox5.Text.ToString());
            cmd.Parameters.AddWithValue("@mobile", TextBox4.Text.ToString());
            cmd.Parameters.Add(new MySqlParameter("@img", MySqlDbType.LongBlob)).Value = imgBinarydata1;
            cmd.ExecuteNonQuery();

            con.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            Image1.ImageUrl = "";
            regFun();
        }
    }

    public void regFun()
    {

        try
        {
            
            con.Open();

            Random rnd = new Random();
            string rndno = rnd.Next(100, 999).ToString();
            int r = int.Parse(rndno);
            string str2 = "select id from askexperts";
            MySqlCommand cmdd = new MySqlCommand(str2, con);
            int count1 = int.Parse(cmdd.ExecuteScalar().ToString());
            if (count1 == r)
            {
                // rndno= rnd.Next(100, 999).ToString();
                regFun();
            }
            else
            {
                TextBox5.Text = r.ToString();
            }
            /*string str = "select max(id) from askexperts";
            MySqlCommand cmd = new MySqlCommand(str, con);

            string str1 = "select count(*) from askexperts";
            MySqlCommand cmd1 = new MySqlCommand(str1, con);
            int count = int.Parse(cmd1.ExecuteScalar().ToString());
            if (count == 0)
            {
                newno = 100;
            }
            else
            {
                newno = int.Parse(cmd.ExecuteScalar().ToString());
            }
            newno = newno + 1;
            con.Close();
            TextBox5.Text = newno.ToString();
        }*/
        }
        catch (Exception s)
        {
            s.Message.ToString();
        }
    }

}