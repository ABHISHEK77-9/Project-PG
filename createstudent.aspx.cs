using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class createstudent : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query,a;
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
        if (RadioButton1.Checked == true)
        {
            a = "male";
        }
        else
        {
            a = "female";
        }
        data();
        query = "insert into studet(rollnum,sname,gen,dob,dept,sclas,yr,phno,email,amt,pwd)values('" + txtrollnum.Text + "','" + txtname.Text + "','" + a.ToString() + "','" + txtdob.Text + "','" + txtdept.Text + "','" + txtclass.Text + "','" + txtyear.Text + "','" + txtphone.Text + "','" + txtemail.Text + "',100,'" + txtpassword.Text + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        txtrollnum.Text = "";
        txtname.Text = "";
        txtdob.Text = "";
        txtdept.Text = "";
        txtclass.Text = "";
        txtyear.Text = "";
        txtphone.Text = "";
        txtemail.Text = "";
    }
    protected void txtrollnum_TextChanged(object sender, EventArgs e)
    {
        data();
        query = "select rollnum from studet where rollnum='" + txtrollnum.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            lblerr.Visible = true;
        }
        else
        {
            lblerr.Visible = false;
        }
        rd.Close();
        con.Close();
    }
}