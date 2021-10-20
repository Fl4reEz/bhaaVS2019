<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sheeesh Pics.aspx.cs" Inherits="bahaa.Sheeesh_Pics" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            <asp:Image ID="Image1" runat="server" Height="174px" Visible="False" Width="175px" />
        </p>
&nbsp;&nbsp;
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="59px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="46px">
            <asp:ListItem Value="Sheesh1.jpg">Sheesh1</asp:ListItem>
            <asp:ListItem Value="Sheesh2.jpg">Sheesh2</asp:ListItem>
            <asp:ListItem Value="Sheesh3.jpg">Sheesh3</asp:ListItem>
        </asp:DropDownList>
    </form>
</body>
</html>
