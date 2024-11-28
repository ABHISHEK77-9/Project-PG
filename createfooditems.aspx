<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="createfooditems.aspx.cs" Inherits="createfooditems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <script language="javascript" type="text/javascript">
      function isNumeric(keyCode) {
          return ((keyCode >= 48 && keyCode <= 57) || keyCode == 8 || keyCode == 11 || keyCode == 9)
      }
      function isString(keyCode) {
          return ((keyCode >= 65 && keyCode <= 90) || keyCode == 8 || keyCode == 11 || keyCode == 9 || keyCode == 32)
      }

   
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset style="width: 521px; height: 358px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bold; font-style: normal;">
<legend style="color: #CC0000">
    Create&nbsp;Food Items
</legend>
<table style="height: 324px; width: 491px">


<tr>
<td>
    <asp:Label ID="Label1" runat="server" Text="Item Category"></asp:Label>
</td>
<td>
    <asp:DropDownList ID="dropcateg" runat="server" BackColor="#FF5050" 
                 Font-Bold="True" Font-Names="Times New Roman" Height="25px" 
        Width="207px">
                 <asp:ListItem>Beverages</asp:ListItem>
                 <asp:ListItem>Snacks</asp:ListItem>
                 <asp:ListItem>Food</asp:ListItem>
                 <asp:ListItem>Chat Items</asp:ListItem>
                 <asp:ListItem>Salads</asp:ListItem>
             </asp:DropDownList>
</td>
</tr>
<tr>
<td >
    <asp:Label ID="Label5" runat="server" Text="Item Id"></asp:Label>
</td>
<td >
    <asp:TextBox ID="txtitemid" runat="server" Width="207px" AutoPostBack="True" 
        ontextchanged="txtitemid_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="*" ValidationGroup="food" ControlToValidate="txtitemid" 
                ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
    <asp:Label ID="lblerr" runat="server" ForeColor="Red" Text="ID EXISTS" 
        Visible="False"></asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label11" runat="server" Text="Item Name"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtitemname" runat="server" 
        Height="22px" Width="207px" onkeydown="return isString(event.keyCode);" onpaste="return false;"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="*" ValidationGroup="food" ControlToValidate="txtitemname" 
                ForeColor="Red"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td >
    <asp:Label ID="Label6" runat="server" Text="Session"></asp:Label>
</td>
<td >
    <asp:CheckBox ID="CheckBox1" runat="server" Text="Breakfast" />
&nbsp;&nbsp;
    <asp:CheckBox ID="CheckBox2" runat="server" Text="Lunch" />
&nbsp;&nbsp;
    <asp:CheckBox ID="CheckBox3" runat="server" Text="Dinner" />
</td>
</tr>
<tr>
<td >
    <asp:Label ID="Label7" runat="server" Text="Item Type"></asp:Label>
</td>
<td >
    <asp:RadioButton ID="RadioButton1" runat="server" Text="Veg" 
        AutoPostBack="True" Checked="True" ForeColor="#CC0000" GroupName="type" 
       />
    <asp:RadioButton ID="RadioButton2" runat="server" Text="Non-Veg" 
        AutoPostBack="True" ForeColor="#CC0000" GroupName="type" 
       />
&nbsp;&nbsp;
    <asp:CheckBox ID="CheckBox4" runat="server" Text="Spicy" />
</td>
</tr>
<tr>
<td >
    <asp:Label ID="Label8" runat="server" Text="Item Price"></asp:Label>
</td>
<td >
    Rs.<asp:TextBox ID="txtprice" runat="server" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="*" ValidationGroup="food" ControlToValidate="txtprice" 
                ForeColor="Red"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label20" runat="server" Text="Image 1"></asp:Label>
</td>
<td>
    <asp:FileUpload ID="FileUpload1" runat="server" />

    <asp:Label ID="LblError" runat="server" Text="Label" Visible="False" 
        ForeColor="#CC0000"></asp:Label>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="*" ValidationGroup="food" ControlToValidate="FileUpload1" 
                ForeColor="Red"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label2" runat="server" Text="Image 2"></asp:Label>
</td>
<td>
    <asp:FileUpload ID="FileUpload2" runat="server" />
    <asp:Label ID="Lblerror1" runat="server" Text="Label" Visible="False" 
        ForeColor="#CC0000"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ErrorMessage="*" ValidationGroup="food" ControlToValidate="FileUpload2" 
                ForeColor="Red"></asp:RequiredFieldValidator>
</td>
</tr>

<tr>
<td >
    <asp:Button ID="Button1" runat="server" Text="Save" Font-Bold="True" 
        Font-Italic="True" Font-Names="Times New Roman" Width="64px" 
      BorderColor="Red" onclick="Button1_Click"  ValidationGroup="food"
        />
</td>
<td >
    <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" 
        Font-Italic="True" Font-Names="Times New Roman" Width="69px" 
        BorderColor="Red" />
</td>
</tr>
</table>

</fieldset>
</asp:Content>

