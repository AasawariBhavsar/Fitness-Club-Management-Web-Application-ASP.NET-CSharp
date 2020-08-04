using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_addmember : System.Web.UI.Page
{
    db d = new db();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string script = "<script type=\"text/javascript\">alert(\"Record inserted successfully!!!\")</script>";
        if (d.checkAvailablity("tbl_member", "name", TextBox1.Text))
        {
            Label1.Visible = true;
        }
        else
        {
            Label1.Visible = false;
            String qry = "insert into tbl_member values(" + d.latestId("tbl_member", "id") + ",'" + TextBox1.Text + "'," + TextBox3.Text + ",'" + TextBox4.Text + "','" + TextBox5.Text + "')";
            d.insertData(qry);
            
            Response.Write(script);
        }

    }
}