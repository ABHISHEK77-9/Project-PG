<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="orderfood.aspx.cs" Inherits="orderfood" %>

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
    <table style="height: 60px; width: 451px">
    <tr>
        <td>
        WELCOME!!
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Your Regno:"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblregno" runat="server" Text="Label" ForeColor="#CC0000"></asp:Label>
        </td>
         <td>
            <asp:Label ID="Label8" runat="server" Text="Your Name:"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblname" runat="server" Text="Label" ForeColor="#CC0000"></asp:Label>
        </td>
         <td>
            <asp:Label ID="Label9" runat="server" Text="Your Balance Amt:"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblamt" runat="server" Text="Label" ForeColor="#CC0000"></asp:Label>
        </td>
    </tr>

</table>
    <table>
    <tr>
        <td>
        YOUR ORDER HERE !!!
        </td>
    </tr>
</table>
<table>
    <tr>
        <td valign="top">
            <table style="height: 99px; width: 304px">
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Select Session"></asp:Label>
        </td>
        <td>
             <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#FF9933" 
                 Font-Bold="True" Font-Names="Times New Roman" Height="25px" 
                 Width="207px">
                 <asp:ListItem>Breakfast</asp:ListItem>
                 <asp:ListItem>Lunch</asp:ListItem>
                 <asp:ListItem>Dinner</asp:ListItem>
              
             </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Text="View Items" 
                onclick="Button1_Click" BackColor="Maroon" BorderColor="#FF9933" 
                Font-Bold="True" Font-Names="Times New Roman" ForeColor="#FF6600" />
        </td>
    </tr>
</table>
        </td>
        <td>
            <asp:Image ID="Image1" runat="server" Height="115px" 
                ImageUrl="~/img/orderfood.jpg" Width="142px" />
        </td>
    </tr>
</table>

<table>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server"  
                BackColor="#FF9966" ShowFooter="True" Width="527px" DataKeyNames="itemid">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:CheckBox ID="chk" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#FF9900" />
                <HeaderStyle BackColor="#CC0000" ForeColor="White" />
            </asp:GridView>
           
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button2" runat="server" Text="Add to list" 
                onclick="Button2_Click" BackColor="Maroon" BorderColor="#FF9933" 
                Font-Bold="True" Font-Names="Times New Roman" ForeColor="#FF6600" 
                Visible="False" />
        </td>
    </tr>
</table>
    <asp:Panel ID="Panel1" runat="server" Visible="false" Width="562px">
  
<table>
    <tr>
        <td>
        
        
