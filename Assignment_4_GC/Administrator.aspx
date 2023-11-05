<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Administrator.aspx.cs" Inherits="Assignment_4_GC.Administrator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height: 245px;
        }
        .auto-style4 {
            width: 195px;
            height: 162px;
            background-color: #99CCFF;
        }
        .auto-style5 {
            height: 162px;
            background-color: #99CCFF;
        }
        .auto-style6 {
            width: 195px;
            height: 206px;
            background-color: #99CCFF;
        }
        .auto-style7 {
            height: 206px;
            background-color: #99CCFF;
        }
        .auto-style8 {
            width: 195px;
            height: 53px;
            background-color: #99CCFF;
        }
        .auto-style9 {
            height: 53px;
            background-color: #99CCFF;
        }
        .auto-style10 {
            width: 195px;
            height: 59px;
            background-color: #99CCFF;
        }
        .auto-style11 {
            height: 59px;
            background-color: #99CCFF;
        }
        .auto-style12 {
            background-color: #66CCFF;
        }
        .auto-style13 {
            width: 223px;
            background-color: #66CCFF;
        }
        .auto-style14 {
            width: 777px;
            background-color: #66CCFF;
        }
        .auto-style15 {
            background-color: #99CCFF;
        }
        .auto-style16 {
            width: 136px;
            background-color: #99CCFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">
                <asp:Label ID="Label3" runat="server" Font-Size="XX-Large" Text="Administrator Page"></asp:Label>
            </td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style2">
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">
                <asp:Label ID="Label1" runat="server" Text="Member's Information"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11">
                <asp:Label ID="Label2" runat="server" Text="Instructor List"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7">
                <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
        </tr>
    </table>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style15">
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
