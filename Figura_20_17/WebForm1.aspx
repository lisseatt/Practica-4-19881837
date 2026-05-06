<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Figura_20_17.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Product"></asp:Label>
        <asp:SqlDataSource 
    ID="srcProduct" 
    runat="server"
    ConnectionString="<%$ ConnectionStrings:SportsPlay %>"
    SelectCommand="
        SELECT ProductID, Product
        FROM Product
        ORDER BY Product">
</asp:SqlDataSource>
       <asp:ListBox 
    ID="lstProduct" 
    runat="server"
    DataSourceID="srcProduct"
    DataTextField="Product"
    DataValueField="ProductID">
</asp:ListBox>
    </form>
</body>
</html>
