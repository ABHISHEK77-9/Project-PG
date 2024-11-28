using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.Configuration;
using System.Data.SqlClient;
public partial class createfooditems : System.Web.UI.Page
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
        string p = "RS." + txtprice.Text;
        data();
        query = "insert into itemdet(itemcateg,itemid,itemname,bfast,lunch,dinner,itemtype,spicy,price,imgname1,imgpath1,imgname2,imgpath2,price1)values('" + dropcateg.SelectedItem + "','" + txtitemid.Text + "','" + txtitemname.Text + "','" + breakfast.ToString() + "','" + lunch.ToString() + "','" + dinner.ToString() + "','" + a.ToString() + "','" + spicy.ToString() + "','"+p.ToString() + "','" + orgfilename + "','" + Destpath + "','" + orgfilename3 + "','" + Destpath3 + "','" + txtprice.Text + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        txtitemid.Text = "";
        txtitemname.Text = "";
        txtprice.Text = "";




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
}