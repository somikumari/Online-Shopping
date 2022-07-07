<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BUY.aspx.cs" Inherits="Online_Shopping.BUY" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            height: 23px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1" 
        style="font-size: 100px; font-style: italic; text-transform: lowercase; color: #FF0066;">BUY NOW</div>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:test2ConnectionString2 %>" 
                SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <table class="style2">
                        <tr>
                            <td class="style3">
                                Name:<asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                Image:<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("pic") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" 
                                    Font-Overline="False" Text="BUY" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
      <script>
          function RazorPayPayment() {
              var price = document.getElementById("Label5");
              var quantity = document.getElementById("Label1");
              var amount = price * quantity;
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
