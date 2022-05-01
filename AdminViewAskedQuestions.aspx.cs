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

public partial class AdminViewAskedQuestions : System.Web.UI.Page
{
    static byte[] imgBinarydata1;
    static string connStr = "SERVER=localhost;DATABASE=farmingAssistant;UID=root;PASSWORD=admi";
    MySqlConnection con = new MySqlConnection(connStr);
    MySqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        loadPosts();
    }

    public void loadPosts()
    {
        MySqlCommand cmd = new MySqlCommand();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        cmd.CommandText = "SELECT *FROM askexperts";
        cmd.Connection = con;
        da.SelectCommand = cmd;
        da.Fill(ds, "askexperts");
        Repeater1.DataSource = ds;
        Repeater1.DataBind();

    }
   

    protected void Button2_Click(object sender, EventArgs e)
    {
        string str, str1;
        //byte[] img;
        //int slno=1;
        RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
        String msg = (item.FindControl("TextBox5") as TextBox).Text;
        String mobile = (item.FindControl("TextBox2") as TextBox).Text;
        String name = (item.FindControl("TextBox1") as TextBox).Text;
        String ques = (item.FindControl("TextBox3") as TextBox).Text;
        String desc = (item.FindControl("TextBox4") as TextBox).Text;
        String status = (item.FindControl("DropDownList1") as DropDownList).Text;
        String id = (item.FindControl("TextBox6") as TextBox).Text;
        Image img = (item.FindControl("img")) as Image;
        string Path = img.ImageUrl;
        //command.Parameters.Add("@Image",

        // SqlDbType.Binary).Value = bytes;
        // byte[] img = (item.FindControl("img") as Image);
        /* Stream imgStream2; //= Path;
         int n2 = imgStream2.Read(imgBinarydata1, 0, imglen2);*/
       // int imglen2 = Path.Length;
        //imgBinarydata1 = new byte[imglen2];


        if (msg == "")
        {
          
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Type message/suggestion!..');", true);

        }
        else
        {
            string by = "FAN";
            //TextBox t1 = item.FindControl("TextBox2") as TextBox;
            string addr = "91" + mobile;
            String message1;
            message1 = HttpUtility.UrlEncode("Acknowledgement for your recent post i.e id=" + id + "\n" + "Status:" + status + "\n" + "Suggestion:" + msg + "\nCheck it out here" + "http://" + "\nby" + "\n" + "  -Farming Assistant \n Thank you");
            using (var wb = new WebClient())
            {
                var response = wb.UploadValues("https://api.txtlocal.com/send/", new NameValueCollection()
                {
                {"apikey" , "P1T532YbOh8-W1fpXZYyEOvRtKD6NR2cIhbOCC6VhF"},
                {"numbers" , addr},
                {"message" , message1},
                {"sender" , by}
                });
                string result = System.Text.Encoding.UTF8.GetString(response);

                if (result != null)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('message sent'+'\nTo :'+addr);", true);
                }
                // return result;
            }
        }

        try
        {
          con.Open();
           str = "insert into adminsolveques values('" + id + "','" + name + "','" + mobile + "','" + ques + "','" + desc + "','" + msg + "','" + status +"')";
           MySqlCommand cmd = new MySqlCommand(str, con);
           /* con.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd = con.CreateCommand();

            cmd.CommandText = "insert into adminsolveques(id,name,mobile,ques,desc,ans,status,img) values(@id,@name,@mobile,@ques,@desc,@ans,@status,@img)";

             cmd.Parameters.AddWithValue("@id", id);
             cmd.Parameters.AddWithValue("@name", name);
             cmd.Parameters.AddWithValue("@mobile", mobile);
             cmd.Parameters.AddWithValue("@ques", ques);
             cmd.Parameters.AddWithValue("@desc", desc);
             cmd.Parameters.AddWithValue("@ans", msg);
             cmd.Parameters.AddWithValue("@status", status);
            // cmd.Parameters.Add(new MySqlParameter("@img", MySqlDbType.LongBlob)).Value = imgBinarydata1;
            
            cmd.Parameters.Add(new MySqlParameter("@img", MySqlDbType.LongBlob)).Value = Path;
            */
            cmd.ExecuteNonQuery();

            if (status == "Aborted" || status == "Answered")
            {
                str1 = "delete from askexperts where id='" + id + "' ";
                MySqlCommand cmd1 = new MySqlCommand(str1, con);
                cmd1.ExecuteNonQuery();
            }
            loadPosts();

        }
        catch (Exception ee)
        {
            
        }
        finally { con.Close(); }
    }



    protected void Button3_Click(object sender, EventArgs e)
    {
        loadPosts();
    }
}
