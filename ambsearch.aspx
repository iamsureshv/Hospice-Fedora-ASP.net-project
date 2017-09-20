<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ambsearch.aspx.cs" Inherits="ambsearch" MasterPageFile="~/MasterPage.master" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:500px; width:247px; float:left; background-image:url(images/ambulance100.jpg); ">
    </div>
    <div style="float: right; width: 650px; height: 491px">
        <div style="text-align:center; margin-top:15px; overflow:scroll">
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966"
            BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="635px" AutoGenerateColumns="False" AllowPaging="True">
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <Columns>
                <asp:BoundField DataField="Provider" HeaderText="Provider" />
                <asp:BoundField DataField="Address" HeaderText="Address" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                <asp:BoundField DataField="City" HeaderText="City" />
                <asp:BoundField DataField="District" HeaderText="District" />
            </Columns>
        </asp:GridView>
            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
        </div>
    </div>

</asp:Content>