<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showadmissions.aspx.cs" Inherits="admin_showadmissions" %>

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
    COURSE NAME:
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource1" DataTextField="coursename" DataValueField="id" CssClass="form-control">
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;
    <br /><br /><br />
    TYPE OF PAYMENT:
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
    DataTextField="typeofpayment" DataValueField="id" CssClass="form-control">
        <asp:ListItem>lumsum</asp:ListItem>
        <asp:ListItem>installments</asp:ListItem>
    </asp:DropDownList><br />
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FITNESS_CLUBConnectionString %>" 
        SelectCommand="SELECT [id], [coursename] FROM [tbl_course]">
    </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;
   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource3" AllowPaging="True" AllowSorting="True" 
        CssClass="table table-dark" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="name" 
                SortExpression="name" />
            <asp:BoundField DataField="coursename" HeaderText="coursename" 
                SortExpression="coursename" />
            <asp:BoundField DataField="duration" HeaderText="duration" 
                SortExpression="duration" />
            <asp:BoundField DataField="amounttobepaid" HeaderText="amounttobepaid" 
                SortExpression="amounttobepaid" />
            <asp:BoundField DataField="dateofadmission" HeaderText="dateofadmission" 
                SortExpression="dateofadmission" />
        </Columns>
        <EmptyDataTemplate>No Record Available</EmptyDataTemplate>  
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FITNESS_CLUBConnectionString %>" 
        
        
        SelectCommand="SELECT tbl_member.name,  tbl_course.coursename, tbl_course.duration, tbl_admission.amounttobepaid, tbl_admission.dateofadmission FROM tbl_admission INNER JOIN tbl_member ON tbl_admission.member_id = tbl_member.id INNER JOIN tbl_course ON tbl_admission.course_id = tbl_course.id WHERE (tbl_course.id = @par1) AND (tbl_admission.typeofpayment = @par2)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="par1" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="1" Name="par2" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    </div>
    </div>
    </div>
    </div></div>
     </div>
     </div>
</asp:Content>

