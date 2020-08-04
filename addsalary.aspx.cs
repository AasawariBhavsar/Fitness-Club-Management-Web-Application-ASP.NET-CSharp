using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addsalary : System.Web.UI.Page
{
    string id,trainer_id;
    db d = new db();
    protected void Page_Load(object sender, EventArgs e)
    {

        id = Request.QueryString["id1"];
        string qry = "SELECT tbl_trainer.name,  tbl_course.coursename,tbl_trainer.schedule, tbl_salary.salary,tbl_salary.trainer_id FROM tbl_salary INNER JOIN tbl_trainer ON tbl_salary.trainer_id = tbl_trainer.id INNER JOIN tbl_course ON tbl_trainer.course_id = tbl_course.id where tbl_salary.id="+id;

        string[] detail = d.getSingleRow(qry).Split(':');
        trainer_id = detail[5];
        TextBox1.Text = detail[0];
      
        TextBox3.Text = detail[1];
        TextBox4.Text = detail[2];
        TextBox5.Text = detail[3];
       


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string qry2 = "update tbl_salary set paydate=GETDATE() where id=" + id;

        d.updateData(qry2);

       

        string script = "<script type=\"text/javascript\">alert(\"Updated successfully!!!\")</script>";
        Response.Write(script);


    }
}