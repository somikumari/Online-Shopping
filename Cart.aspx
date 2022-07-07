<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Online_Shopping.Cart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap.css" rel="stylesheet" type="text/css" />
    <script type="text/jscript" src="https://checkout.razorpay.com/v1/checkout.js"></script>
    
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@500&family=Playfair+Display:ital,wght@1,500&display=swap"
        rel="stylesheet"/>



    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

   
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

     <nav class="navbar navbar-expand-sm navbar-dark " style="margin-bottom: 50px; background-color:#aa6f73;">
  <div class="container-fluid">
    <a class="navbar-brand" href="" style="padding-left:50px;"><span class="glyphicon glyphicon-shopping-cart"></span> Cart </a>
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
  </div>
</nav>
   <%-- <div class="container">
        <div class="jumbotron" style="background-color: #aa6f73;">
            <h1 class="display-1">
                Cart Details</h1>
        </div>--%>
        <%--
    <div style="width: 468px">
    <asp:DataList ID="DataList1" runat="server" 
            
            style="margin-left: 28px; float:none; margin-right: 0px; font-weight: 700; " 
            RepeatColumns="3">
            <ItemTemplate>
                <table class="style1" border="2">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Image ID="Image1" runat="server" Height="200px" 
                                ImageUrl='<%# Eval("pic") %>' Width="217px" />
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("about") %>'></asp:Label>
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            Rs.<asp:Label ID="Label5" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <button id="Button1" type="button"  onclick="RazorPayPayment('<%# Eval("price") %>'*'<%# Eval("Quantity") %>')" >BUY</button>
                        </td>
                    </tr>
                     <tr>
                    <td class="style4">
                    <center>
                        <bold>Quantity:</bold><asp:Label ID="Label1" runat="server" Text='<%# Eval("Quantity") %>' Font-Bold="False"></asp:Label>
                    </center>
                       
                    </td>
                </tr>
                </table>
                <div class="style3">
                    <br />
                    <br />
                </div>
            </ItemTemplate>
        </asp:DataList>--%>
        <div class="container">
        <div class="row">
            <asp:ListView ID="ListView1" runat="server" OnItemCommand="ListView1_ItemCommand">
                <ItemTemplate>
                    <div class="col-sm-12 col-md-6 col-xl-3">
                        <div style="padding-bottom: 10px; text-align: center;">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                        </div>
                        <div id="pic" style="padding-bottom: 10px; text-align: center;">
                            <img alt="dont know" src='<%# Eval("pic") %>' height="200px" width="200px" />
                        </div>
                        <div style="padding-bottom: 10px; text-align: center;">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        </div>
                        <div style="padding-bottom: 10px; text-align: center;">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("about") %>'></asp:Label>
                        </div>
                        <div style="padding-bottom: 10px; text-align: center;">
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                        </div>

                        <div  style="padding-bottom: 10px; text-align: center;">
                          
                          <asp:Label ID="Label1" runat="server" Text='<%# Eval("Quantity") %>'>Quantity:</asp:Label>  
                          </div>
                        <div style="padding-bottom: 10px; text-align: center;">
                            <button id="Button1" type="button" class="btn" style="background-color: #a39193"
                                onclick="RazorPayPayment('<%# Eval("price") %>'*'<%# Eval("Quantity") %>')">
                                BUY</button>
                        </div>
                        <div style="padding-bottom: 10px; text-align: center;">
                            
                            <asp:Button  runat="server" id="Button2" Text="Reduce Quantity" type="button" class="btn" style="background-color: #a39193" CommandName="decrease" CommandArgument='<%# Eval("id") %>' />
                        </div>
                        <div style="padding-bottom: 10px; text-align: center;">
                        
                            
                        </div>
                    </div>
                </ItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:test2ConnectionString2 %>"
                SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        </div>
    </div>
    </div>
    </form>
    <script language="javascript" type="text/javascript">
        function RazorPayPayment(amount) {
            //            var price = document.getElementById("Label5");
            //            var quantity = document.getElementById("Label1");
            //            var amount = price * quantity;
            var totalAmount = parseFloat(amount * 1.18);
            var options = {
                "key": "rzp_test_YODCKm2lh7jruG",
                "amount": Math.ceil(totalAmount * 100), // 2000 paise = INR 20
                "name": "Somi Kumari",
                "description": "8092490298",
                "currency": "INR",
                "image": "https://mytravaly.com/logo.png",
                "prefill": {
                    "name": "Hamlet",
                    "email": "cozyambience2014@gmail.com",
                    "contact": "8884448940"
                },
                "handler": function (response) {
                    window.location.href = "Successfull.html";
                },
                "theme": {
                    "color": "#ff6f56"
                }
            };
            var rzp1 = new Razorpay(options);
            rzp1.open();
            rzp1.on('payment.failed', function (response) {
                window.location.href = "Failure.html";
            });
            e.preventDefault();


        }


    </script>
</body>
</html>
