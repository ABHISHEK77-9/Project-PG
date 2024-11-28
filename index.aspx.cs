using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
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
        if (RadioButton3.Checked == true)
        {
            data();
            query = "select uname,pass from adminlogin where uname='" + TextBox1.Text + "' and pass='" + TextBox2.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Response.Redirect("emptyadmin.aspx");
            }
            else
            {
                lblerr.Visible = true;

            }
            rd.Close();
            con.Close();
        }
        if (RadioButton1.Checked == true)
        {
            data();
            query = "select rollnum,pwd from studet where rollnum='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Session["student"] = TextBox1.Text.ToString();
                Response.Redirect("stuhome.aspx");
            }
            else
            {
                lblerr.Visible = true;

            }
            rd.Close();
            con.Close();
        }
    }
}