<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Online_Shopping.Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap.css" rel="stylesheet" type="text/css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@500&family=Mochiy+Pop+P+One&family=Playfair+Display:ital,wght@1,500&display=swap"
        rel="stylesheet" />
    <style type="text/css">
        body
        {
            font-family: 'Be Vietnam Pro' , sans-serif;
            font-family: 'Mochiy Pop P One' , sans-serif;
            font-family: 'Playfair Display' , serif;
            margin-bottom: 50px;
        }
      
        #old, #new
        {
            width: 200px;
            height: 50px;
            margin: 40px 40px 40px 40px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <nav class="navbar navbar-expand-sm navbar-dark " style="margin-bottom: 50px; background-color: #aa6f73;">
  <div class="container-fluid">
    <a class="navbar-brand" href="" style="padding-left:50px;"> Seller </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
   
    
       <div class="collapse navbar-collapse" id="mynavbar" style="margin-left:180px;">
      <ul class="navbar-nav me-auto navbar-right">
        <li class="nav-item">
          <a class="nav-link" href="DataListExample.aspx">Home</a>
        </li>
        <li class="nav-item" style="">
         <a class="nav-link" href="adminsingup.aspx">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="adminlogin.aspx">Sign-up</a>
        </li>
          
      </ul>
    </div>
  </div>
</nav>
        <%--  <center>
            <p class="display-1">
                Welcome to the Admin Panel</p>
            <p class="display-3">
                are you a new user or old?</p>
            <asp:Button ID="new" runat="server" type="button" Text="NEW" 
                class="btn  btn-lg"  style="background-color:#a39193" onclick="new_Click" />
            <asp:Button ID="old" runat="server" type="button" Text="OLD" 
                class="btn  btn-lg"  style="background-color:#a39193" onclick="old_Click" />
        </center>--%>



        <center>
           <h1>Welcome to your Digital Store</h1>
        
        
        </center>

     
    </div>
    </form>
</body>
</html>
