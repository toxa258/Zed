<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sales.aspx.cs" Inherits="Shop.Sales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="187px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="214px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" ReadOnly="True" SortExpression="Quantity" />
            </Columns>
        </asp:GridView>
        <br />
        Товар<br />
        <asp:TextBox ID="TextBox5" runat="server" Width="87px"></asp:TextBox>
        <br />
        Количество&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:TextBox ID="TextBox4" runat="server" Width="87px"></asp:TextBox>
&nbsp;
        <br />
&nbsp;<asp:Button ID="Button1" runat="server" Text="Продать" />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select p.Id, p.Name, (u.Quantity - a.Quantity) as Quantity from Products p
left join Sales a on p.Id = a.ProductId
left  join Supply u on p.Id = u.ProductId" OnSelecting="SqlDataSource1_Selecting">
        </asp:SqlDataSource>
    </form>
</body>
</html>
