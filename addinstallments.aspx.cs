using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Data;
using System.IO;
using System.Text;

public partial class admin_addinstallments : System.Web.UI.Page
{
    string id;
    string[] detail;
    string paydetail;
    private static int counter = 0;
    db d = new db();
     
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            id = Request.QueryString["id1"];

            string qry = "SELECT tbl_member.name, tbl_course.coursename, tbl_installment.totalpayment,tbl_course.duration FROM tbl_admission INNER JOIN tbl_member ON tbl_admission.member_id = tbl_member.id INNER JOIN tbl_course ON tbl_admission.course_id = tbl_course.id INNER JOIN tbl_installment ON tbl_admission.id = tbl_installment.admission_id where tbl_installment.paid = 0  and tbl_installment.id=" + id;

            detail = d.getSingleRow(qry).Split(':');

            TextBox1.Text = detail[0];
            TextBox3.Text = detail[1];
            TextBox4.Text = detail[2];
            print.Visible = false;

        }


        else 
        {


        }

       


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (IsPostBack == true)
        {
            id = Request.QueryString["id1"];

            string qry = "SELECT tbl_member.name, tbl_course.coursename, tbl_installment.totalpayment,tbl_course.duration FROM tbl_admission INNER JOIN tbl_member ON tbl_admission.member_id = tbl_member.id INNER JOIN tbl_course ON tbl_admission.course_id = tbl_course.id INNER JOIN tbl_installment ON tbl_admission.id = tbl_installment.admission_id where tbl_installment.paid = 0  and tbl_installment.id=" + id;

            detail = d.getSingleRow(qry).Split(':');

            TextBox1.Text = detail[0];

            TextBox3.Text = detail[1];
            TextBox4.Text = detail[2];
            string qry2 = "update tbl_installment set paydate=GETDATE(),paymentdetails='" + TextBox5.Text + "',paid=1 where id=" + id;

            d.updateData(qry2);
            string script = "<script type=\"text/javascript\">alert(\"Updated successfully!!!\")</script>";
            Response.Write(script);
            
            print.Visible = true;

        }
        else
        {

        }
    }





   
}
    

    
