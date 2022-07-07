<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="Online_Shopping.details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" />
    </script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" />
    </script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" />
    </script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@500&family=Mochiy+Pop+P+One&family=Playfair+Display:ital,wght@1,500&display=swap"
        rel="stylesheet">
    <style type="text/css">
        body
        {
            text-align: center;
            font-family: 'Be Vietnam Pro' , sans-serif;
            font-family: 'Mochiy Pop P One' , sans-serif;
            font-family: 'Playfair Display' , serif;
        }
        .container
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-expand-sm navbar-dark " style="margin-bottom: 50px; background-color: #aa6f73;">
  <div class="container-fluid">
    <a class="navbar-brand" href="" style="padding-left:50px;"> Product Details </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
   
    
       <div class="collapse navbar-collapse" id="mynavbar" style="margin-left:180px;">
      <ul class="navbar-nav me-auto navbar-right">
        <li class="nav-item">
          <a class="nav-link" href="DataListExample.aspx">Home</a>
        </li>
        <li class="nav-item" style="">
         <a class="nav-link" href="">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="">Contact</a>
        </li>
          
      </ul>
    </div>

      <div style="float: right">

            <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="image/cart.jpg"
                OnClick="ImageButton1_Click" Width="40px" />

                
        <span>
        
           <asp:Label ID="lbl_cart" runat="server" Text="Cart"></asp:Label>
        </span>
         
        </div>
   
  </div>
</nav>
    <%--<center >
            <asp:Label ID="Label1" runat="server" Text="PRODUCT DETAILS" Font-Bold="True" Font-Italic="False"
                Font-Names="Comic Sans MS" Font-Size="XX-Large" Height="50px" Style="margin-bottom: 0px;
                text-align: center; margin-left: 0px;" Width="622px"></asp:Label>
        </center>--%>
    <%--   <center>
        <asp:ListView ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <table class="style1" border="3">
                    <tr>
                        <td>
                            <center>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>' Font-Bold="True"></asp:Label>
                            </center>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <center>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("id") %>' Font-Bold="True"></asp:Label>
                            </center>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <center>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("pic") %>' Height="200px"
                                    Width="200px" />
                            </center>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <center style="font-weight: 600">
                                Description:<asp:Label ID="Label3" runat="server" Text='<%# Eval("about") %>' Font-Bold="True"></asp:Label>
                            </center>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <center style="font-weight: 600">
                                Rs.<asp:Label ID="Label4" runat="server" Text='<%# Eval("price") %>' Font-Bold="True"></asp:Label>
                                &nbsp;&nbsp;
                            </center>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="cart"
                                Font-Bold="True" Text="Add To Cart" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:ListView>
    </center>--%>
    <div class="row">
        <asp:ListView ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3">
                    <div>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                    </div>
                    <div id="pic">
                        <img alt="dont know" src='<%# Eval("pic") %>' height="200px" width="200px" />
                    </div>
                    <div>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("about") %>'></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                    </div>
                    <div>
                        <asp:Button ID="Button1" CssClass="btn" runat="server" Style="background-color: #a39193"
                            Text="add to cart" />
                    </div>
                </div>
            </ItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:test2ConnectionString2 %>"
            SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
    </div>
    </div>
    <p>
        <asp:Button ID="Button2" runat="server" Text="Button" />
    </p>
    </form>
</body>
</html>
