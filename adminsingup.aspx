<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminsingup.aspx.cs" Inherits="Online_Shopping.adminsingup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@500&family=Mochiy+Pop+P+One&family=Playfair+Display:ital,wght@1,500&display=swap" rel="stylesheet">
    <style type="text/css">
        .style3
        {
            width: 44%;
            height: 118px;
        }
        .style4
        {
            width: 98px;
        }
        .style5
        {
            width: 444px;
        }
        i
        {
            margin-left: -30px; 
            cursor: pointer;
        }
         body
        {
            background-color:#aa6f73;
           
           
             font-family: 'Be Vietnam Pro', sans-serif;
      font-family: 'Mochiy Pop P One', sans-serif;
      font-family: 'Playfair Display', serif;
        }
        .hey
        {
            margin-top:50px;
           background-color:rgba(255,255,255,0.5);
           width:600px;
           height:300px;
           border-radius:25px;
           
                  }
        
    </style>

</head>
<body>
    <form id="form1" runat="server">
          
       <center>
         <div class="hey">
        <h1 class="display-1">
            LOGIN</h1>
        <div class="container display-display-5">
            <div class="row">
                <div class="col-sm-4">
                    <asp:Label ID="Label1" runat="server" Text="UserName:"></asp:Label></div>
                <div class="col-sm-4">
                    <asp:TextBox ID="TextBox2" Text='<%# Eval("Username") %>' runat="server" placeholder="Enter Username" required></asp:TextBox>
                   </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label></div>
                <div class="col-sm-4">
                    <asp:TextBox ID="TextBox3"  Text='<%# Eval("Email") %>' runat="server" placeholder="enter email" required></asp:TextBox><br />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <asp:Label ID="Label4" runat="server" Text="Password:"></asp:Label></div>
                <div class="col-sm-4">
                    <asp:TextBox ID="TextBox1"  Text='<%# Eval("password") %>'  type="password" class="t1" runat="server" placeholder="enter password" required></asp:TextBox></div>
            </div>
            <div class="row">
                
                <div class="col-sm-4">
                       <asp:Label ID="Label3" runat="server" Text="Phone Number:"></asp:Label></div>
                <div class="col-sm-4">
                    <asp:TextBox ID="TextBox4" class="t1"  Text='<%# Eval("PhoneNumber") %>' runat="server" placeholder="enter phone number" required></asp:TextBox></div>
            </div>

            <div class="row">
            <div class="col-sm-4">
             <asp:Button ID="Button1" class="btn btn-success btn-sm" type="submit" runat="server"
                        Text="Submit" OnClick="Button1_Click" />
            
            </div>
            
            
            </div>

            <div class="row">
                
                <div class="col-sm-4">
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                       </div>
               
            </div>

        </div>
        </div>
    </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:test2ConnectionString %>" 
        SelectCommand="SELECT * FROM [admin]"></asp:SqlDataSource>
    
 
    
    </form>
</body>
</html>
