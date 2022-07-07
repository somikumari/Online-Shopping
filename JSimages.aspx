<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JSimages.aspx.cs" Inherits="Online_Shopping.JSimages" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div>
            <img id="imgMain" src="image\mobile.jpg" alt="Not Found" onmouseover="this.src='image\mobile.jpg;'" style="width:200px; height:200px; margin-right: 0px;" />
        </div>
        <table >
            <tr>
                <td><img id="img1" src="image\shoes.jpeg" style="width:200px; height:200px;" onclick="showimg(this)" onmouseover="showimg(this)" /></td>
                <td><img id="img2" src="image\watch.jpeg" style="width:200px;height:200px;"  onclick="showimg(this)" onmouseover="showimg(this)" /></td>
                <td><img id="img3" src="image\Jacket.jpg" style="width:200px; height:200px;" onclick="showimg(this)" onmouseover="showimg(this)"  /></td>
            </tr>
        </table>
    </div>
    </form>
     <script>
         function showimg(image) {
             document.getElementById("imgMain").src = image.src;
         }
       
    </script>
</body>
</html>
