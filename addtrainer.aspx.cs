using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addtrainer : System.Web.UI.Page
{
    db d = new db();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string script = "<script type=\"text/javascript\">alert(\"Record inserted successfully!!!\")</script>";
        if (d.checkAvailablity("tbl_trainer", "name", TextBox1.Text))
        {
            Label1.Visible = true;
        }
        else
        {
            Label1.Visible = false;
            string id = d.latestId("tbl_trainer", "id");
            string qry = "insert into tbl_trainer values(" + id + ",'" + TextBox1.Text + "'," + TextBox3.Text + ",'" + TextBox4.Text + "',GETDATE(),'" + TextBox6.Text + "'," + TextBox7.Text + "," + DropDownList1.SelectedValue + ")";
           
            d.insertData(qry);
           
           
            Response.Write(script);
        }
        //Response.Write(qry);
        
      
    }
}