using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_addcourse : System.Web.UI.Page
{
    db d = new db();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else 
        {
            //string script = "<script type=\"text/javascript\">alert(\"You are logged in successfully!!!\")</script>";
            //Response.Write(script);
 
        }

        TextBox6.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string script = "<script type=\"text/javascript\">alert(\"Record inserted successfully!!!\")</script>";
        if (d.checkAvailablity("tbl_course","coursename",TextBox7.Text))
        {
            Label1.Visible = true;
        }
        else
        {
            Label1.Visible = false;
            string qry = "insert into tbl_course values(" + d.latestId("tbl_course", "id") + ",'" + TextBox7.Text + "'," + TextBox2.Text + "," + TextBox3.Text + "," + TextBox1.Text + "," + TextBox4.Text + "," + TextBox5.Text + ",'" + TextBox6.Text + "')";
            d.insertData(qry);
            
            Response.Write(script);
           
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int fee_install = Convert.ToInt32(TextBox1.Text);
        int no_of_install = Convert.ToInt32(TextBox4.Text);

        int amtinstall = fee_install / no_of_install;

        for (int i = 0; i < no_of_install; i++) 
        {
            if (i > 0)
            {
                TextBox6.Text += "," + amtinstall;
            }
            else if (i == 0) 
            {
                TextBox6.Text += amtinstall;
            }
                
            
        }
        
    }
}