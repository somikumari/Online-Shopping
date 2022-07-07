<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Online_Shopping.test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="Button1" Width="109px" 
            onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Button2" Width="110px" />
        <asp:TextBox ID="TextBox1" runat="server" Width="231px"></asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="125px">
        </asp:DropDownList>
        <asp:TextBox ID="TextBox2" runat="server" Width="249px"></asp:TextBox>
        
    
    </div>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
