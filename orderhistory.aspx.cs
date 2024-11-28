using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Collections;
using System.Web.Configuration;
public partial class orderhistory : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GridView1.DataBind();
        }
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
    //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    //{
    //    int oid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0].ToString());
    //    data();
    //    query = "delete from orderdet where id=" + oid + "";
    //    AccessDataSource1.DeleteCommand = query;
    //    AccessDataSource1.Delete();
    //    con.Close();
    //    GridView1.DataBind();

    //}
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string item_name = GridView1.SelectedRow.Cells[0].Text.ToString();
        string item_price = GridView1.SelectedRow.Cells[1].Text.ToString();
        string item_quantity = GridView1.SelectedRow.Cells[2].Text.ToString();
        data();
        query = "update orderdet set stuhis='No' where itemname='" + item_name + "' and itemprice=" + item_price + " and quanti=" + item_quantity + " and sturegno='" + lblregno.Text + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.DataBind();
    }
}