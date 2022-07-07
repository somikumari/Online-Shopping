<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Online_Shopping.Signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="Login1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
  <center>
        <h1 class="display-1">
            LOGIN</h1>
        <div class="container display-display-5">
            <div class="row">
                <div class="col-sm-4">
                    <asp:Label ID="Label1" runat="server" Text="UserName:"></asp:Label></div>
                <div class="col-sm-4">
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Username" required></asp:TextBox>
                   </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label></div>
                <div class="col-sm-4">
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="enter password" type="password" required></asp:TextBox><br />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <asp:Label ID="Label4" runat="server" Text="Phone Number:"></asp:Label></div>
                <div class="col-sm-4">
                    <asp:TextBox ID="TextBox1" class="t1" runat="server" required></asp:TextBox></div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <asp:Button ID="Button1" class="btn btn-success btn-sm" type="submit" runat="server"
                        Text="Submit" onclick="Button1_Click" /></div>
              
           <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    </center>
    
    <asp:SqlDataSource ID="Sqldatasource1" runat="server" ConnectionString="<%$ ConnectionStrings:test2ConnectionString %>"
        SelectCommand="SELECT * FROM [Signup]"></asp:SqlDataSource>
   
    </form>
</body>
</html>
