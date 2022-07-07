<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homePage.aspx.cs" Inherits="Online_Shopping.homePage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div style="width: 100%; height:20%;">
        <table style="width: 100%;  height:20%;">
            <tr>
                <td style="width: 20%; text-align:right;">
                    <asp:Label ID="Label1" runat="server" Text="Flipkart" style=""></asp:Label>
                </td>
                <td style="width: 60%;">
                    <asp:TextBox ID="TextBox1" runat="server" Style="margin-top: 0px; margin-bottom: 0px"
                        Width="414px"></asp:TextBox>
                </td>
                <td style="width: 10%;">
                    <asp:Button ID="Button1" runat="server" Text="Login" Width="77px" />
                </td>
                <td style="width: 10%;">
                    <asp:DropDownList ID="DropDownList14" runat="server">
                        <asp:ListItem Value="1">More</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    
                </td>
            </tr>
        </table>
    </div>
    
    <div style=" position:absolute; width=100%; text-align:center">
        <table >
            <tr>
                <td >
                    <asp:DropDownList ID="DropDownList11" runat="server">
                        <asp:ListItem>Top Offers</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td  >
                    <asp:DropDownList ID="DropDownList12" runat="server">
                        <asp:ListItem>Grocery</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td >
                    <asp:DropDownList ID="DropDownList13" runat="server">
                        <asp:ListItem>Mobile</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td >
                    <asp:DropDownList ID="DropDownList5" runat="server">
                        <asp:ListItem>Fashion</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td  >
                    <asp:DropDownList ID="DropDownList6" runat="server" >
                        <asp:ListItem>Electronics</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td  >
                    <asp:DropDownList ID="DropDownList7" runat="server">
                        <asp:ListItem>Home</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList8" runat="server">
                        <asp:ListItem>Appliances</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td >
                    <asp:DropDownList ID="DropDownList9" runat="server">
                        <asp:ListItem>Travel</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td >
                    <asp:DropDownList ID="DropDownList10" runat="server">
                        <asp:ListItem>Beauty,Toys and More</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
    </div>
    <div style="position: absolute; top: 21%; left: 28px; width: 888px;">
        <asp:Label ID="Label2" runat="server" Text="Winter Wears"></asp:Label>
        <table style="table-layout: fixed; height: 40px;">
            <tr>
                <td class="style2">
                    <asp:ImageButton ID="ImageButton1" runat="server" />
                </td>
                <td class="style2">
                    <asp:ImageButton ID="ImageButton2" runat="server" />
                </td>
                <td class="style2">
                    <asp:ImageButton ID="ImageButton3" runat="server" />
                </td>
                <td class="style2">
                    <asp:ImageButton ID="ImageButton4" runat="server" />
                </td>
                <td class="style2">
                    <asp:ImageButton ID="ImageButton5" runat="server" />
                </td>
            </tr>
        </table>
    </div>
    <div style="position: absolute; top: 70%; left: 28px; width: 888px;">
        <asp:Label ID="Label3" runat="server" Text="Top Picks On Fashion"></asp:Label>
        <table style="table-layout: fixed; height: 40px;">
            <tr>
                <td class="style2">
                    <asp:ImageButton ID="ImageButton6" runat="server" />
                </td>
                <td class="style2">
                    <asp:ImageButton ID="ImageButton7" runat="server" />
                </td>
                <td class="style2">
                    <asp:ImageButton ID="ImageButton8" runat="server" />
                </td>
                <td class="style2">
                    <asp:ImageButton ID="ImageButton9" runat="server" />
                </td>
                <td class="style2">
                    <asp:ImageButton ID="ImageButton10" runat="server" />
                </td>
            </tr>
        </table>
    </div>
    </div>
    </form>
</body>
</html>
