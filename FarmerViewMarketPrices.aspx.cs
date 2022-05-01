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

public partial class FarmerViewMarketPrices : System.Web.UI.Page
{
    static string connStr = "SERVER=localhost;DATABASE=farmingAssistant;UID=root;PASSWORD=admi";
    MySqlConnection con = new MySqlConnection(connStr);
    MySqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        loadData();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        var s1 = DropDownList1.Text;
        var s2 = DropDownList2.Text;
       
        try
        {
            MySqlCommand cmd = new MySqlCommand();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();

            if (DropDownList1.SelectedIndex!=0 && DropDownList2.SelectedIndex==0)
            {
                cmd.CommandText = "SELECT *FROM mprice where district='" + s1 + "' ";
                cmd.Connection = con;
                da.SelectCommand = cmd;
                da.Fill(ds, "mprice");
                Repeater1.DataSource = ds;
                Repeater1.DataBind();
                if (Repeater1.Items.Count < 1)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alertmsg", "alert('No Record Found!')", true);
                }
            }
            //MySqlCommand cmd = new MySqlCommand();
            //MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            else if (DropDownList1.SelectedIndex != 0 && DropDownList2.SelectedIndex != 0)
            {
                cmd.CommandText = "SELECT *FROM mprice where district='" + s1 + "' and commodity='" + s2 + "'  ";
                cmd.Connection = con;
                da.SelectCommand = cmd;
                da.Fill(ds, "mprice");
                Repeater1.DataSource = ds;
                Repeater1.DataBind();
                if (Repeater1.Items.Count < 1)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alertmsg", "alert('No Record Found!')", true);
                }
            }
            
        }
        catch (Exception ee)
        {
            // ScriptManager.RegisterStartupScript(this, GetType(), "alertmsg", "alert('No Record Found!+\n ee')", true);

        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        DropDownList1.SelectedIndex = 0;
        DropDownList2.SelectedIndex = 0;
      
        loadData();
    }
    public void loadData()
    {
        MySqlCommand cmd = new MySqlCommand();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        cmd.CommandText = "SELECT *FROM mprice order by updatedon desc";
        cmd.Connection = con;
        da.SelectCommand = cmd;
        da.Fill(ds, "mprice");
        Repeater1.DataSource = ds;
        Repeater1.DataBind();

    }
}