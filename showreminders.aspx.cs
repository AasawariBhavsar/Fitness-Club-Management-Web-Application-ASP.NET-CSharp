﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class showreminders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Attributes["min"] = DateTime.Now.ToString("yyyy-MM-dd");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("addinstallments.aspx?id1=" +GridView1.SelectedRow.Cells[1].Text);  
    }
   
}