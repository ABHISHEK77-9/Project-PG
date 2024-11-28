using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Drawing;
using System.Data.SqlClient;
public partial class changepassword : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query, a;
    protected void Page_Load(object sender, EventArgs e)
    {
        a = Session["student"].ToString();
    }
    public void data()
    {
        string connstring;
        connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        a = Session["student"].ToString();
        data();
        query = "select pwd from studet where pwd='" + txtold.Text + "' and rollnum='" + a.ToString() + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            data();
            query = "update studet set pwd='" + txtnew.Text + "' where pwd='" + txtold.Text + "' and rollnum='" + a.ToString() + "'";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            lblerr.Visible = true;
            lblerr.Text = "Password Updated";
        }
        else
        {
            lblerr.Visible = true;
            lblerr.Text = "Invalid Username & Password";
        }
        rd.Close();
        con.Close();

    }
}