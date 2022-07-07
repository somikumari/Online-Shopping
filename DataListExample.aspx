<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataListExample.aspx.cs"
    Inherits="Online_Shopping.DataListExample" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap.css" rel="stylesheet" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@500&family=Playfair+Display:ital,wght@1,500&display=swap"
        rel="stylesheet"/>

    <link href="DataListExample.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-expand-sm navbar-dark " style="margin-bottom: 50px; background-color:#aa6f73;">
  <div class="container-fluid">
    <a class="navbar-brand" href="" style="padding-right:20px;">Online Shopping</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
   
      <div class="d-flex" action="#">
        <input class=" me-2"type="text"  style="width:350px" placeholder="Search"/>
        <button class="btn bg-secondary" type="button" >Search</button>
      </div>

       <div class="collapse navbar-collapse" id="mynavbar" style="margin-left:180px;text-align:right;">
      <ul class="navbar-nav me-auto navbar-right">
      
        <li class="nav-item" style="">
         <a class="nav-link" href="Signup.aspx">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Login1.aspx">Signup</a>
        </li>
          <li class="nav-item">
          <a class="nav-link" href="Admin.aspx">Admin</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
  <div class="container">
  
   <div class="row">
        <asp:ListView ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
            onitemcommand="DataList1_ItemCommand">
           <ItemTemplate>
          
             <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3">
                    <div id="name" style="padding-bottom:10px;text-align:center;">
                        <%# Eval("name") %></div>
                    <div  style="padding-bottom:10px;text-align:center;">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                    </div>
                    <div id="pic"  style="padding-bottom:10px;text-align:center;">
                        <img alt="dont know" src='<%# Eval("pic") %>' height="200px" width="200px" /></div>
                    <div  style="padding-bottom:40px;text-align:center;">
                        <asp:Button ID="Button1" CssClass="btn " style="background-color:#a39193" runat="server" Text="View Details" />
                    </div>
                </div>
           
        
              
            </ItemTemplate>
            </asp:ListView>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:test2ConnectionString2 %>"
            SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
              </div>
  
  
  
  </div>
 

    </form>
</body>
</html>
