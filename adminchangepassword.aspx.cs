using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Drawing;
using System.Data.SqlClient;
public partial class adminchangepassword : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query;
    protected void Page_Load(object sender, EventArgs e)
    {

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
        data();
        query = "select pass from adminlogin where pass='" + txtold.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            data();
            query = "update adminlogin set pass='" + txtnew.Text + "' where pass='" + txtold.Text + "' and uname='admin'";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            lblerr.Visible = true;
            lblerr.Text = "Password Updated";
        }
        else
        {
            lblerr.Visible = true;
            lblerr.Text = "Invalid Old Password";
        }
        rd.Close();
        con.Close();
    }
}