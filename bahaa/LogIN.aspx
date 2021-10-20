<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LogIN.aspx.cs" Inherits="bahaa.LogIN" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 520px; width: 1829px;"> 
        &nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" style="text-align: justify" Text="Log In" Font-Bold="True" Font-Italic="False" Font-Names="Britannic Bold" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"></asp:Label>
       
        <br />
        <br />
&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Username:" Font-Names="Britannic Bold"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Password:" Font-Names="Britannic Bold"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Loginbtn" runat="server" OnClick="Loginbtn_Click" Text="Log In" Font-Italic="False" Font-Names="Britannic Bold" Font-Size="Large" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="loginmsg" runat="server" Font-Bold="True" Font-Names="Arial Rounded MT Bold" Font-Underline="False" ForeColor="Red"></asp:Label>
       
    </div>
</asp:Content>
