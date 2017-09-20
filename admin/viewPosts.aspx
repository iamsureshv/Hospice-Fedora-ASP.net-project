<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewPosts.aspx.cs" Inherits="admin_viewPosts" MasterPageFile="~/admin/admin.master" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="text-align:center; height:400px; padding-top:25px">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        Width="553px" OnRowCommand="GridView1_RowCommand" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="Description" HeaderText="Description" />
            <asp:ButtonField ButtonType="Button" Text="SendMail" />
        </Columns>
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    </asp:GridView>
    &nbsp;</div>
</asp:Content>
