<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="stuhome.aspx.cs" Inherits="stuhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 291px; height: 117px">
    <tr>
        <td class="style12" style="font-size: small; font-weight: bold">
        Welcome Student !!!&nbsp;
        </td>
        <td style="font-size: small; font-weight: bold">
        Your Reg No:&nbsp; 
            <asp:Label ID="lblregno" runat="server" Text="Label" ForeColor="#CC0000"></asp:Label>
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
<br />

<table style="width: 341px; font-size: medium; height: 40px;">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="YOUR BALANCE AMOUNT" 
                Font-Bold="True"></asp:Label>
        </td>
        <td style="color: #CC0000">
            Rs.
            <asp:Label ID="lblbal" runat="server" Text="Label" Font-Bold="True" 
                ForeColor="#CC0000"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

