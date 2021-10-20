<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sign up.aspx.cs" Inherits="bahaa.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 31px;
        }
        .auto-style4 {
            height: 16px;
        }
    .auto-style5 {
        height: 26px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="2">Sign up</td>
        </tr>
        <tr>
            <td class="auto-style2">First name</td>
            <td class="auto-style2">
                <asp:TextBox ID="FName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Last name</td>
            <td class="auto-style5">
                <asp:TextBox ID="LName" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Email" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="Password" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="repassword" ControlToValidate="Password" ErrorMessage="The password isn't valid" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>re-enter password</td>
            <td>
                <asp:TextBox ID="repassword" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Username</td>
            <td>
                <asp:TextBox ID="Username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Username" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Gender</td>
            <td class="auto-style3">
                <asp:RadioButtonList ID="GenderList" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>I prefer not to say</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="GenderList" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Birthday</td>
            <td>
                <asp:DropDownList ID="DayDDL" runat="server" OnSelectedIndexChanged="DayDDL_SelectedIndexChanged1">
                </asp:DropDownList>
                <asp:DropDownList ID="MonthDDL" runat="server">
                    <asp:ListItem>Jan</asp:ListItem>
                    <asp:ListItem>Feb</asp:ListItem>
                    <asp:ListItem>Mar</asp:ListItem>
                    <asp:ListItem>Apr</asp:ListItem>
                    <asp:ListItem>May</asp:ListItem>
                    <asp:ListItem>Jun</asp:ListItem>
                    <asp:ListItem>Jul</asp:ListItem>
                    <asp:ListItem>Aug</asp:ListItem>
                    <asp:ListItem>Sep</asp:ListItem>
                    <asp:ListItem>Oct</asp:ListItem>
                    <asp:ListItem>Nov</asp:ListItem>
                    <asp:ListItem>Dec</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="YearDDL" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DayDDL" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="MonthDDL" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="YearDDL" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Region</td>
            <td class="auto-style4">
                <asp:DropDownList ID="Region" runat="server">
                    <asp:ListItem Value="1">Germany</asp:ListItem>
                    <asp:ListItem Value="2">Russia</asp:ListItem>
                    <asp:ListItem Value="3">Italy</asp:ListItem>
                    <asp:ListItem Value="4">England</asp:ListItem>
                    <asp:ListItem Value="5">USA</asp:ListItem>
                    <asp:ListItem Value="6">Spain</asp:ListItem>
                    <asp:ListItem Value="7">Israel</asp:ListItem>
                    <asp:ListItem Value="8">France</asp:ListItem>
                    <asp:ListItem Value="9">Portugal</asp:ListItem>
                    <asp:ListItem Value="10">Croatia</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Region" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" Text="Sign up" OnClick="Button1_Click1" />
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style2"></td>
        </tr>
    </table>
</asp:Content>
