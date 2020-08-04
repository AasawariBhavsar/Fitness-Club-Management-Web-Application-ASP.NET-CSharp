using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    db d = new db();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry = "select * from tbl_admin where username='"+TextBox1.Text+"' and password='"+TextBox2.Text+"'";

        if (d.compare(qry) == true)
        {
            Session["Name"] = TextBox1.Text;
            Response.Redirect("addcourse.aspx");
           
            
        }
        else 
        {
            string script = "<script type=\"text/javascript\">alert(\"Please check your username and password is correct or not!!!\")</script>";
            Response.Write(script);
            TextBox1.Text="";
            TextBox2.Text = "";
        }

    }
}