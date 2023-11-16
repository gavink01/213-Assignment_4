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
            width: 251px;
        }
        .auto-style34 {
            background-color: #99CCFF;
            width: 251px;
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
            width: 206px;
        }
        .auto-style40 {
            height: 76px;
            background-color: #99CCFF;
            width: 206px;
        }
        .auto-style41 {
            background-color: #99CCFF;
            width: 146px;
            height: 24px;
        }
        .auto-style42 {
            background-color: #99CCFF;
            width: 251px;
            height: 24px;
        }
        .auto-style44 {
            background-color: #99CCFF;
            width: 206px;
            height: 24px;
        }
        .auto-style45 {
            background-color: #99CCFF;
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
        .auto-style53 {
            width: 100%;
            height: 342px;
        }
        .auto-style60 {
            height: 76px;
            background-color: #99CCFF;
            width: 132px;
        }
        .auto-style61 {
            background-color: #99CCFF;
            width: 132px;
            height: 24px;
        }
        .auto-style63 {
            width: 132px;
            background-color: #99CCFF;
        }
        .auto-style64 {
            background-color: #99CCFF;
            width: 146px;
            height: 45px;
        }
        .auto-style65 {
            background-color: #99CCFF;
            width: 251px;
            height: 45px;
        }
        .auto-style66 {
            width: 132px;
            background-color: #99CCFF;
            height: 45px;
        }
        .auto-style67 {
            background-color: #99CCFF;
            width: 206px;
            height: 45px;
        }
        .auto-style69 {
            background-color: #99CCFF;
            width: 146px;
            height: 20px;
        }
        .auto-style70 {
            background-color: #99CCFF;
            width: 251px;
            height: 20px;
        }
        .auto-style71 {
            background-color: #99CCFF;
            width: 132px;
            height: 20px;
        }
        .auto-style72 {
            background-color: #99CCFF;
            width: 206px;
            height: 20px;
        }
        .auto-style73 {
            background-color: #99CCFF;
            height: 20px;
        }
        .auto-style74 {
            background-color: #99CCFF;
            height: 45px;
        }
        .auto-style89 {
            background-color: #99CCFF;
            width: 146px;
            height: 35px;
        }
        .auto-style90 {
            background-color: #99CCFF;
            width: 251px;
            height: 35px;
        }
        .auto-style91 {
            width: 132px;
            background-color: #99CCFF;
            height: 35px;
        }
        .auto-style92 {
            background-color: #99CCFF;
            width: 206px;
            height: 35px;
        }
        .auto-style93 {
            background-color: #99CCFF;
            height: 35px;
        }
        .auto-style94 {
            background-color: #99CCFF;
            width: 146px;
            height: 40px;
        }
        .auto-style95 {
            background-color: #99CCFF;
            width: 251px;
            height: 40px;
        }
        .auto-style96 {
            width: 132px;
            background-color: #99CCFF;
            height: 40px;
        }
        .auto-style97 {
            background-color: #99CCFF;
            width: 206px;
            height: 40px;
        }
        .auto-style98 {
            background-color: #99CCFF;
            height: 40px;
        }
        .auto-style99 {
            background-color: #99CCFF;
            width: 146px;
            height: 37px;
        }
        .auto-style100 {
            background-color: #99CCFF;
            width: 251px;
            height: 37px;
        }
        .auto-style101 {
            width: 132px;
            background-color: #99CCFF;
            height: 37px;
        }
        .auto-style102 {
            background-color: #99CCFF;
            width: 206px;
            height: 37px;
        }
        .auto-style103 {
            background-color: #99CCFF;
            height: 37px;
        }
        .auto-style104 {
            background-color: #99CCFF;
            width: 146px;
            height: 3px;
        }
        .auto-style105 {
            background-color: #99CCFF;
            width: 251px;
            height: 3px;
        }
        .auto-style106 {
            background-color: #99CCFF;
            width: 132px;
            height: 3px;
        }
        .auto-style107 {
            background-color: #99CCFF;
            width: 206px;
            height: 3px;
        }
        .auto-style108 {
            background-color: #99CCFF;
            height: 3px;
        }
        .auto-style109 {
            background-color: #99CCFF;
            width: 146px;
            height: 34px;
        }
        .auto-style110 {
            background-color: #99CCFF;
            width: 251px;
            height: 34px;
        }
        .auto-style111 {
            width: 132px;
            background-color: #99CCFF;
            height: 34px;
        }
        .auto-style112 {
            background-color: #99CCFF;
            width: 206px;
            height: 34px;
        }
        .auto-style113 {
            background-color: #99CCFF;
            height: 34px;
        }
        .auto-style114 {
            background-color: #99CCFF;
            width: 146px;
            height: 12px;
        }
        .auto-style115 {
            background-color: #99CCFF;
            width: 251px;
            height: 12px;
        }
        .auto-style116 {
            background-color: #99CCFF;
            width: 132px;
            height: 12px;
        }
        .auto-style117 {
            background-color: #99CCFF;
            width: 206px;
            height: 12px;
        }
        .auto-style118 {
            background-color: #99CCFF;
            height: 12px;
        }
        .auto-style119 {
            background-color: #99CCFF;
            width: 146px;
            height: 10px;
        }
        .auto-style120 {
            background-color: #99CCFF;
            width: 251px;
            height: 10px;
        }
        .auto-style121 {
            background-color: #99CCFF;
            width: 132px;
            height: 10px;
        }
        .auto-style122 {
            background-color: #99CCFF;
            width: 206px;
            height: 10px;
        }
        .auto-style123 {
            background-color: #99CCFF;
            height: 10px;
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
            <td class="auto-style12">
                <asp:LoginStatus ID="LoginStatus1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style2">
        <tr>
            <td class="auto-style8"></td>
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
        <table class="auto-style53">
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style63">&nbsp;</td>
                <td class="auto-style39">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style36"></td>
                <td class="auto-style33">
                    <asp:Label ID="Label12" runat="server" Font-Size="X-Large" Text="Delete a User"></asp:Label>
                </td>
                <td class="auto-style60"></td>
                <td class="auto-style40">
                    <asp:Label ID="Label13" runat="server" Font-Size="Large" Text="Assign a Member to a section"></asp:Label>
                </td>
                <td class="auto-style31"></td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style63">&nbsp;</td>
                <td class="auto-style39">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style34">
                    <asp:RadioButtonList ID="DeleteRadioButtonList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DeleteRadioButtonList_SelectedIndexChanged">
                        <asp:ListItem Selected="True">Member</asp:ListItem>
                        <asp:ListItem>Instructor</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style63">&nbsp;</td>
                <td class="auto-style39">
                    <asp:Label ID="Label14" runat="server" Text="Members:"></asp:Label>
                </td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style34">
                    <asp:DropDownList ID="DeleteDropDownList" runat="server" OnSelectedIndexChanged="DeleteDropDownList_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td class="auto-style63">&nbsp;</td>
                <td class="auto-style39">
                    <asp:DropDownList ID="MemberAssignDropDownList" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style63">&nbsp;</td>
                <td class="auto-style39">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style41"></td>
                <td class="auto-style42"></td>
                <td class="auto-style61"></td>
                <td class="auto-style44">
                    <asp:Label ID="Label15" runat="server" Text="Instructor"></asp:Label>
                </td>
                <td class="auto-style45"></td>
            </tr>
            <tr>
                <td class="auto-style64"></td>
                <td class="auto-style65">
                    <asp:Button ID="DeleteBtn" runat="server" CausesValidation="False" OnClick="DeleteBtn_Click" Text="Delete" Width="137px" />
                </td>
                <td class="auto-style66"></td>
                <td class="auto-style67">
                    <asp:DropDownList ID="InstructorAssignDropDownList" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style74">
                    <asp:Button ID="AssignBtn" runat="server" Text="Assign" Width="137px" OnClick="AssignBtn_Click" ValidationGroup="AssignGroup" />
                </td>
            </tr>
            <tr>
                <td class="auto-style69"></td>
                <td class="auto-style70">
                    <asp:Label ID="SuccessLabel" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style71">
                </td>
                <td class="auto-style72"></td>
                <td class="auto-style73"></td>
            </tr>
            <tr>
                <td class="auto-style99"></td>
                <td class="auto-style100">
                </td>
                <td class="auto-style101">
                </td>
                <td class="auto-style102">
                    <asp:Label ID="Label11" runat="server" Text="Section Name:"></asp:Label>
                </td>
                <td class="auto-style103"></td>
            </tr>
            <tr>
                <td class="auto-style94"></td>
                <td class="auto-style95">
                </td>
                <td class="auto-style96">
                </td>
                <td class="auto-style97">
                    <asp:RadioButtonList ID="SectionNameRadioButtonList" runat="server">
                        <asp:ListItem>Karate Age-Uke</asp:ListItem>
                        <asp:ListItem>Karate Chudan-Uke</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style98">
                            <asp:RequiredFieldValidator ID="DateRequiredField1" runat="server" ControlToValidate="SectionNameRadioButtonList" ErrorMessage="Select Section Name" ForeColor="Red" ValidationGroup="AssignGroup"></asp:RequiredFieldValidator>
                        </td>
            </tr>
            <tr>
                <td class="auto-style35"></td>
                <td class="auto-style34">
                </td>
                <td class="auto-style63">
                </td>
                <td class="auto-style39"></td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style104"></td>
                <td class="auto-style105">
                </td>
                <td class="auto-style106">
                </td>
                <td class="auto-style107">
                    <asp:Label ID="Label20" runat="server" Text="Section Start Date:"></asp:Label>
                </td>
                <td class="auto-style108"></td>
            </tr>
            <tr>
                <td class="auto-style109"></td>
                <td class="auto-style110">
                </td>
                <td class="auto-style111">
                </td>
                <td class="auto-style112">
                    <asp:TextBox ID="SectionDateTextBox" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style113">
                            <asp:RequiredFieldValidator ID="DateRequiredField0" runat="server" ControlToValidate="SectionDateTextBox" ErrorMessage="Enter Start Date" ForeColor="Red" ValidationGroup="AssignGroup"></asp:RequiredFieldValidator>
                        </td>
            </tr>
            <tr>
                <td class="auto-style119"></td>
                <td class="auto-style120">
                </td>
                <td class="auto-style121">
                </td>
                <td class="auto-style122"></td>
                <td class="auto-style123"></td>
            </tr>
            <tr>
                <td class="auto-style114"></td>
                <td class="auto-style115">
                </td>
                <td class="auto-style116">
                </td>
                <td class="auto-style117">
                    <asp:Label ID="Label21" runat="server" Text="Section Fee:"></asp:Label>
                </td>
                <td class="auto-style118"></td>
            </tr>
            <tr>
                <td class="auto-style89"></td>
                <td class="auto-style90">
                </td>
                <td class="auto-style91">
                </td>
                <td class="auto-style92">
                    <asp:TextBox ID="SectionFeeTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style93">
                            <asp:RequiredFieldValidator ID="DateRequiredField2" runat="server" ControlToValidate="SectionFeeTextBox" ErrorMessage="Enter Section Fee" ForeColor="Red" ValidationGroup="AssignGroup"></asp:RequiredFieldValidator>
                        </td>
            </tr>
            <tr>
                <td class="auto-style89">&nbsp;</td>
                <td class="auto-style90">
                    &nbsp;</td>
                <td class="auto-style91">
                    &nbsp;</td>
                <td class="auto-style92">&nbsp;</td>
                <td class="auto-style93">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style89">&nbsp;</td>
                <td class="auto-style90">
                    &nbsp;</td>
                <td class="auto-style91">
                    &nbsp;</td>
                <td class="auto-style92">&nbsp;</td>
                <td class="auto-style93">
                    <asp:Label ID="AssignErrorLabel" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
