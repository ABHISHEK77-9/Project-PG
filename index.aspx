<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <style type="text/css">
        .style6
        {
            width: 285px;
        }
    </style>
    
    <style type="text/css">
        .style6
        {
            width: 89px;
            height: 25px;
        }
        .style7
        {
            width: 470px;
        }
        .style8
        {
            width: 219px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 727px">
    <center>
    <table width="1100px" >
   
    <tr>
    <td align="center" 
            
            
            style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: bold; font-style: normal; color: #CC0000;">
        COLLEGE
   CANTEEN AUTOMATION
    </td>
    </tr>
    </table>
   
   
   <table style="width: 1096px" bgcolor="#CC0000">
   <tr>
   <td>
   
   </td>
   </tr>
   
   </table> 
   </center>
     <br />
       <br />
   <center>
   <table style="width: 949px; height: 395px;">
   <tr>
   <td class="style6">
    <MARQUEE behavior=scroll direction="up" scrollamount="2" scrolldelay="10"
       onMouseOver="this.stop();" onMouseOut="this.start();" id="MARQUEE1" 
       style="text-align: left; height: 418px; width: 112px;" >
       <asp:LinkButton ID="LinkButton1"  runat="server" Font-Size="Small" Font-Bold="True" ForeColor="#CC0000">Juice Recipe</asp:LinkButton>
       <br />
        <br />
       <asp:Image ID="Image1" runat="server" Width="50" Height="50" ImageUrl="img/6.jpg"></asp:Image>
       <br />
        <br />
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Small" Font-Bold="True" ForeColor="#CC0000">Desserts Recipe</asp:LinkButton>
       <br />
        <br />
       <asp:Image ID="Image2" runat="server" Width="50" Height="50" ImageUrl="img/2.jpg"></asp:Image>
       <br />
        <br />
         <asp:LinkButton ID="LinkButton5"  runat="server" Font-Size="Small" Font-Bold="True" ForeColor="#CC0000">Soups Recipe</asp:LinkButton>
       <br />
        <br />
       <asp:Image ID="Image9" runat="server" Width="50" Height="50" ImageUrl="img/3.jpg"></asp:Image>
       <br />
        <br />
        
        <asp:LinkButton ID="LinkButton3"  runat="server" Font-Size="Small" Font-Bold="True" ForeColor="#CC0000">Fried Rice Recipe</asp:LinkButton>
       <br />
        <br />
       <asp:Image ID="Image3" runat="server" Width="50" Height="50" ImageUrl="img/1.bmp"></asp:Image>
       
        <br />
        <br />
        <asp:LinkButton ID="LinkButton4"  runat="server" Font-Size="Small" Font-Bold="True" ForeColor="#CC0000">Noodles Recipe</asp:LinkButton>
       <br />
        <br />
       <asp:Image ID="Image4" runat="server" Width="50" Height="50" ImageUrl="img/8.jpg"></asp:Image></MARQUEE>
       <br />
        <br />
        
   </td>
   <td>
   </td>
    <td class="style7">
     <table style="height: 289px; width: 421px">
     
    <tr>
      <td align="left" valign="top" class="style8"  >
          <asp:Image ID="Image5" runat="server" Height="230px" 
              ImageUrl="~/img/recipe.gif" Width="209px" />
         
         </td>
         <td style="font-size: small; font-weight: bold" valign="top">
         
             <br />
             <br />
             <br />
         
           
         </td>
      </tr>
      </table>
      <table>
      <tr>
      <td>
          <asp:Image ID="Image8" runat="server" Height="133px" 
              ImageUrl="~/img/recipe2.jpg" Width="460px" />
      </td>
      </tr>
      </table>
     </td>
   <td valign="top">
   
   
    <fieldset style="border: thin solid #000000; font-size: small; font-weight: bold; height: 186px; width: 327px;">
    <legend style="color: #660033">
    &nbsp;Login
    </legend>
    <table style="width: 212px; background-color: #FF5050;" align="center">
    <tr>
    <td>
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Student" 
             Checked="True" ForeColor="#660033" GroupName="food" 
            />
    </td>
        <%--<td>
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Professional Cook" 
            AutoPostBack="True" ForeColor="#009933" 
            oncheckedchanged="RadioButton2_CheckedChanged" Visible="False" />
    </td>--%>
    <td>
        <asp:RadioButton ID="RadioButton3" runat="server" Text="Admin" 
          ForeColor="#0066FF" GroupName="food" 
         />
    </td>
    </tr>
    </table>
   <table style="height: 135px; width: 299px; background-color: #FF8A8A;" align="center">
    <tr>
    <td>
        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label> 
    </td>
    <td>
        <asp:TextBox ID="TextBox1" runat="server" Width="144px"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="*" ValidationGroup="food" ControlToValidate="TextBox1" 
                ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label> 
    </td>
    <td>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="144px"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="*" ValidationGroup="food" ControlToValidate="TextBox2" 
                ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
    <td>
        <asp:Button ID="Button1" runat="server" Text="Login"
            Width="60px" BackColor="White" Font-Bold="True" 
            Font-Names="Times New Roman" BorderColor="#CC0000" 
            onclick="Button1_Click" ValidationGroup="food" />
    </td>
    <td>
        <asp:Button ID="Button2" runat="server" Text="Cancel" BackColor="White" 
            Font-Bold="True" Font-Names="Times New Roman" BorderColor="#CC0000" />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblerr" runat="server" Font-Size="X-Small" ForeColor="Red" 
            Text="Invalid username &amp; password" Visible="False"></asp:Label>
    </td>
    </tr>
    </table>
     </fieldset><br />
                            <br />
       <asp:Image ID="Image7" runat="server" Height="210px" ImageUrl="~/img/878407_f520.jpg" 
                                Width="311px" />   
&nbsp;</td>
    
   </tr>
   </table>
     </center>
     <br />
     
    
 
     
     
           </div>
    </form>
</body>
</html>
