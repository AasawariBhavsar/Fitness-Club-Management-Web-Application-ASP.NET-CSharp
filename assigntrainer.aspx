<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="assigntrainer.aspx.cs" Inherits="assigntrainer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="app-main">
 <div class="app-main__outer">
   <div class="app-main__inner">
                          <div class="app-page-title">
                            <div class="page-title-wrapper">
                                <div class="page-title-heading">
                                    <div class="page-title-icon">
                                        <i class="pe-7s-car icon-gradient bg-mean-fruit">
                                        </i>
                                    </div>
                                    <div>ADD TRAINER-MEMBER
                                        <div class="page-title-subheading">
                                        </div>
                                    </div>
                                </div>
                                <div class="page-title-actions">
                                    <button type="button" data-toggle="tooltip" title="Example Tooltip" data-placement="bottom" class="btn-shadow mr-3 btn btn-dark">
                                        <i class="fa fa-star"></i>
                                    </button>
                                    <div class="d-inline-block dropdown">
                                        <button type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn-shadow dropdown-toggle btn btn-info">
                                            <span class="btn-icon-wrapper pr-2 opacity-7">
                                                <i class="fa fa-business-time fa-w-20"></i>
                                            </span>
                                            Buttons
                                        </button>
                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu dropdown-menu-right">
                                            <ul class="nav flex-column">
                                                <li class="nav-item">
                                                    <a href="javascript:void(0);" class="nav-link">
                                                        <i class="nav-link-icon lnr-inbox"></i>
                                                        <span>
                                                            Inbox
                                                        </span>
                                                        <div class="ml-auto badge badge-pill badge-secondary">86</div>
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="javascript:void(0);" class="nav-link">
                                                        <i class="nav-link-icon lnr-book"></i>
                                                        <span>
                                                            Book
                                                        </span>
                                                        <div class="ml-auto badge badge-pill badge-danger">5</div>
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="javascript:void(0);" class="nav-link">
                                                        <i class="nav-link-icon lnr-picture"></i>
                                                        <span>
                                                            Picture
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a disabled href="javascript:void(0);" class="nav-link disabled">
                                                        <i class="nav-link-icon lnr-file-empty"></i>
                                                        <span>
                                                            File Disabled
                                                        </span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>    </div>
                        </div> 
 <div class="row">
                        
                        <div class="col-md-10">                           
    <div class="card">
    <div class="card-body">
    <table style="width:100%;">
        <tr>
            <td style="width: 376px">
                MEMBER NAME</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="name" 
                    DataValueField="id" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" CssClass="form-control">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:FITNESS_CLUBConnectionString %>" 
                    SelectCommand="SELECT [id], [name] FROM [tbl_member]">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 376px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 376px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 376px">
                COURSE NAME</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="coursename" 
                    DataValueField="id" onselectedindexchanged="DropDownList2_SelectedIndexChanged" CssClass="form-control">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:FITNESS_CLUBConnectionString %>" 
                    
                    SelectCommand="SELECT tbl_course.id, tbl_course.coursename FROM tbl_course INNER JOIN tbl_admission ON tbl_course.id = tbl_admission.course_id where tbl_admission.member_id=@par">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="par" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 376px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 376px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 376px">
                SCHEDULE</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" CssClass="form-control">
                    <asp:ListItem>MORNING</asp:ListItem>
                    <asp:ListItem>EVENING</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 376px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 376px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 33px; width: 376px;">
                TRAINER NAME</td>
            <td style="height: 33px">
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource3" DataTextField="name" DataValueField="id" CssClass="form-control">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:FITNESS_CLUBConnectionString %>" 
                    
                    SelectCommand="SELECT [id], [name] FROM [tbl_trainer] WHERE (([course_id] = @course_id) AND ([schedule] = @schedule))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="course_id" 
                            PropertyName="SelectedValue" Type="Decimal" />
                        <asp:ControlParameter ControlID="DropDownList3" Name="schedule" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td style="height: 33px">
            </td>
        </tr>
        <tr>
            <td style="height: 31px; width: 376px;">
                </td>
            <td style="height: 31px">
                </td>
            <td style="height: 31px">
                </td>
        </tr>
       
        <tr>
            <td style="height: 31px; width: 376px;">
                &nbsp;</td>
            <td style="height: 31px">
                &nbsp;</td>
            <td style="height: 31px">
                &nbsp;</td>
        </tr>
       
    </table>
    </div>
    <div class="card-footer">
    <asp:Button ID="Button1" runat="server" Text="ADD" 
                    onclick="Button1_Click" CssClass="form-control btn btn-primary" />
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
</asp:Content>

