<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showcurrinstallment.aspx.cs" Inherits="showcurrinstallment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="app-main">
 <div class="app-main__outer">
   <div class="app-main__inner">
             <div class="row">
                        
                        <div class="col-md-10">              
   <div class="card">
   <div class="card-body">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDataSource1" CssClass="table table-dark" 
           onselectedindexchanged="GridView1_SelectedIndexChanged" >
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="contactno" HeaderText="contactno" 
                SortExpression="contactno" />
            <asp:BoundField DataField="coursename" HeaderText="coursename" 
                SortExpression="coursename" />
            <asp:BoundField DataField="duration" HeaderText="duration" 
                SortExpression="duration" />
            <asp:BoundField DataField="paydate" HeaderText="paydate" 
                SortExpression="paydate" />
            <asp:BoundField DataField="paymentdetails" HeaderText="paymentdetails" 
                SortExpression="paymentdetails" NullDisplayText="NULL" />
            <asp:BoundField DataField="totalpayment" HeaderText="totalpayment" 
                SortExpression="totalpayment" />

        </Columns>
        <EmptyDataTemplate>No Record Available</EmptyDataTemplate>  
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FITNESS_CLUBConnectionString %>" 
        SelectCommand="SELECT tbl_installment.id, tbl_member.name, tbl_member.contactno, tbl_course.coursename, tbl_course.duration, tbl_installment.paydate, tbl_installment.paymentdetails, tbl_installment.totalpayment FROM tbl_admission INNER JOIN tbl_member ON tbl_admission.member_id = tbl_member.id INNER JOIN tbl_course ON tbl_admission.course_id = tbl_course.id INNER JOIN tbl_installment ON tbl_admission.id = tbl_installment.admission_id WHERE (tbl_installment.paid = 0) AND (tbl_installment.paydate=CONVERT(date,GETDATE()))">
    </asp:SqlDataSource>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
</asp:Content>

