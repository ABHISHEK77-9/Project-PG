<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="adminchangepassword.aspx.cs" Inherits="adminchangepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 150px; width: 522px; font-size: small; font-weight: bold;">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Old Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtold" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtold" ErrorMessage="enter old pwd" Font-Bold="True" ForeColor="Red" ValidationGroup="food"></asp:RequiredFieldValidator>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtnew" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnew" ErrorMessage="enter new pwd" Font-Bold="True" ForeColor="Red" ValidationGroup="food"></asp:RequiredFieldValidator>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Retype Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtretype" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtretype" ErrorMessage="enter retype pwd" Font-Bold="True" ForeColor="Red" ValidationGroup="food"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnew" ControlToValidate="txtretype" ErrorMessage="password mismatch" ForeColor="Red" ValidationGroup="food"></asp:CompareValidator>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Change Password" 
                BackColor="Maroon" Font-Bold="True" Font-Names="Times New Roman" 
                ForeColor="White" onclick="Button1_Click" ValidationGroup="food" />
        </td>
        <td>
            <asp:Button ID="Button2" runat="server" Text="Cancel" BackColor="Maroon" 
                Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblerr" runat="server" Text="Label" ForeColor="Maroon" 
                Visible="False"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

