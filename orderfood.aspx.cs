using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Collections;
public partial class orderfood : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query;
    ArrayList arr = new ArrayList();
    ArrayList arr1 = new ArrayList();
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button2.Visible = true;
        if (DropDownList1.SelectedItem.Text == "Breakfast")
        {
            data();
            query = "select itemid,itemcateg,itemname,itemtype,price from itemdet where bfast='yes'";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable t = new DataTable();
            da.Fill(t);
            GridView1.DataSource = t;
            GridView1.DataBind();
            con.Close();
        }
        else if (DropDownList1.SelectedItem.Text == "Lunch")
        {
            data();
            query = "select itemid,itemcateg,itemname,itemtype,price from itemdet where lunch='yes'";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable t = new DataTable();
            da.Fill(t);
            GridView1.DataSource = t;
            GridView1.DataBind();
            con.Close();
        }
        else if (DropDownList1.SelectedItem.Text == "Dinner")
        {
            data();
            query = "select itemid,itemcateg,itemname,itemtype,price from itemdet where dinner='yes'";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable t = new DataTable();
            da.Fill(t);
            GridView1.DataSource = t;
            GridView1.DataBind();
            con.Close();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox chkb = (CheckBox)row.FindControl("chk");
            if (chkb != null && chkb.Checked)
            {
                string itemid = GridView1.DataKeys[row.RowIndex].Value.ToString();
                data();
                query = "select itemname,price1 from itemdet where itemid='" + itemid + "'";
                cmd = new SqlCommand(query, con);
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    arr.Add(rd[0].ToString());
                    arr1.Add(rd[1].ToString());
                }
                rd.Close();
                con.Close();

            }
        }
        int a1 = arr.Count;
        int a2 = arr1.Count;
        if (arr.Count == 10)
        {
            lblitem1.Text = arr[0].ToString();
            lblprice1.Text = arr1[0].ToString();

            lblitem2.Text = arr[1].ToString();
            lblprice2.Text = arr1[1].ToString();

            lblitem3.Text = arr[2].ToString();
            lblprice3.Text = arr1[2].ToString();

            lblitem4.Text = arr[3].ToString();
            lblprice4.Text = arr1[3].ToString();

            lblitem5.Text = arr[4].ToString();
            lblprice5.Text = arr1[4].ToString();

            lblitem6.Text = arr[5].ToString();
            lblprice6.Text = arr1[5].ToString();

            lblitem7.Text = arr[6].ToString();
            lblprice7.Text = arr1[6].ToString();

            lblitem8.Text = arr[7].ToString();
            lblprice8.Text = arr1[7].ToString();

            lblitem9.Text = arr[8].ToString();
            lblprice9.Text = arr1[8].ToString();

            lblitem10.Text = arr[9].ToString();
            lblprice10.Text = arr1[9].ToString();
        }
        if (arr.Count == 9)
        {
            lblitem1.Text = arr[0].ToString();
            lblprice1.Text = arr1[0].ToString();

            lblitem2.Text = arr[1].ToString();
            lblprice2.Text = arr1[1].ToString();

            lblitem3.Text = arr[2].ToString();
            lblprice3.Text = arr1[2].ToString();

            lblitem4.Text = arr[3].ToString();
            lblprice4.Text = arr1[3].ToString();

            lblitem5.Text = arr[4].ToString();
            lblprice5.Text = arr1[4].ToString();

            lblitem6.Text = arr[5].ToString();
            lblprice6.Text = arr1[5].ToString();

            lblitem7.Text = arr[6].ToString();
            lblprice7.Text = arr1[6].ToString();

            lblitem8.Text = arr[7].ToString();
            lblprice8.Text = arr1[7].ToString();

            lblitem9.Text = arr[8].ToString();
            lblprice9.Text = arr1[8].ToString();

           
        }
        if (arr.Count == 8)
        {
            lblitem1.Text = arr[0].ToString();
            lblprice1.Text = arr1[0].ToString();

            lblitem2.Text = arr[1].ToString();
            lblprice2.Text = arr1[1].ToString();

            lblitem3.Text = arr[2].ToString();
            lblprice3.Text = arr1[2].ToString();

            lblitem4.Text = arr[3].ToString();
            lblprice4.Text = arr1[3].ToString();

            lblitem5.Text = arr[4].ToString();
            lblprice5.Text = arr1[4].ToString();

            lblitem6.Text = arr[5].ToString();
            lblprice6.Text = arr1[5].ToString();

            lblitem7.Text = arr[6].ToString();
            lblprice7.Text = arr1[6].ToString();

            lblitem8.Text = arr[7].ToString();
            lblprice8.Text = arr1[7].ToString();

          
        }
        if (arr.Count == 7)
        {
            lblitem1.Text = arr[0].ToString();
            lblprice1.Text = arr1[0].ToString();

            lblitem2.Text = arr[1].ToString();
            lblprice2.Text = arr1[1].ToString();

            lblitem3.Text = arr[2].ToString();
            lblprice3.Text = arr1[2].ToString();

            lblitem4.Text = arr[3].ToString();
            lblprice4.Text = arr1[3].ToString();

            lblitem5.Text = arr[4].ToString();
            lblprice5.Text = arr1[4].ToString();

            lblitem6.Text = arr[5].ToString();
            lblprice6.Text = arr1[5].ToString();

            lblitem7.Text = arr[6].ToString();
            lblprice7.Text = arr1[6].ToString();

         }
        if (arr.Count == 6)
        {
            lblitem1.Text = arr[0].ToString();
            lblprice1.Text = arr1[0].ToString();

            lblitem2.Text = arr[1].ToString();
            lblprice2.Text = arr1[1].ToString();

            lblitem3.Text = arr[2].ToString();
            lblprice3.Text = arr1[2].ToString();

            lblitem4.Text = arr[3].ToString();
            lblprice4.Text = arr1[3].ToString();

            lblitem5.Text = arr[4].ToString();
            lblprice5.Text = arr1[4].ToString();

            lblitem6.Text = arr[5].ToString();
            lblprice6.Text = arr1[5].ToString();

        }
        if (arr.Count == 5)
        {
            lblitem1.Text = arr[0].ToString();
            lblprice1.Text = arr1[0].ToString();

            lblitem2.Text = arr[1].ToString();
            lblprice2.Text = arr1[1].ToString();

            lblitem3.Text = arr[2].ToString();
            lblprice3.Text = arr1[2].ToString();

            lblitem4.Text = arr[3].ToString();
            lblprice4.Text = arr1[3].ToString();

            lblitem5.Text = arr[4].ToString();
            lblprice5.Text = arr1[4].ToString();

        }
        if (arr.Count == 4)
        {
            lblitem1.Text = arr[0].ToString();
            lblprice1.Text = arr1[0].ToString();

            lblitem2.Text = arr[1].ToString();
            lblprice2.Text = arr1[1].ToString();

            lblitem3.Text = arr[2].ToString();
            lblprice3.Text = arr1[2].ToString();

            lblitem4.Text = arr[3].ToString();
            lblprice4.Text = arr1[3].ToString();

        }
        if (arr.Count == 3)
        {
            lblitem1.Text = arr[0].ToString();
            lblprice1.Text = arr1[0].ToString();

            lblitem2.Text = arr[1].ToString();
            lblprice2.Text = arr1[1].ToString();

            lblitem3.Text = arr[2].ToString();
            lblprice3.Text = arr1[2].ToString();

        }
        if (arr.Count == 2)
        {
            lblitem1.Text = arr[0].ToString();
            lblprice1.Text = arr1[0].ToString();

            lblitem2.Text = arr[1].ToString();
            lblprice2.Text = arr1[1].ToString();

        }
        if (arr.Count == 1)
        {
            lblitem1.Text = arr[0].ToString();
            lblprice1.Text = arr1[0].ToString();

        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button4.Visible = true;
        lbltot.Text = ((Convert.ToInt32(txtp1.Text)) + (Convert.ToInt32(txtp2.Text)) + (Convert.ToInt32(txtp3.Text)) + (Convert.ToInt32(txtp4.Text)) + (Convert.ToInt32(txtp5.Text)) + (Convert.ToInt32(txtp6.Text)) + (Convert.ToInt32(txtp7.Text)) + (Convert.ToInt32(txtp8.Text)) + (Convert.ToInt32(txtp9.Text)) + (Convert.ToInt32(txtp10.Text))).ToString();
    }
    protected void txtq1_TextChanged(object sender, EventArgs e)
    {
        txtp1.Text = ((Convert.ToInt32(lblprice1.Text)) * (Convert.ToInt32(txtq1.Text))).ToString();
    }
    protected void txtq2_TextChanged(object sender, EventArgs e)
    {
        txtp2.Text = ((Convert.ToInt32(lblprice2.Text)) * (Convert.ToInt32(txtq2.Text))).ToString();
    }
    protected void txtq3_TextChanged(object sender, EventArgs e)
    {
        txtp3.Text = ((Convert.ToInt32(lblprice3.Text)) * (Convert.ToInt32(txtq3.Text))).ToString();
    }
    protected void txtq4_TextChanged(object sender, EventArgs e)
    {
        txtp4.Text = ((Convert.ToInt32(lblprice4.Text)) * (Convert.ToInt32(txtq4.Text))).ToString();
    }
    protected void txtq5_TextChanged(object sender, EventArgs e)
    {
        txtp5.Text = ((Convert.ToInt32(lblprice5.Text)) * (Convert.ToInt32(txtq5.Text))).ToString();
    }
    protected void txtq6_TextChanged(object sender, EventArgs e)
    {
        txtp6.Text = ((Convert.ToInt32(lblprice6.Text)) * (Convert.ToInt32(txtq6.Text))).ToString();
    }
    protected void txtq7_TextChanged(object sender, EventArgs e)
    {
        txtp7.Text = ((Convert.ToInt32(lblprice7.Text)) * (Convert.ToInt32(txtq7.Text))).ToString();
    }
    protected void txtq8_TextChanged(object sender, EventArgs e)
    {
        txtp8.Text = ((Convert.ToInt32(lblprice8.Text)) * (Convert.ToInt32(txtq8.Text))).ToString();
    }
    protected void txtq9_TextChanged(object sender, EventArgs e)
    {
        txtp9.Text = ((Convert.ToInt32(lblprice9.Text)) * (Convert.ToInt32(txtq9.Text))).ToString();
    }
    protected void txtq10_TextChanged(object sender, EventArgs e)
    {
        txtp10.Text = ((Convert.ToInt32(lblprice10.Text)) * (Convert.ToInt32(txtq10.Text))).ToString();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox chkb = (CheckBox)row.FindControl("chk");
            if (chkb != null && chkb.Checked)
            {
                string itemid = GridView1.DataKeys[row.RowIndex].Value.ToString();
                data();
                query = "select itemname,price1 from itemdet where itemid='" + itemid + "'";
                cmd = new SqlCommand(query, con);
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    arr.Add(rd[0].ToString());
                    arr1.Add(rd[1].ToString());
                }
                rd.Close();
                con.Close();

            }
        }


        if ((Convert.ToInt32(lblamt.Text) > (Convert.ToInt32(lbltot.Text))))
        {
            if (arr.Count == 1)
            {
                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem1.Text + "','" + lblprice1.Text + "','" + txtq1.Text + "','" + txtp1.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
               
                
            }
            if (arr.Count == 2)
            {
                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem1.Text + "','" + lblprice1.Text + "','" + txtq1.Text + "','" + txtp1.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem2.Text + "','" + lblprice2.Text + "','" + txtq2.Text + "','" + txtp2.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            if (arr.Count == 3)
            {
                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem1.Text + "','" + lblprice1.Text + "','" + txtq1.Text + "','" + txtp1.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem2.Text + "','" + lblprice2.Text + "','" + txtq2.Text + "','" + txtp2.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem3.Text + "','" + lblprice3.Text + "','" + txtq3.Text + "','" + txtp3.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            if (arr.Count == 4)
            {
                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem1.Text + "','" + lblprice1.Text + "','" + txtq1.Text + "','" + txtp1.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem2.Text + "','" + lblprice2.Text + "','" + txtq2.Text + "','" + txtp2.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem3.Text + "','" + lblprice3.Text + "','" + txtq3.Text + "','" + txtp3.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem4.Text + "','" + lblprice4.Text + "','" + txtq4.Text + "','" + txtp4.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            if (arr.Count == 5)
            {
                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem1.Text + "','" + lblprice1.Text + "','" + txtq1.Text + "','" + txtp1.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem2.Text + "','" + lblprice2.Text + "','" + txtq2.Text + "','" + txtp2.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem3.Text + "','" + lblprice3.Text + "','" + txtq3.Text + "','" + txtp3.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem4.Text + "','" + lblprice4.Text + "','" + txtq4.Text + "','" + txtp4.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem5.Text + "','" + lblprice5.Text + "','" + txtq5.Text + "','" + txtp5.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            if (arr.Count == 6)
            {
                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem1.Text + "','" + lblprice1.Text + "','" + txtq1.Text + "','" + txtp1.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem2.Text + "','" + lblprice2.Text + "','" + txtq2.Text + "','" + txtp2.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem3.Text + "','" + lblprice3.Text + "','" + txtq3.Text + "','" + txtp3.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem4.Text + "','" + lblprice4.Text + "','" + txtq4.Text + "','" + txtp4.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem5.Text + "','" + lblprice5.Text + "','" + txtq5.Text + "','" + txtp5.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem6.Text + "','" + lblprice6.Text + "','" + txtq6.Text + "','" + txtp6.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            if (arr.Count == 7)
            {
                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem1.Text + "','" + lblprice1.Text + "','" + txtq1.Text + "','" + txtp1.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem2.Text + "','" + lblprice2.Text + "','" + txtq2.Text + "','" + txtp2.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem3.Text + "','" + lblprice3.Text + "','" + txtq3.Text + "','" + txtp3.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem4.Text + "','" + lblprice4.Text + "','" + txtq4.Text + "','" + txtp4.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem5.Text + "','" + lblprice5.Text + "','" + txtq5.Text + "','" + txtp5.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem6.Text + "','" + lblprice6.Text + "','" + txtq6.Text + "','" + txtp6.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem7.Text + "','" + lblprice7.Text + "','" + txtq7.Text + "','" + txtp7.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            if (arr.Count == 8)
            {
                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem1.Text + "','" + lblprice1.Text + "','" + txtq1.Text + "','" + txtp1.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem2.Text + "','" + lblprice2.Text + "','" + txtq2.Text + "','" + txtp2.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem3.Text + "','" + lblprice3.Text + "','" + txtq3.Text + "','" + txtp3.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem4.Text + "','" + lblprice4.Text + "','" + txtq4.Text + "','" + txtp4.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem5.Text + "','" + lblprice5.Text + "','" + txtq5.Text + "','" + txtp5.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem6.Text + "','" + lblprice6.Text + "','" + txtq6.Text + "','" + txtp6.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem7.Text + "','" + lblprice7.Text + "','" + txtq7.Text + "','" + txtp7.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem8.Text + "','" + lblprice8.Text + "','" + txtq8.Text + "','" + txtp8.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            if (arr.Count == 9)
            {
                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem1.Text + "','" + lblprice1.Text + "','" + txtq1.Text + "','" + txtp1.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem2.Text + "','" + lblprice2.Text + "','" + txtq2.Text + "','" + txtp2.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem3.Text + "','" + lblprice3.Text + "','" + txtq3.Text + "','" + txtp3.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem4.Text + "','" + lblprice4.Text + "','" + txtq4.Text + "','" + txtp4.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem5.Text + "','" + lblprice5.Text + "','" + txtq5.Text + "','" + txtp5.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem6.Text + "','" + lblprice6.Text + "','" + txtq6.Text + "','" + txtp6.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem7.Text + "','" + lblprice7.Text + "','" + txtq7.Text + "','" + txtp7.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem8.Text + "','" + lblprice8.Text + "','" + txtq8.Text + "','" + txtp8.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem9.Text + "','" + lblprice9.Text + "','" + txtq9.Text + "','" + txtp9.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            if (arr.Count == 10)
            {
                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem1.Text + "','" + lblprice1.Text + "','" + txtq1.Text + "','" + txtp1.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem2.Text + "','" + lblprice2.Text + "','" + txtq2.Text + "','" + txtp2.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem3.Text + "','" + lblprice3.Text + "','" + txtq3.Text + "','" + txtp3.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem4.Text + "','" + lblprice4.Text + "','" + txtq4.Text + "','" + txtp4.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem5.Text + "','" + lblprice5.Text + "','" + txtq5.Text + "','" + txtp5.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem6.Text + "','" + lblprice6.Text + "','" + txtq6.Text + "','" + txtp6.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem7.Text + "','" + lblprice7.Text + "','" + txtq7.Text + "','" + txtp7.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem8.Text + "','" + lblprice8.Text + "','" + txtq8.Text + "','" + txtp8.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem9.Text + "','" + lblprice9.Text + "','" + txtq9.Text + "','" + txtp9.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                data();
                query = "insert into orderdet(itemname,itemprice,quanti,totprice,sturegno,stuname,stuhis,adminhis)values('" + lblitem10.Text + "','" + lblprice10.Text + "','" + txtq10.Text + "','" + txtp10.Text + "','" + lblregno.Text + "','" + lblname.Text + "','yes','yes')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

            }
            Response.Redirect("orderfood.aspx");
        }
        else
        {
            lblerr.Visible = true;
        }
    }
}