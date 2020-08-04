<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addsalary.aspx.cs" Inherits="addsalary" %>

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
    <table style="width:100%;">
        <tr>
            <td style="width: 208px">
                NAME</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 208px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 208px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 31px; width: 208px;">
                COURSE NAME</td>
            <td style="height: 31px">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td style="height: 31px">
            </td>
        </tr>
        <tr>
            <td style="height: 31px; width: 208px;">
                &nbsp;</td>
            <td style="height: 31px">
                &nbsp;</td>
            <td style="height: 31px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 31px; width: 208px;">
                &nbsp;</td>
            <td style="height: 31px">
                &nbsp;</td>
            <td style="height: 31px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 31px; width: 208px;">
                SCHEDULE</td>
            <td style="height: 31px">
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td style="height: 31px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 31px; width: 208px;">
                &nbsp;</td>
            <td style="height: 31px">
                &nbsp;</td>
            <td style="height: 31px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 31px; width: 208px;">
                &nbsp;</td>
            <td style="height: 31px">
                &nbsp;</td>
            <td style="height: 31px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 31px; width: 208px;">
                SALARY</td>
            <td style="height: 31px">
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td style="height: 31px">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td style="height: 31px; width: 208px;">
               
            </td>
            <td style="height: 31px">
                &nbsp;</td>
            <td style="height: 31px">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td style="height: 31px; width: 208px;">
               
                &nbsp;</td>
            <td style="height: 31px">
                &nbsp;</td>
            <td style="height: 31px">
                &nbsp;</td>
        </tr>
    </table>
    </div>
    <div class="card-footer">
     <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Edit " CssClass="form-control btn btn-primary" />
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
</asp:Content>

