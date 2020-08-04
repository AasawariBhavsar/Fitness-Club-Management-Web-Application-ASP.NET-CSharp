<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addinstallments.aspx.cs" Inherits="admin_addinstallments" %>

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
                                    <div>ADD INSTALLMENT
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
            <td style="width: 283px">
                NAME</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 283px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 283px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 283px">
                COURSE NAME</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 283px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 283px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 283px">
                TOTAL PAYMENT</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
       
       
        <tr>
            <td style="width: 283px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
       
       
        <tr>
            <td style="width: 283px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
       
       
        <tr>
            <td style="width: 283px">
                PAYMENT DETAILS</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
       
       
        <tr>
            <td style="width: 283px">
                &nbsp;</td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="INVALID PAYMENT DETAILS" ControlToValidate="TextBox5" 
                    ValidationExpression="^[a-zA-Z]*$" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            <td>
                &nbsp;</td>
        </tr>
       
       
        <tr>
            <td style="width: 283px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
       
       
        <tr>
            <td style="width: 283px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
       
       
    </table>
    </div>
    <div class="card-footer">
     <asp:Button ID="Button1" runat="server" Text="EDIT" onclick="Button1_Click" CssClass="btn btn-primary form-control"/>
     <%--<asp:Button ID="Button2" runat="server" Text="GENERATE INVOICE"  
            CssClass="btn btn-primary form-control" onclick="Button2_Click"/>--%>
   <button onclick="myFunction()" id="print" runat="server" class="btn btn-primary form-control">GENERATE INVOICE</button>

<script type="text/javascript">
    function myFunction() {
        window.print();
    }
</script>

        </div>
        </div>
        </div>
        </div>
        </div>
        </div>
   </div>
   
</script>
</asp:Content>

