<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showcurrsalary.aspx.cs" Inherits="showcurrsalary" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="app-main">
 <div class="app-main__outer">
   <div class="app-main__inner">
             <div class="row">
                        
                      <div class="col-md-12">               
   <div class="card">
   <div class="card-body">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1" AllowPaging="True" 
        AllowSorting="True" CssClass="table table-dark" 
           onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="contactno" HeaderText="contactno" 
                SortExpression="contactno" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="doj" HeaderText="doj" SortExpression="doj" />
            <asp:BoundField DataField="schedule" HeaderText="schedule" 
                SortExpression="schedule" />
            <asp:BoundField DataField="salary" HeaderText="salary" 
                SortExpression="salary" />
            <asp:BoundField DataField="coursename" HeaderText="coursename" 
                SortExpression="coursename" />
            <asp:BoundField DataField="duration" HeaderText="duration" 
                SortExpression="duration" />
            <asp:BoundField DataField="paydate" HeaderText="paydate" 
                SortExpression="paydate" />
            <asp:BoundField DataField="paymentdetails" HeaderText="paymentdetails" 
                SortExpression="paymentdetails" />
        </Columns>
        <EmptyDataTemplate>No Record Available</EmptyDataTemplate> 
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FITNESS_CLUBConnectionString %>" 
        SelectCommand="SELECT tbl_trainer.id, tbl_trainer.name, tbl_trainer.contactno, tbl_trainer.address, tbl_trainer.doj, tbl_trainer.schedule, tbl_trainer.salary, tbl_course.coursename, tbl_course.duration, tbl_salary.paydate, tbl_salary.paymentdetails FROM tbl_course INNER JOIN tbl_trainer ON tbl_course.id = tbl_trainer.course_id INNER JOIN tbl_salary ON tbl_trainer.id = tbl_salary.trainer_id where tbl_salary.paydate=CONVERT(date,GETDATE())">
    </asp:SqlDataSource>
     </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
</asp:Content>

