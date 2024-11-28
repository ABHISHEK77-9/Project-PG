<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="orderhistory.aspx.cs" Inherits="orderhistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                Width="603px" DataKeyNames="id" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="itemname" HeaderText="ITEM NAME" 
                        SortExpression="itemname" />
                    <asp:BoundField DataField="itemprice" HeaderText="ITEM PRICE" 
                        SortExpression="itemprice" />
                    <asp:BoundField DataField="quanti" HeaderText="QUANTITY" 
                        SortExpression="quanti" />
                    <asp:BoundField DataField="totprice" HeaderText="TOTAL PRICE" 
                        SortExpression="totprice" />
                    <asp:CommandField SelectText="Delete" ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [id], [itemname], [itemprice], [quanti], [totprice] FROM [orderdet] WHERE (([sturegno] = @sturegno) AND ([stuname] = @stuname) AND ([stuhis] = @stuhis))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblregno" Name="sturegno" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="lblname" Name="stuname" PropertyName="Text" Type="String" />
                    <asp:Parameter DefaultValue="yes" Name="stuhis" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <%--<asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/App_Data/foodfirm.mdb" 
                
                SelectCommand="SELECT [id],[itemname], [itemprice], [quanti], [totprice] FROM [orderdet] WHERE (([sturegno] = ?) AND ([stuname] = ?) AND ([stuhis] = ?))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblregno" Name="sturegno" PropertyName="Text" 
                        Type="String" />
                    <asp:ControlParameter ControlID="lblname" Name="stuname" PropertyName="Text" 
                        Type="String" />
                    <asp:Parameter DefaultValue="yes" Name="stuhis" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>--%>
        </td>
        <td>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/img/orderhis.jpg" />
        </td>
    </tr>
</table>
</asp:Content>

