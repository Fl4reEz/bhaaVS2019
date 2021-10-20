<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShowUsers.aspx.cs" Inherits="bahaa.ShowUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div><p style="height: 337px">
        <asp:Label ID="Label2" runat="server" Text="Hello everyone , welcome to the ShowUsers page , in this page we will include the users that have signed up to our site."></asp:Label>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:BoundField DataField="FName" HeaderText="First Name" />
                <asp:BoundField DataField="LName" HeaderText="Last Name" />
                <asp:CheckBoxField DataField="isAdmin" HeaderText="Admin?" />
                <asp:TemplateField HeaderText="delete">
                    <ItemTemplate>
                        <asp:LinkButton ID="lbdelete" runat="server" CommandArgument='<%# Bind("Username") %>' CommandName="Remove">delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        </p>
        </div>
</asp:Content>
