<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Logon.aspx.cs" Inherits="Assignment_4_GC.Login" %>
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
        width: 294px;
    }
    .auto-style6 {
        height: 306px;
        width: 294px;
    }
    .auto-style7 {
        height: 182px;
        width: 294px;
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
    .auto-style12 {
        height: 24px;
    }
    .auto-style13 {
        height: 24px;
        width: 100px;
    }
    .auto-style23 {
        width: 110px;
    }
    .auto-style24 {
        width: 110px;
        height: 68px;
    }
    .auto-style25 {
        width: 110px;
        height: 91px;
    }
    .auto-style26 {
        width: 100px;
    }
    .auto-style27 {
        width: 109px;
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
                        <td class="auto-style27">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style27">&nbsp;</td>
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
                        <td class="auto-style26">&nbsp;</td>
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
                        <td class="auto-style25"></td>
                    </tr>
                    <tr>
                        <td class="auto-style24">&nbsp;&nbsp;
                <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate">
                </asp:Login>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style23">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <asp:Label ID="ErrorLabel" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style2"></td>
        </tr>
    </table>
</p>
</asp:Content>
