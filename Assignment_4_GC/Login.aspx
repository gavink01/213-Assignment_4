<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Assignment_4_GC.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 306px;
    }
    .auto-style2 {
        height: 182px;
    }
    .auto-style3 {
        height: 168px;
    }
    .auto-style4 {
        background-color: #99CCFF;
    }
    .auto-style5 {
        height: 168px;
        width: 113px;
    }
    .auto-style6 {
        height: 306px;
        width: 113px;
    }
    .auto-style7 {
        height: 182px;
        width: 113px;
    }
    .auto-style8 {
        height: 168px;
        width: 1025px;
    }
    .auto-style9 {
        height: 306px;
        width: 1025px;
    }
    .auto-style10 {
        height: 182px;
        width: 1025px;
    }
    .auto-style11 {
        width: 177px;
    }
    .auto-style12 {
        height: 24px;
    }
    .auto-style13 {
        height: 24px;
        width: 159px;
    }
    .auto-style15 {
        width: 146px;
    }
    .auto-style16 {
        width: 146px;
        height: 35px;
    }
    .auto-style17 {
        height: 35px;
    }
    .auto-style18 {
        width: 196px;
    }
    .auto-style19 {
        height: 35px;
        width: 196px;
    }
    .auto-style22 {
        width: 159px;
    }
    .auto-style23 {
        width: 110px;
    }
    .auto-style24 {
        width: 110px;
        height: 35px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <table class="auto-style4" style="width:100%;">
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style8">
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Welcome"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style13"></td>
                        <td class="auto-style12">&nbsp;</td>
                        <td class="auto-style12"></td>
                    </tr>
                    <tr>
                        <td class="auto-style22">&nbsp;</td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Please log in bellow"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style9">
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style15">
                            <asp:Label ID="Label3" runat="server" Text="UserName:"></asp:Label>
                        </td>
                        <td class="auto-style18">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter UserName" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style24">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style17"></td>
                    </tr>
                    <tr>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style15">
                            <asp:Label ID="Label5" runat="server" Text="Password:"></asp:Label>
                        </td>
                        <td class="auto-style18">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="EnterPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style15">&nbsp;</td>
                        <td class="auto-style18">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style15">&nbsp;</td>
                        <td class="auto-style18">
                            <asp:Button ID="LoginButton" runat="server" Text="Login" Width="179px" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style10"></td>
            <td class="auto-style2"></td>
        </tr>
    </table>
</p>
<br />
<br />
<br />
</asp:Content>
