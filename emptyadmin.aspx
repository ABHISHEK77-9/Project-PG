<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="emptyadmin.aspx.cs" Inherits="emptyadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script language="javascript" type="text/javascript">
     function isNumeric(keyCode) {
         return ((keyCode >= 48 && keyCode <= 57) || keyCode == 8 || keyCode == 11 || keyCode == 9)
     }
     function isString(keyCode) {
         return ((keyCode >= 65 && keyCode <= 90) || keyCode == 8 || keyCode == 11 || keyCode == 9 || keyCode == 32)
     }

   
</script>
    <style type="text/css">
        .style12
        {
            width: 168px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
    <tr>
        <td>
        
       
    <table style="width: 291px; height: 117px">
    <tr>
        <td class="style12" style="font-size: small; font-weight: bold">
        Welcome Admin !!!
        </td>
    </tr>
    <tr>
        <td class="style12" style="font-size: small; font-weight: bold">
        Current Date :
        </td>
        <td style="font-weight: bold; font-size: small">
            <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style12" style="font-size: small; font-weight: bold">
        Current Time :
        </td>
        <td style="font-weight: bold; font-size: small">
            <asp:Label ID="lbltime" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
</table>
<table align="center" style="width: 159px">
    <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Text="TOPUP" BackColor="Maroon" 
                Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" 
                Width="143px" onclick="Button1_Click" />
        </td>
    </tr>
</table>
    <asp:Panel ID="Panel1" runat="server" Visible="false" Font-Bold="True" 
        Font-Names="Times New Roman" Font-Size="Small" Height="150px" 
        Width="386px">
        <table style="height: 124px; width: 382px">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Select Student Rollno"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" DataSourceID="SqlDataSource1" 
                        DataTextField="rollnum" DataValueField="rollnum" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Names="Cambria" OnClick="Button4_Click" Text="Load" />
                    Current Bal : Rs<asp:Label ID="lblamt" runat="server" Text="........."></asp:Label>
                    </td>
                   
            </tr>
               <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Amount"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtamount" runat="server" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtamount" ErrorMessage="*" ForeColor="Red" ValidationGroup="food"></asp:RequiredFieldValidator>
                </td>
            </tr>
               <tr>
                <td>
           <asp:Button ID="Button2" runat="server" Text="UPDATE" Font-Bold="True" 
                        Font-Names="Times New Roman" onclick="Button2_Click" ValidationGroup="food" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="CANCEL" Font-Bold="True" 
                        Font-Names="Times New Roman" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblmsg" runat="server" Text="TOP UP SUCCESSFUL" ForeColor="Red" 
                        Visible="False"></asp:Label>
                </td>
                 <td>

                    <%--<asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                        DataFile="~/App_Data/foodfirm.mdb" 
                        SelectCommand="SELECT [rollnum] FROM [studet]"></asp:AccessDataSource>--%>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [rollnum] FROM [studet]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </asp:Panel>


     </td>
        <td align="center" style="font-weight: bold; font-size: small" valign="top">
        ORDER DETAILS!!!
            <br />
        <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                Font-Names="Times New Roman" Font-Size="Small" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource2" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="587px">
                <Columns>
                    <asp:BoundField DataField="sturegno" HeaderText="Roll Num" 
                        SortExpression="sturegno" />
                    <asp:BoundField DataField="stuname" HeaderText="Student Name" 
                        SortExpression="stuname" />
                    <asp:BoundField DataField="itemname" HeaderText="Item Name" 
                        SortExpression="itemname" />
                    <asp:BoundField DataField="itemprice" HeaderText="Item Price" 
                        SortExpression="itemprice" />
                    <asp:BoundField DataField="quanti" HeaderText="Quantity" 
                        SortExpression="quanti">
                    <ItemStyle BackColor="#FF6600" />
                    </asp:BoundField>
                    <asp:BoundField DataField="totprice" HeaderText="Total Price" 
                        SortExpression="totprice">
                    <ControlStyle BackColor="#FFCC99" />
                    <ItemStyle BackColor="#990033" ForeColor="White" />
                    </asp:BoundField>
                    <asp:CommandField ButtonType="Button" SelectText="Deliver Order" 
                        ShowSelectButton="True">
                    <ControlStyle BackColor="Maroon" Font-Bold="True" Font-Names="Times New Roman" 
                        ForeColor="White" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [itemname], [quanti], [totprice], [sturegno], [stuname], [itemprice] FROM [orderdet] WHERE ([adminhis] = @adminhis)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="yes" Name="adminhis" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <%--<asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                DataFile="~/App_Data/foodfirm.mdb" 
                SelectCommand="SELECT [itemname], [quanti], [totprice], [sturegno], [stuname], [itemprice] FROM [orderdet] WHERE ([adminhis] = ?)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="yes" Name="adminhis" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>--%>
        </td>
    </tr>
</table>
</asp:Content>

