using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Collections;
using System.Web.Configuration;
public partial class cancelorder : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblregno.Text = Session["student"].ToString();
        data();
        query = "select sname,amt from studet where rollnum='" + lblregno.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            lblname.Text = rd[0].ToString();
            lblamt.Text = rd[1].ToString();
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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int amt = Convert.ToInt32(GridView1.SelectedRow.Cells[3].Text.ToString());
        string itemname=GridView1.SelectedRow.Cells[0].Text.ToString();
        string itemprice=GridView1.SelectedRow.Cells[1].Text.ToString();
        int tot = Convert.ToInt32(lblamt.Text) + amt;
        //data();
        //query = "update studet set amt='" + tot.ToString() + "' where rollnum='" + lblregno.Text + "'";
        //cmd = new SqlCommand(query, con);
        //cmd.ExecuteNonQuery();
        //con.Close();

        data();
        query = "delete from orderdet where itemname='" + itemname.ToString() + "' and sturegno='" + lblregno.Text + "' and itemprice='" + itemprice + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

    }
   
}