<table style="height: 150px; width: 362px">
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Item Name"></asp:Label>
        </td>
         <td>
            <asp:Label ID="Label7" runat="server" Text="Item Price"></asp:Label>
        </td>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
        </td>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Price"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            
            <asp:Label ID="lblitem1" runat="server" Text=".........." Height="22px"></asp:Label>
            </td>
            <td>
            <asp:Label ID="lblprice1" runat="server" Text="0" Height="22px"></asp:Label>
            </td>
            <td>
              <asp:TextBox ID="txtq1" runat="server" Width="48px" AutoPostBack="True" 
                    ontextchanged="txtq1_TextChanged" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;">0</asp:TextBox>
            </td>
             <td>
              <asp:TextBox ID="txtp1" runat="server" Width="48px" >0</asp:TextBox>
            </td>

            </tr>

            <tr>
            <td>
           
             <asp:Label ID="lblitem2" runat="server" Text=".........." Height="22px"></asp:Label>
              </td>
            <td>
               <asp:Label ID="lblprice2" runat="server" Text="0" Height="22px"></asp:Label>
            </td>
            <td>
               <asp:TextBox ID="txtq2" runat="server" Width="48px" AutoPostBack="True" 
                    ontextchanged="txtq2_TextChanged" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;">0</asp:TextBox>
            </td>
             <td>
              <asp:TextBox ID="txtp2" runat="server" Width="48px" >0</asp:TextBox>
            </td>
            </tr>

            <tr>
            <td>
         
             <asp:Label ID="lblitem3" runat="server" Text=".........." Height="22px"></asp:Label>

               </td>
            <td>
                <asp:Label ID="lblprice3" runat="server" Text="0" Height="22px"></asp:Label>
            </td>
            <td>
              <asp:TextBox ID="txtq3" runat="server" Width="48px" AutoPostBack="True" 
                    ontextchanged="txtq3_TextChanged" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;">0</asp:TextBox>
            </td>
             <td>
              <asp:TextBox ID="txtp3" runat="server" Width="48px" >0</asp:TextBox>
            </td>
            </tr>

            <tr>
            <td>

             <asp:Label ID="lblitem4" runat="server" Text=".........." Height="22px"></asp:Label>
               </td>
            <td>
               <asp:Label ID="lblprice4" runat="server" Text="0" Height="22px"></asp:Label>
            </td>
            <td>
               <asp:TextBox ID="txtq4" runat="server" Width="48px" AutoPostBack="True" 
                    ontextchanged="txtq4_TextChanged" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;">0</asp:TextBox>
            </td>
             <td>
              <asp:TextBox ID="txtp4" runat="server" Width="48px" >0</asp:TextBox>
            </td>
            </tr>

            <tr>
            <td>
              <asp:Label ID="lblitem5" runat="server" Text=".........." Height="22px"></asp:Label>
               </td>
            <td>
               <asp:Label ID="lblprice5" runat="server" Text="0" Height="22px"></asp:Label>
            </td>
            <td>
              <asp:TextBox ID="txtq5" runat="server" Width="48px" AutoPostBack="True" 
                    ontextchanged="txtq5_TextChanged" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;">0</asp:TextBox>
            </td>
             <td>
              <asp:TextBox ID="txtp5" runat="server" Width="48px" >0</asp:TextBox>
            </td>
            </tr>

            <tr>
            <td>
           
             <asp:Label ID="lblitem6" runat="server" Text=".........." Height="22px"></asp:Label>

               </td>
            <td>
               <asp:Label ID="lblprice6" runat="server" Text="0" Height="22px"></asp:Label>
            </td>
            <td>
               <asp:TextBox ID="txtq6" runat="server" Width="48px" AutoPostBack="True" 
                    ontextchanged="txtq6_TextChanged" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;">0</asp:TextBox>
            </td>
             <td>
              <asp:TextBox ID="txtp6" runat="server" Width="48px" >0</asp:TextBox>
            </td>
            </tr>

            <tr>
            <td>
         
             <asp:Label ID="lblitem7" runat="server" Text=".........." Height="22px"></asp:Label>
             
               </td>
            <td>
             <asp:Label ID="lblprice7" runat="server" Text="0"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtq7" runat="server" Width="48px" AutoPostBack="True" 
                    ontextchanged="txtq7_TextChanged" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;">0</asp:TextBox>
            </td>
             <td>
              <asp:TextBox ID="txtp7" runat="server" Width="48px" >0</asp:TextBox>
            </td>
            </tr>

            <tr>
            <td>
          
             <asp:Label ID="lblitem8" runat="server" Text=".........." Height="22px"></asp:Label>
             
               </td>
            <td>
            <asp:Label ID="lblprice8" runat="server" Text="0" Height="22px"></asp:Label>
            </td>
            <td>
               <asp:TextBox ID="txtq8" runat="server" Width="48px" AutoPostBack="True" 
                    ontextchanged="txtq8_TextChanged" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;">0</asp:TextBox>
            </td>
             <td>
              <asp:TextBox ID="txtp8" runat="server" Width="48px" >0</asp:TextBox>
            </td>
            </tr>




         <tr>
         <td>
             <asp:Label ID="lblitem9" runat="server" Text=".........." Height="22px"></asp:Label>
 </td>
 <td>
   <asp:Label ID="lblprice9" runat="server" Text="0" Height="22px"></asp:Label>
 </td>
  <td>
      <asp:TextBox ID="txtq9" runat="server" Width="48px" AutoPostBack="True" 
          ontextchanged="txtq9_TextChanged" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;">0</asp:TextBox>
 </td>
  <td>
              <asp:TextBox ID="txtp9" runat="server" Width="48px" >0</asp:TextBox>
            </td>
 </tr>
 <tr>
 <td>
             <asp:Label ID="lblitem10" runat="server" Text=".........." Height="22px"></asp:Label>
           
            </td>
        <td>
        <asp:Label ID="lblprice10" runat="server" Text="0" Height="22px"></asp:Label>
           </td>
          <td>
              <asp:TextBox ID="txtq10" runat="server" Width="48px" AutoPostBack="True" 
                  ontextchanged="txtq10_TextChanged" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;">0</asp:TextBox>
          </td>
           <td>
              <asp:TextBox ID="txtp10" runat="server" Width="48px" >0</asp:TextBox>
            </td>
          </tr>
      
</table>

    </td>
        <td>
            <table>
                    <tr>
        
          <td align="justify">
              <asp:Button ID="Button3" runat="server" Text="Calculate" 
                  onclick="Button3_Click" BackColor="Maroon" BorderColor="#FF9933" 
                  Font-Bold="True" Font-Names="Times New Roman" ForeColor="#FF6600" />
              <br />
              <br />
              <asp:Label ID="Label6" runat="server" Text="Total Price"></asp:Label>
              &nbsp;&nbsp;
              <asp:Label ID="lbltot" runat="server" Text="Label"></asp:Label>
              <br />
              <br />
              <asp:Button ID="Button4" runat="server" Text="Order Food" BackColor="Maroon" 
                  BorderColor="#FF9933" Font-Bold="True" Font-Names="Times New Roman" 
                  ForeColor="#FF6600" onclick="Button4_Click" Visible="False" />
        </td>
    </tr>
            </table>
            <br />
            <asp:Label ID="lblerr" runat="server" Text="Insufficient Amount" 
                Visible="False"></asp:Label>
        </td>
    </tr>
</table>
  </asp:Panel>
</asp:Content>

