<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.IO;

public class Handler : IHttpHandler
{
    static string connStr = "SERVER=localhost;DATABASE=farmingAssistant;UID=root;PASSWORD=admi";
    MySqlConnection con = new MySqlConnection(connStr);
    MySqlDataReader dr;

    public void ProcessRequest(HttpContext context)
    {
       // context.Response.ContentType = "text/plain";
        //context.Response.Write("Hello World");

        string id = context.Request.QueryString["id"];
        con.Open();
        MySqlCommand cmd = con.CreateCommand();
        cmd.CommandText = "select img from askexperts where id='" + id + "'";
                                                       //cmd.Parameters.AddWithValue("@id", id.ToString());
        object data = cmd.ExecuteScalar();
        con.Close();
        cmd.Dispose();
        context.Response.BinaryWrite((byte[])data);
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}