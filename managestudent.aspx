<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="managestudent.aspx.cs" Inherits="managestudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" Font-Bold="True" 
                Font-Names="Times New Roman" Font-Size="Small" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataSourceID="SqlDataSource1" Width="901px">
                <Columns>
                    <asp:BoundField DataField="rollnum" HeaderText="Roll No" 
                        SortExpression="rollnum" />
                    <asp:BoundField DataField="sname" HeaderText="Name" SortExpression="sname" />
                    <asp:BoundField DataField="gen" HeaderText="Gender" SortExpression="gen" />
                    <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
                    <asp:BoundField DataField="dept" HeaderText="Department" 
                        SortExpression="dept" />
                    <asp:BoundField DataField="sclas" HeaderText="Class" SortExpression="sclas" />
                    <asp:BoundField DataField="yr" HeaderText="Year" SortExpression="yr" />
                    <asp:BoundField DataField="phno" HeaderText="Phone Number" 
                        SortExpression="phno" />
                    <asp:BoundField DataField="email" HeaderText="Email Id" 
                        SortExpression="email" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [studet]"></asp:SqlDataSource>
            <%--<asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/App_Data/foodfirm.mdb" SelectCommand="SELECT * FROM [studet]">
            </asp:AccessDataSource>--%>
        </td>
    </tr>
</table>
</asp:Content>

