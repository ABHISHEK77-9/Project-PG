using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
public partial class emptyadmin : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query;
    int a,tot,amt;
    string stureg;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbldate.Text = System.DateTime.Today.ToShortDateString();
        lbltime.Text = System.DateTime.Now.ToShortTimeString();
    }
    public void data()
    {
        string connstring;
        connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        data();
        query = "select amt from studet where rollnum='" + DropDownList1.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            a = Convert.ToInt32(rd[0].ToString());
            a = a + (Convert.ToInt32(txtamount.Text));
            data();
            query = "update studet set amt=" + a + " where rollnum='" + DropDownList1.SelectedItem + "'";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            lblmsg.Visible = true;
            txtamount.Text = "";

        }
        else
        {
        }
        rd.Close();
        con.Close();
        data();
        query = "select amt from studet where rollnum='" + DropDownList1.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader red = cmd.ExecuteReader();
        while (red.Read())
        {
            lblamt.Text = red[0].ToString();
        }
        red.Close();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        lblmsg.Visible = false;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        string regno = GridView1.SelectedRow.Cells[0].Text.ToString();
        int price = Convert.ToInt32(GridView1.SelectedRow.Cells[5].Text.ToString());
        string itemname = GridView1.SelectedRow.Cells[2].Text.ToString();

        data();
        query = "select amt from studet where rollnum='" + regno.ToString() + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            amt = Convert.ToInt32(rd[0].ToString());
            tot = amt - price;
            data();
            query = "update studet set amt=" + tot + " where rollnum='" + regno.ToString() + "'";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();

            data();
            query = "update orderdet set adminhis='no',stuorder='delivered' where itemname='" + itemname + "' and sturegno='" + regno + "'";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();


        }
        else
        {
        }
        rd.Close();
        con.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        data();
        query = "select amt from studet where rollnum='" + DropDownList1.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            lblamt.Text = rd[0].ToString();
        }
        rd.Close();
        con.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        data();
        query = "select amt from studet where rollnum='" + DropDownList1.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            lblamt.Text = rd[0].ToString();
        }
        rd.Close();
        con.Close();
    }
}