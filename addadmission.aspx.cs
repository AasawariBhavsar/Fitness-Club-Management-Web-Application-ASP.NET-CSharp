using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class admin_addadmission : System.Web.UI.Page
{

    db d = new db();
    string qry, qry2, qry3, qry4;
    string[] fees;
    string[] install_fees;
    string[] check;
    string strinstall, memid, couid;
    int noofinstall;

    protected void Page_Load(object sender, EventArgs e)
    {
        qry4 = "select member_id,course_id from tbl_admission where member_id=" + DropDownList1.SelectedValue + " and course_id=" + DropDownList2.SelectedValue + "";
      


            qry = "select fees_lumsum,fees_installments,no_of_installments,days_in_btw,installment_struct from tbl_course where id=" + DropDownList2.SelectedValue;

            fees = d.getSingleRow(qry).Split(':');
            print.Visible = false;


            if (DropDownList3.SelectedValue == "lumsum")
            {
                TextBox1.Text = fees[0];
                TextBox2.Text = fees[0];

            }
            else if (DropDownList3.SelectedValue == "installments")
            {

                TextBox1.Text = fees[1];

                install_fees = fees[4].Split(',');
                TextBox2.Text = install_fees[0];




            }
        }
    




    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        qry4 = "select member_id,course_id from tbl_admission where member_id=" + DropDownList1.SelectedValue + " and course_id=" + DropDownList2.SelectedValue + "";
        if (d.compare(qry4))
        {
            Label1.Visible = true;
        }
        else
        {
            Label1.Visible = false;
            fees = d.getSingleRow(qry).Split(':');


            if (DropDownList3.SelectedValue == "lumsum")
            {
                TextBox1.Text = fees[0];
                TextBox2.Text = fees[0];

            }
            else if (DropDownList3.SelectedValue == "installments")
            {

                TextBox1.Text = fees[1];

                install_fees = fees[4].Split(',');
                TextBox2.Text = install_fees[0];




            }
        }

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        double daysinbtw = Convert.ToDouble(fees[3]);
        string script = "<script type=\"text/javascript\">alert(\"Record inserted successfully!!!\")</script>";
        noofinstall = Convert.ToInt32(fees[2]);
        int admissionid = Convert.ToInt32(d.latestId("tbl_admission", "id"));
        string qry = "insert into tbl_admission values(" + admissionid + "," + DropDownList1.SelectedValue + "," + DropDownList2.SelectedValue + ",'" + DropDownList3.SelectedValue + "'," + TextBox1.Text + ",GETDATE())";
        d.insertData(qry);
        Response.Write(script);
         qry4 = "select member_id,course_id from tbl_admission where member_id=" + DropDownList1.SelectedValue + " and course_id=" + DropDownList2.SelectedValue + "";
        
        if (DropDownList3.SelectedValue == "lumsum")
        {
            qry2 = "insert into tbl_installment values(" + d.latestId("tbl_installment", "id") + "," + admissionid + ",GETDATE(),'" + TextBox3.Text + "'," + TextBox2.Text + ",1)";
            d.insertData(qry2);
            Response.Write(script);
        }
        else if (DropDownList3.SelectedValue == "installments")
        {
            for (int i = 0; i < noofinstall; i++)
            {
                if (i == 0)
                {
                    qry3 = "insert into tbl_installment values(" + d.latestId("tbl_installment", "id") + "," + admissionid + ",GETDATE(),'" + TextBox3.Text + "'," + TextBox2.Text + ",1)";
                    d.insertData(qry3);
                    Response.Write(script);
                }
                else if (i > 0)
                {
                    qry3 = "insert into tbl_installment values(" + d.latestId("tbl_installment", "id") + "," + admissionid + ",DATEADD(day," + daysinbtw + ",GETDATE()),null," + TextBox2.Text + ",0)";
                    d.insertData(qry3);
                    Response.Write(script);
                }
            }
        }

        print.Visible = true;


    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        qry = "select fees_lumsum,fees_installments,no_of_installments,days_in_btw,installment_struct from tbl_course where id=" + DropDownList2.SelectedValue;
        fees = d.getSingleRow(qry).Split(':');

        if (DropDownList3.SelectedValue == "lumsum")
        {

            TextBox1.Text = fees[0];
            TextBox2.Text = fees[0];
        }
        else if (DropDownList3.SelectedValue == "installments")
        {

            int admissionid = Convert.ToInt32(d.latestId("tbl_admission", "id"));
            TextBox1.Text = fees[1];
            //Label1.Text = "<table border=1><tr><th>NO</th><th>AMOUNT</th><th>DATE</th></tr>";

            //for (int i = 0; i < noofinstall; i++)
            //{
            //    Label1.Text = "<tr><td>" + (i + 1) + "</td><td>" + install_fees[0]+"</td><td>"+DateTime.Now.ToLongDateString()+"</td></tr>";


            //}
            //Label1.Text = "</table>";
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        qry4 = "select member_id,course_id from tbl_admission where member_id=" + DropDownList1.SelectedValue + " and course_id=" + DropDownList2.SelectedValue + "";
        if (d.compare(qry4))
        {
            Label1.Visible = true;
        }
        else
        {
            Label1.Visible = false;

        }

    }
}

