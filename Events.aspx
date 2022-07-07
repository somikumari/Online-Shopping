<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="Online_Shopping.Events" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 100%; margin-bottom: 20px;">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
            DataTextField="Countries" DataValueField="Countries">
            <asp:ListItem Value="1">India</asp:ListItem>
            <asp:ListItem Value="2">bangladesh</asp:ListItem>
            <asp:ListItem Value="3">Sri Lanka</asp:ListItem>
            <asp:ListItem Value="4">Japan</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox1" runat="server" Width="113px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" Width="232px" 
            OnClick="Button1_Click" style="margin-left: 15px" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" 
            Width="201px" />
        <asp:CheckBox ID="CheckBox1" runat="server" ForeColor="#660033" Text="CheckBox" AutoPostBack="True"
            OnCheckedChanged="CheckBox1_CheckedChanged" />
        <asp:TextBox ID="TextBox2" runat="server" Height="17px" Width="230px" 
            style="margin-left: 10px"></asp:TextBox>
    </div>
    <div style="width: 100%; height: 159px;">
        <table style="width:100%;">
            <tr>
                <td style="width:50%;">
                    <asp:GridView ID="GridView1" runat="server"
                        AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Countries" HeaderText="Countries" 
                                SortExpression="Countries" />
                            <asp:BoundField DataField="c_id" HeaderText="c_id" SortExpression="c_id" />
                        </Columns>
                        
                    </asp:GridView>
                </td>
                <td style="width:50%;">
                    <asp:GridView ID="GridView2" runat="server">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:test1ConnectionString %>" 
        SelectCommand="SELECT * FROM [Country]"></asp:SqlDataSource>
    </form>
</body>
</html>
