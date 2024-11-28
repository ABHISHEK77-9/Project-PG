using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
public partial class stuhome : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query, a;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbldate.Text = System.DateTime.Today.ToShortDateString();
        lbltime.Text = System.DateTime.Now.ToShortTimeString();
        lblregno.Text = Session["student"].ToString();

        data();
        query = "select amt from studet where rollnum='" + lblregno.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            lblbal.Text = rd[0].ToString();
        }
        rd.Close();
        con.Close();
    }
    public void data()
    {
        string connstring;
        connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
}