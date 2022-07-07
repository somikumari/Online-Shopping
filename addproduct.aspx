<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addproduct.aspx.cs" Inherits="Online_Shopping.addproduct" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body
        {
            background-image: url("/image/signupbg.jpg");
           
            font-weight:bold;
            color:White;
        }
     .container
        {
            
            text-align: center;
            display: table-row-group;
            font-size: 20px;
            width: 829px;
            height: 256px;
            margin:50px 30px 30px 80px;
            position: absolute;
            top: 70px;
        }
        .f
        {
            text-align:center;
        }
        .style3
        {
            width:70px;
            height:50px;
        }
    
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <div class="f">
      <p class="display-1">Add Product:-</p>
          <table class="container" align="center">
        
            <tr>
                <td class="style2">
                    id:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Name:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Picture:</td>
                <td class="style3">
                    <asp:FileUpload style="margin-left:60px;" ID="FileUpload1" runat="server" 
                        Width="287px" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    About</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Price:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
              <center>
              <td class="style3" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button_Click" 
                        ClientIDMode="AutoID" />
                </td>
              </center>
                
            </tr>
           
        </table>
        
<asp:label ID="Label1" runat="server" text="Label"></asp:label>
    
    
    </div>
   

    </form>
</body>
</html>
