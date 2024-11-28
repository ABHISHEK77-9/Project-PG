<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="createstudent.aspx.cs" Inherits="createstudent" %>

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
    <table style="font-family: 'times New Roman', Times, serif; font-size: small; font-weight: bold; height: 356px; width: 458px;">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Roll Num"></asp:Label>
        &nbsp;(username)</td>
        <td>
            <asp:TextBox ID="txtrollnum" runat="server" AutoPostBack="True" OnTextChanged="txtrollnum_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="*" ValidationGroup="food" ControlToValidate="txtrollnum" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:Label ID="lblerr" runat="server" ForeColor="Red" Text="ROLL NUM EXISTS" 
        Visible="False"></asp:Label>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Name" ></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtname" runat="server" onkeydown="return isString(event.keyCode);" onpaste="return false;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="*" ValidationGroup="food" ControlToValidate="txtname" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Gender"></asp:Label>
        </td>
        <td>
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="gen" 
                Checked="True" />
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="gen" />
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label9" runat="server" Text="DOB"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtdob" runat="server" onfocus="showCalendarControl(this);"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="*" ValidationGroup="food" ControlToValidate="txtdob" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Department"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtdept" runat="server" onkeydown="return isString(event.keyCode);" onpaste="return false;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="*" ValidationGroup="food" ControlToValidate="txtdept" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Class"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtclass" runat="server" onkeydown="return isString(event.keyCode);" onpaste="return false;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ErrorMessage="*" ValidationGroup="food" ControlToValidate="txtclass" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Year"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtyear" runat="server" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ErrorMessage="*" ValidationGroup="food" ControlToValidate="txtyear" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Phone No"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtphone" runat="server" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ErrorMessage="*" ValidationGroup="food" ControlToValidate="txtphone" 
                ForeColor="Red"></asp:RequiredFieldValidator>
              
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ErrorMessage="*" ValidationGroup="food" ControlToValidate="txtemail" 
                ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="Invalid" ControlToValidate="txtemail" ValidationGroup="food"  
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ForeColor="Red"></asp:RegularExpressionValidator>
        </td>
    </tr>
       <tr>
        <td>
            <asp:Label ID="Label10" runat="server" Text="Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ErrorMessage="*" ValidationGroup="food" ControlToValidate="txtpassword" 
                ForeColor="Red"></asp:RequiredFieldValidator>
                   
        </td>
    </tr>
      <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Create" BorderColor="Red" 
                Font-Bold="True" Font-Names="Times New Roman" Width="71px" 
                onclick="Button1_Click" ValidationGroup="food" />
        </td>
        <td>
            <asp:Button ID="Button2" runat="server" Text="Cancel" BorderColor="Red" 
                Font-Bold="True" Font-Names="Times New Roman" Width="81px" />
        </td>
    </tr>
</table>
</asp:Content>

