<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="monthlyreport.aspx.cs" Inherits="monthlyreport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="font-family: cambria; font-weight: bold; font-size: small; width: 389px; height: 47px;">
    <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Select Student Rollno"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" DataSourceID="SqlDataSource1" 
                        DataTextField="rollnum" DataValueField="rollnum" AutoPostBack="True">
                    </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [rollnum] FROM [studet]"></asp:SqlDataSource>
                     <%--<asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                        DataFile="~/App_Data/foodfirm.mdb" 
                        SelectCommand="SELECT [rollnum] FROM [studet]"></asp:AccessDataSource>--%>
                    </td>
                   
            </tr>
</table>
<table>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataSourceID="SqlDataSource2" Font-Bold="True" 
                Font-Names="Cambria" Font-Size="Small" Width="512px">
                <Columns>
                    <asp:BoundField DataField="itemname" HeaderText="Item Name" 
                        SortExpression="itemname" />
                    <asp:BoundField DataField="itemprice" HeaderText="Item Price" 
                        SortExpression="itemprice" />
                    <asp:BoundField DataField="quanti" HeaderText="Quantity" 
                        SortExpression="quanti" />
                    <asp:BoundField DataField="totprice" HeaderText="Total Price" 
                        SortExpression="totprice" />
                    <asp:BoundField DataField="stuname" HeaderText="Student Name" 
                        SortExpression="stuname" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [itemname], [itemprice], [quanti], [totprice], [stuname] FROM [orderdet] WHERE ([sturegno] = @sturegno)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="sturegno" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <%--<asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/App_Data/foodfirm.mdb" 
                SelectCommand="SELECT [itemname], [itemprice], [quanti], [totprice], [stuname] FROM [orderdet] WHERE ([sturegno] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="sturegno" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>--%>
        </td>
    </tr>
</table>
</asp:Content>

