<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminform.aspx.cs" Inherits="Online_Shopping.adminform" %>

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
         #add,#delete,#modify
        {
            width: 200px;
            height: 50px;
            margin: 80px 40px 40px 40px;
            font-weight: bold;
        }
        form
        {
            margin-top:50px;
            text-align:center;
        }
      </style>
</head>
<body>
    <form id="form1" runat="server">
   <p class="display-2">What task do you wish to perform?</p>
            <asp:Button ID="add" runat="server" type="button" Text="ADD" 
                class="btn btn-success btn-lg" OnClick="add_Click"/>
            <asp:Button ID="delete" runat="server" type="button" Text="REMOVE" 
                class="btn btn-danger btn-lg" OnClick="delete_Click" />
            <asp:Button ID="modify" runat="server" type="button" Text="MODIFY" 
                class="btn btn-primary btn-lg" OnClick="modify_Click"/>
   </form>
</body>
</html>
