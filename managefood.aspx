<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="managefood.aspx.cs" Inherits="managefood" %>

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
    <table>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" DataSourceID="SqlDataSource1" Font-Bold="True" 
                Font-Size="Small" Width="708px" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="itemcateg" HeaderText="Item Category" 
                        SortExpression="itemcateg" />
                    <asp:BoundField DataField="itemid" HeaderText="Item ID" 
                        SortExpression="itemid" />
                    <asp:BoundField DataField="itemname" HeaderText="Item Name" 
                        SortExpression="itemname" />
                    <asp:CommandField ButtonType="Button" SelectText="Select to edit details" 
                        ShowSelectButton="True">
                    <ControlStyle BackColor="Maroon" ForeColor="White" />
                    </asp:CommandField>
                </Columns>
                <HeaderStyle BackColor="#CC0000" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [itemcateg], [itemid], [itemname] FROM [itemdet]"></asp:SqlDataSource>
            <%--<asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/App_Data/foodfirm.mdb" 
                SelectCommand="SELECT [itemcateg], [itemid], [itemname] FROM [itemdet]">
            </asp:AccessDataSource>--%>
        </td>
    </tr>
</table>
<table>
    
    <tr>
        <td>
            <table style="font-size: small; font-weight: bold; height: 299px; width: 397px;">
            <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Item category"></asp:Label>
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
    <asp:TextBox ID="txtprice" runat="server" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;"></asp:TextBox>
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
    <asp:Button ID="Button1" runat="server" Text="Update" Font-Bold="True" 
        Font-Italic="True" Font-Names="Times New Roman" Width="64px" 
      BorderColor="Red" onclick="Button1_Click" ValidationGroup="food"
        />
</td>
<td >
    <asp:Button ID="Button2" runat="server" Text="Delete" Font-Bold="True" 
        Font-Italic="True" Font-Names="Times New Roman" Width="69px" 
        BorderColor="Red" onclick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Visible="False"></asp:Label>
</td>
</tr>
            </table>
        </td>
        <td>
            <asp:Image ID="Image1" runat="server" Height="153px" Width="171px" />
            <br />
            <asp:Image ID="Image2" runat="server" Height="153px" Width="171px" />
        </td>
    </tr>
</table>
</asp:Content>

