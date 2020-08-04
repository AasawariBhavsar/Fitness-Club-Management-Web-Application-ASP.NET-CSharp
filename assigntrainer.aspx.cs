using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class assigntrainer : System.Web.UI.Page
{
    db d = new db();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string script = "<script type=\"text/javascript\">alert(\"Record inserted successfully!!!\")</script>";
        string qry = "insert into tbl_memtrainer values(" + d.latestId("tbl_memtrainer","id") + ","+DropDownList1.SelectedValue+","+DropDownList2.SelectedValue+",'"+DropDownList3.SelectedValue+"',"+DropDownList4.SelectedValue+")";
        d.insertData(qry);
       
        Response.Write(script);

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
         
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}