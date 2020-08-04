<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showtrainer.aspx.cs" Inherits="showtrainer"  MaintainScrollPositionOnPostback="true"%>

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
    </asp:DropDownList><br />

    SCHEDULE:
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" CssClass="form-control">
        <asp:ListItem>MORNING</asp:ListItem>
        <asp:ListItem>EVENING</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FITNESS_CLUBConnectionString %>" 
        SelectCommand="SELECT [id], [coursename] FROM [tbl_course]">
    </asp:SqlDataSource>

        
    
    
    <br />
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource3" 
        AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="table table-dark">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="name" 
                SortExpression="name" />
            <asp:BoundField DataField="schedule" HeaderText="schedule" 
                SortExpression="schedule" />
            <asp:BoundField DataField="coursename" HeaderText="coursename" 
                SortExpression="coursename" />
            <asp:BoundField DataField="duration" HeaderText="duration" 
                SortExpression="duration" />
        </Columns>
        <EmptyDataTemplate>No Record Available</EmptyDataTemplate>  
                
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FITNESS_CLUBConnectionString %>" 
        
        SelectCommand="SELECT tbl_trainer.name, tbl_trainer.schedule, tbl_course.coursename, tbl_course.duration FROM tbl_course INNER JOIN tbl_trainer ON tbl_course.id = tbl_trainer.course_id where  tbl_trainer.course_id=@par1 and tbl_trainer.schedule=@par2">
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

