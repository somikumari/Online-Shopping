<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modifyproduct.aspx.cs" Inherits="Online_Shopping.modifyproduct" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
         body
        {
            background-image: url("/image/signupbg.jpg");
            color:White;
            font-weight:bold;
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
    
    
    
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="f">
    <p class="display-1">Modify Product:-</p>
          <table class="container" align="center">
            <tr>
                <td class="style2">
                    Enter id:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
           
                <td class="style2">
                  Want to modify name?</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
             
                <td class="style2">
                  Want to modify Image?</td>
                <td class="style3">
                    <asp:FileUpload style="margin-left:60px;" ID="FileUpload1" runat="server" 
                        Width="287px" />
                       <asp:label ID="Label1" runat="server"  float="" text="Label"></asp:label>
                </td>
            </tr>
            <tr>
           
                <td class="style2">
                    Want to modify description?</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                  Want to modify Price?</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
              <center>
              <td class="style3" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Modify" 
                        ClientIDMode="AutoID" onclick="Button1_Click"/>
                </td>
              </center>
                
            </tr>
           
        </table>
        

    
     
    </div>
   
    </form>
</body>
</html>
