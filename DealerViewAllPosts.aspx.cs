using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class DealerViewAllPosts : System.Web.UI.Page
{
    static string connStr = "SERVER=localhost;DATABASE=farmingAssistant;UID=root;PASSWORD=admi";
    MySqlConnection con = new MySqlConnection(connStr);
    MySqlDataReader dr;
    string rndno;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // TextBox12.Enabled = false;
            
            load();
        }
    }
    protected void load()
    {
        con.Close();
        con.Open();
        string m = Session["dealer"].ToString();
        MySqlCommand cmd = new MySqlCommand("select * from 	dealerpost where mobile='"+m+"' ", con);
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        int count = ds.Tables[0].Rows.Count;
        con.Close();
        if (ds.Tables[0].Rows.Count > 0)
        {
            gridView.DataSource = ds;
            gridView.DataBind();
        }
        else
        {
            ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
            gridView.DataSource = ds;
            gridView.DataBind();
            int columncount = gridView.Rows[0].Cells.Count;
            lblmsg.Text = " No data found !!!";
        }
        con.Close();

    }
    protected void gridView_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gridView.EditIndex = e.NewEditIndex;
        load();
    }
    protected void gridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gridView.EditIndex = -1;
        load();
    }

    protected void gridView_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string id = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "mobile"));
            Button lnkbtnresult = (Button)e.Row.FindControl("ButtonDelete");
            if (lnkbtnresult != null)
            {
                lnkbtnresult.Attributes.Add("onclick", "javascript:return deleteConfirm('" + id + "')");
            }
        }
    }

    public void gridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            //Label fid = (Label)gridView.Rows[e.RowIndex].FindControl("id");

            //GridViewRow row = (GridViewRow)gridView.Rows[e.RowIndex];
            Label smobile = (Label)gridView.Rows[e.RowIndex].FindControl("mandi");
            con.Close();
            con.Open();
            MySqlCommand cmd = new MySqlCommand("delete  from dealerpost where mobile='" + smobile.Text + "'", con);

            int result = cmd.ExecuteNonQuery();
            con.Close();
            if (result == 1)
            {
                load();
                lblmsg.Text = "      Deleted successfully.......    ";
            }

        }
        catch (Exception ee)
        {
            lblmsg.Text = e.ToString();
        }
        load();
    }
    protected void gridView_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {

    }

   

    protected void gridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            GridViewRow row = (GridViewRow)gridView.Rows[e.RowIndex];
            Label name = (Label)gridView.Rows[e.RowIndex].FindControl("id");
            TextBox txtid = (TextBox)gridView.Rows[e.RowIndex].FindControl("txt");
            TextBox txt = (TextBox)gridView.Rows[e.RowIndex].FindControl("txt1");
            TextBox txtf = (TextBox)gridView.Rows[e.RowIndex].FindControl("txt2");
            TextBox txtc = (TextBox)gridView.Rows[e.RowIndex].FindControl("txt3");
            TextBox txtcr = (TextBox)gridView.Rows[e.RowIndex].FindControl("txt4");
            TextBox txtd = (TextBox)gridView.Rows[e.RowIndex].FindControl("txt5");
            TextBox txtr = (TextBox)gridView.Rows[e.RowIndex].FindControl("txt6");


            // String Status = " Record updated -  " + Today;

            string Query = " update dealerpost set name='" + name.Text + "', mobile='" + txtid.Text + "',  nameofcommodity = '" + txt.Text + "', unit = '" + txtf.Text + "' ,quantity='" + txtc.Text + "' ,price='" + txtcr.Text + "', shipplace='" + txtd.Text + "',datetime='" + txtr.Text + "'  where mobile='" + txtid.Text + "' ;";
            con.Open();
            MySqlCommand cmd = new MySqlCommand(Query, con);
            int result = cmd.ExecuteNonQuery();
            con.Close();
            if (result == 1)
            {
                load();
            }

        }
        catch (Exception ee)
        {
            lblmsg.Text = ee.ToString();
        }
        finally
        {
            con.Close();
        }
        
    }

    protected void gridView_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {

    }

    protected void gridView_SelectedIndexChanged(object sender, EventArgs e)
    {

    }



}
