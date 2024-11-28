using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.Configuration;
using System.Data.SqlClient;
public partial class managefood : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query, a;
    string destdir, filename, orgfilename, Destpath;
    string destdir3, filename3, orgfilename3, Destpath3;
    string breakfast, lunch, dinner, spicy;
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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        dropcateg.Text = GridView1.SelectedRow.Cells[0].Text.ToString();
        txtitemid.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
        txtitemname.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
        data();
        query = "select bfast,lunch,dinner,itemtype,spicy,price,imgname1,imgname2 from itemdet where itemid='" + txtitemid.Text + "' and itemcateg='" + dropcateg.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            breakfast = rd[0].ToString();
            lunch = rd[1].ToString();
            dinner = rd[2].ToString();
            a = rd[3].ToString();
            spicy = rd[4].ToString();
            txtprice.Text = rd[5].ToString();
            Image1.ImageUrl = (@"~\Itemimg\" + rd[6].ToString());
            Image2.ImageUrl = (@"~\Itemimg\" + rd[7].ToString());
            if (breakfast == "yes")
            {
                CheckBox1.Checked = true;
            }
            else
            {
                CheckBox1.Checked = false;
            }
            if (lunch == "yes")
            {
                CheckBox2.Checked = true;
            }
            else
            {
                CheckBox2.Checked = false;
            }
            if (dinner == "yes")
            {
                CheckBox3.Checked = true;
            }
            else
            {
                CheckBox3.Checked = false;
            }
            if (a == "veg")
            {
                RadioButton1.Checked = true;
                RadioButton2.Checked = false;
            }
            else
            {
                RadioButton1.Checked = false;
                RadioButton2.Checked = true;
            }
            if (spicy == "yes")
            {
                CheckBox4.Checked = true;
            }
            else
            {
                CheckBox4.Checked = false;
            }
        }
        else
        {

        }
        rd.Close();
        con.Close();
    }
    protected void txtitemid_TextChanged(object sender, EventArgs e)
    {
        data();
        query = "select itemid from itemdet where itemid='" + txtitemid.Text + "'";
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        //image1
        if (FileUpload1.PostedFile.ContentLength != 0)
        {

            if (FileUpload1.PostedFile.ContentLength < 2064)
            {
                LblError.Text = "File size is too large";
                LblError.Visible = true;
            }
            else
            {
                destdir = Server.MapPath("./Itemimg");
                filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                orgfilename = filename;
                Destpath = Path.Combine(destdir, filename);
                FileUpload1.PostedFile.SaveAs(Destpath);
            }
        }

        //image2
        if (FileUpload2.PostedFile.ContentLength != 0)
        {

            if (FileUpload2.PostedFile.ContentLength < 2064)
            {
                Lblerror1.Text = "File size is too large";
                Lblerror1.Visible = true;
            }
            else
            {
                destdir3 = Server.MapPath("./Itemimg");
                filename3 = Path.GetFileName(FileUpload2.PostedFile.FileName);
                orgfilename3 = filename3;
                Destpath3 = Path.Combine(destdir3, filename3);
                FileUpload2.PostedFile.SaveAs(Destpath3);
            }
        }



        if (CheckBox1.Checked == true)
        {
            breakfast = "yes";
        }
        else
        {
            breakfast = "no";
        }
        if (CheckBox2.Checked == true)
        {
            lunch = "yes";
        }
        else
        {
            lunch = "no";
        }
        if (CheckBox3.Checked == true)
        {
            dinner = "yes";
        }
        else
        {
            dinner = "no";
        }
        if (CheckBox4.Checked == true)
        {
            spicy = "yes";
        }
        else
        {
            spicy = "no";
        }
        if (RadioButton1.Checked == true)
        {
            a = "veg";
        }
        else
        {
            a = "nonveg";
        }
        data();
        query = "update itemdet set itemcateg='" + dropcateg.SelectedItem + "',itemid='" + txtitemid.Text + "',itemname='" + txtitemname.Text + "',bfast='" + breakfast + "',lunch='" + lunch + "',dinner='" + dinner + "',itemtype='" + a + "',spicy='" + spicy + "',price='" + txtprice.Text + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        lblmsg.Visible = true;
        lblmsg.Text = "Updated Successfully";
        GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        data();
        query = "delete from itemdet where itemid='" + txtitemid.Text + "' and itemcateg='" + dropcateg.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        lblmsg.Visible = true;
        lblmsg.Text = "Deleted Successfully";
        GridView1.DataBind();
    }
}