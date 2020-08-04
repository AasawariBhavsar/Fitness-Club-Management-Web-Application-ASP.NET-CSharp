<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showmem-trainer.aspx.cs" Inherits="showmem_trainer" %>

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
   NAME:
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id" CssClass="form-control">
    </asp:DropDownList>
    <br />

    COURSE NAME:
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource2" DataTextField="coursename" DataValueField="id" CssClass="form-control">
</asp:DropDownList>
<br />

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FITNESS_CLUBConnectionString %>" 
        SelectCommand="SELECT tbl_course.id, tbl_course.coursename FROM tbl_admission INNER JOIN tbl_course ON tbl_admission.course_id = tbl_course.id where tbl_admission.member_id=@par">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="par" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FITNESS_CLUBConnectionString %>" 
        SelectCommand="SELECT [id], [name] FROM [tbl_member]">
    </asp:SqlDataSource>

    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource3" AllowPaging="True" AllowSorting="True" CssClass="table table-dark" >
        <Columns>
            <asp:BoundField DataField="name" HeaderText="name" 
                SortExpression="name" />
            <asp:BoundField DataField="name1" HeaderText="name1" 
                SortExpression="name1" />
            <asp:BoundField DataField="coursename" HeaderText="coursename" 
                SortExpression="coursename" />
            <asp:BoundField DataField="schedule" HeaderText="schedule" 
                SortExpression="schedule" />
            <asp:BoundField DataField="duration" HeaderText="duration" 
                SortExpression="duration" />
        </Columns>
         <EmptyDataTemplate>No Record Available</EmptyDataTemplate> 
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FITNESS_CLUBConnectionString %>" 
        
        SelectCommand="SELECT tbl_member.name, tbl_trainer.name, tbl_course.coursename, tbl_memtrainer.schedule, tbl_course.duration FROM tbl_memtrainer INNER JOIN tbl_member ON tbl_memtrainer.member_id = tbl_member.id INNER JOIN tbl_course ON tbl_memtrainer.course_id = tbl_course.id INNER JOIN tbl_trainer ON tbl_memtrainer.trainer_id = tbl_trainer.id where tbl_memtrainer.member_id=@par1 and tbl_memtrainer.course_id=@par2">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="par1" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="1" Name="par2" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>

</asp:Content>

