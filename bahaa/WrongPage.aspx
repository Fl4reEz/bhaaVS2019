<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WrongPage.aspx.cs" Inherits="bahaa.WrongPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        You have to Log in to show this page.&nbsp; Sign up if you haven&#39;t already did :)</p>
    <p>
        &nbsp;</p>
    <asp:Menu ID="Menu3" runat="server">
        <Items>
            <asp:MenuItem NavigateUrl="~/LogIN.aspx" Text="Click here to Log In" Value="Log In here"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Sign up.aspx" Text="Click here to Sign Up" Value="or Sign Up"></asp:MenuItem>
        </Items>
    </asp:Menu>
    <br />
</asp:Content>
