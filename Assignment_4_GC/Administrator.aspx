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
        .auto-style17 {
            background-color: #99CCFF;
            width: 394px;
        }
        .auto-style19 {
            background-color: #99CCFF;
            width: 129px;
            height: 47px;
        }
        .auto-style20 {
            background-color: #99CCFF;
            height: 47px;
        }
        .auto-style21 {
            background-color: #99CCFF;
            height: 47px;
            width: 245px;
        }
        .auto-style23 {
            background-color: #99CCFF;
            width: 129px;
            height: 52px;
        }
        .auto-style24 {
            background-color: #99CCFF;
            height: 52px;
            width: 245px;
        }
        .auto-style25 {
            background-color: #99CCFF;
            height: 52px;
        }
        .auto-style26 {
            background-color: #99CCFF;
            width: 129px;
            height: 48px;
        }
        .auto-style27 {
            background-color: #99CCFF;
            height: 48px;
            width: 245px;
        }
        .auto-style28 {
            background-color: #99CCFF;
            height: 48px;
        }
        .auto-style29 {
            background-color: #99CCFF;
            width: 129px;
            height: 53px;
        }
        .auto-style30 {
            background-color: #99CCFF;
            height: 53px;
            width: 245px;
        }
        .auto-style31 {
            height: 76px;
            background-color: #99CCFF;
        }
        .auto-style33 {
            height: 76px;
            background-color: #99CCFF;
            width: 311px;
        }
        .auto-style34 {
            background-color: #99CCFF;
            width: 311px;
        }
        .auto-style35 {
            background-color: #99CCFF;
            width: 146px;
        }
        .auto-style36 {
            height: 76px;
            background-color: #99CCFF;
            width: 146px;
        }
        .auto-style39 {
            background-color: #99CCFF;
            width: 293px;
        }
        .auto-style40 {
            height: 76px;
            background-color: #99CCFF;
            width: 293px;
        }
        .auto-style41 {
            background-color: #99CCFF;
            width: 146px;
            height: 24px;
        }
        .auto-style42 {
            background-color: #99CCFF;
            width: 311px;
            height: 24px;
        }
        .auto-style44 {
            background-color: #99CCFF;
            width: 293px;
            height: 24px;
        }
        .auto-style45 {
            background-color: #99CCFF;
            height: 24px;
        }
        .auto-style46 {
            background-color: #99CCFF;
            width: 196px;
        }
        .auto-style47 {
            height: 76px;
            background-color: #99CCFF;
            width: 196px;
        }
        .auto-style48 {
            background-color: #99CCFF;
            width: 196px;
            height: 24px;
        }
        .auto-style49 {
            background-color: #99CCFF;
            height: 47px;
            width: 279px;
        }
        .auto-style50 {
            background-color: #99CCFF;
            height: 52px;
            width: 279px;
        }
        .auto-style51 {
            background-color: #99CCFF;
            height: 48px;
            width: 279px;
        }
        .auto-style52 {
            height: 53px;
            background-color: #99CCFF;
            width: 279px;
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
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="817px">
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
                <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="818px">
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
                <td class="auto-style17">
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Add an Instructor or Member:"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                        <asp:ListItem Selected="True">Member</asp:ListItem>
                        <asp:ListItem>Instructor</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style19">
                    <asp:Label ID="Label5" runat="server" Text="User Name:"></asp:Label>
                </td>
                <td class="auto-style21">
                    <asp:TextBox ID="UserNameTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style49">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserNameTextBox" ErrorMessage="Enter UserName" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23"></td>
                <td class="auto-style23">
                    <asp:Label ID="Label6" runat="server" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style24">
                    <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style50">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                <td class="auto-style25"></td>
            </tr>
            <tr>
                <td class="auto-style26"></td>
                <td class="auto-style26">
                    <asp:Label ID="Label7" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style51">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FirstNameTextBox" ErrorMessage="Enter First Name" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                <td class="auto-style28">
                    <asp:Label ID="ErrorLabel" runat="server" Text="Error Message"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style29"></td>
                <td class="auto-style29">
                    <asp:Label ID="Label8" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style30">
                    <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style52">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="LastNameTextBox" ErrorMessage="Enter Last Name" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29"></td>
                <td class="auto-style29">
                    <asp:Label ID="Label9" runat="server" Text="Phone Number:"></asp:Label>
                </td>
                <td class="auto-style30">
                    <asp:TextBox ID="PhoneTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style52">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="PhoneTextBox" ErrorMessage="Enter Phone Number" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style29">
                    <asp:Label ID="DateJoinedLabel" runat="server" Text="Date Joined:"></asp:Label>
                </td>
                <td class="auto-style30">
                    <asp:TextBox ID="DateJoinedTextBox" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style52">
                            <asp:RequiredFieldValidator ID="DateRequiredField" runat="server" ControlToValidate="DateJoinedTextBox" ErrorMessage="Enter Date Joined" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style29">
                    <asp:Label ID="EmailLabel" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style30">
                    <asp:TextBox ID="EmailTextBox" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style52">
                            <asp:RequiredFieldValidator ID="EmailRequiredField" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                <td class="auto-style9">
                    <asp:Button ID="AddBtn" runat="server" OnClick="AddBtn_Click" Text="Add User" Width="137px" />
                </td>
            </tr>
        </table>
        <table class="w-100">
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style39">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style36"></td>
                <td class="auto-style33">
                    <asp:Label ID="Label12" runat="server" Font-Size="X-Large" Text="Delete a User"></asp:Label>
                </td>
                <td class="auto-style47"></td>
                <td class="auto-style40">
                    <asp:Label ID="Label13" runat="server" Font-Size="Large" Text="Assign a Member to a section"></asp:Label>
                </td>
                <td class="auto-style31"></td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style39">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style34">
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                        <asp:ListItem Selected="True">Member</asp:ListItem>
                        <asp:ListItem>Instructor</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style39">
                    <asp:Label ID="Label14" runat="server" Text="Members:"></asp:Label>
                </td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style34">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style39">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style39">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style41"></td>
                <td class="auto-style42"></td>
                <td class="auto-style48"></td>
                <td class="auto-style44">
                    <asp:Label ID="Label15" runat="server" Text="Session Name:"></asp:Label>
                </td>
                <td class="auto-style45"></td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style34">
                    <asp:Button ID="DeleteBtn" runat="server" Text="Delete" Width="137px" />
                </td>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style39">
                    <asp:DropDownList ID="DropDownList3" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style15">
                    <asp:Button ID="AssignBtn" runat="server" Text="Assign" Width="137px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style39">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
