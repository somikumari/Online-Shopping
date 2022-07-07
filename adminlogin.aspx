<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Online_Shopping.admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap.css" rel="stylesheet" type="text/css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@500&family=Mochiy+Pop+P+One&family=Playfair+Display:ital,wght@1,500&display=swap"
        rel="stylesheet">
    <style type="text/css">
        body
        {
            background-color: #aa6f73;
            font-family: 'Be Vietnam Pro' , sans-serif;
            font-family: 'Mochiy Pop P One' , sans-serif;
            font-family: 'Playfair Display' , serif;
        }
         .hey
        {
            margin-top:50px;
           background-color:rgba(255,255,255,0.5);
           width:600px;
           height:300px;
           border-radius:25px;
           
                  }
     
  
         --%>
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <%-- <div class="form">
        <div class="a">
            <asp:Label style="width:2000px" class="lbl" ID="Label1" runat="server" Text="Name:-"></asp:Label>
            <asp:TextBox class="txt" ID="TextBox1" runat="server"  Text='<%# Eval("name") %>'></asp:TextBox>
        </div>
        <div class="a">
            <asp:Label class="lbl" ID="Label2" runat="server" Text="Email:"></asp:Label>
            <asp:TextBox class="txt" ID="TextBox2" runat="server"  Text='<%# Eval("email") %>'></asp:TextBox>
        </div>
        <div class="a">
             <asp:Label class="lbl" ID="Label3" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox class="txt" ID="TextBox3" runat="server"  Text='<%# Eval("password") %>'></asp:TextBox>
        </div>
        <div class="a">
             <asp:Label class="lbl" ID="Label4" runat="server" Text="Phone Number:"></asp:Label>
            <asp:TextBox class="txt" ID="TextBox4" runat="server"  Text='<%# Eval("phoneNumber") %>'></asp:TextBox>
        </div>
    </div>--%>

<%--
    <div class="form">

        <asp:Label class="lab" ID="Label1" runat="server" Text="Enter Your Name"></asp:Label> <asp:TextBox class="box" ID="TextBox1" runat="server"></asp:TextBox><br />
        <asp:Label class="lab" ID="Label2" runat="server" Text="Enter Your Phone Number"></asp:Label><asp:TextBox class="box" ID="TextBox2" runat="server"></asp:TextBox><br />
        <asp:Label class="lab" ID="Label3" runat="server" Text="Enter Your Password"></asp:Label><asp:TextBox class="box" ID="TextBox3" runat="server"></asp:TextBox><br />
        <asp:Label class="lab" ID="Label4" runat="server" Text="Enter Your Email"></asp:Label> <asp:TextBox class="box" ID="TextBox4" runat="server"></asp:TextBox>
    
    </div>
--%>




  <%--  <center>
    
    <div style="font-size: 40px">
 
        Admin Login:-</div>
   <div>
   
     <div class="style3">
                <div style="background-color:Gray;">
                    <div class="style4">
                        Name:</div>
                  
                        <asp:TextBox ID="TextBox1" runat="server" Height="37px" 
                            Text='<%# Eval("name") %>' Width="387px" required></asp:TextBox>
                

                <div>
                    <div class="style4">
                        Email:</div>
                   
                        <asp:TextBox ID="TextBox2" runat="server" Height="27px" 
                            Text='<%# Eval("email") %>' Width="386px" required></asp:TextBox>
                    
                </div>
                <div>
                 
                   
                    password:    <asp:TextBox ID="TextBox3" runat="server" type="password" Height="25px" 
                            Text='<%# Eval("password") %>' Width="391px"></asp:TextBox>
                          
                    
                </div>
                <div>
                 
                    
                    <span class="style4">Phone Number:</span> <asp:TextBox ID="TextBox4" runat="server" Height="23px" 
                            Text='<%# Eval("phoneNumber") %>' Width="387px" placeholder="phone number" required></asp:TextBox>
                   
                </div>
                <div>
                    <div class="style4">
                        &nbsp;</div>
                
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" 
                            Text="SUBMIT" OnClick="Button1_Click"  style="background-color:#a39193" />
                  
                </div>
                <div>
                    <div class="style4">
                        &nbsp;</div>
                    
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    
                </div>
            </div>
                            </div>
    --%>






       <center>
         <div class="hey">
        <h1 class="display-1">
            SIGN-UP</h1>
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

              

        </div>
        </div>
        
    </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:test2ConnectionString %>"
        SelectCommand="SELECT * FROM [admin]"></asp:SqlDataSource>
    </form>
</body>
</html>
