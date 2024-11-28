using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Drawing;
using System.Data.SqlClient;
public partial class viewstuprofile : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query,gender;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtrollnum.Text = Session["student"].ToString();
        if (!Page.IsPostBack)
        {
            data();
            query = "select * from studet where rollnum='" + txtrollnum.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                txtname.Text = rd[1].ToString();
                gender = rd[2].ToString();
                if (gender == "male")
                {
                    RadioButton1.Checked = true;
                    RadioButton2.Checked = false;
                }
                else
                {
                    RadioButton2.Checked = true;
                    RadioButton1.Checked = false;
                }
                txtdob.Text = rd[3].ToString();
                txtdept.Text = rd[4].ToString();
                txtclass.Text = rd[5].ToString();
                txtyear.Text = rd[6].ToString();
                txtphone.Text = rd[7].ToString();
                txtemail.Text = rd[8].ToString();

            }
            rd.Close();
            con.Close();
        }
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
      
        if (Button1.Text == "Update")
        {
            if (RadioButton1.Checked == true)
            {
                gender = "male";
            }
            else
            {
                gender = "female";
            }
            data();
            query = "update studet set sname='" + txtname.Text + "',gen='" + gender + "',dob='" + txtdob.Text + "',dept='" + txtdept.Text + "',sclas='" + txtclass.Text + "',yr='" + txtyear.Text + "',phno='" + txtphone.Text + "',email='" + txtemail.Text + "' where rollnum='" + txtrollnum.Text + "'";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            lblerr.Visible = true;
            txtname.BorderStyle = BorderStyle.None;
            txtdob.BorderStyle = BorderStyle.None;
            txtdept.BorderStyle = BorderStyle.None;
            txtclass.BorderStyle = BorderStyle.None;
            txtyear.BorderStyle = BorderStyle.None;
            txtphone.BorderStyle = BorderStyle.None;
            txtemail.BorderStyle = BorderStyle.None;

        }
        txtname.BorderStyle = BorderStyle.NotSet;
        txtdob.BorderStyle = BorderStyle.NotSet;
        txtdept.BorderStyle = BorderStyle.NotSet;
        txtclass.BorderStyle = BorderStyle.NotSet;
        txtyear.BorderStyle = BorderStyle.NotSet;
        txtphone.BorderStyle = BorderStyle.NotSet;
        txtemail.BorderStyle = BorderStyle.NotSet;

        Button1.Text = "Update";



    }
}