<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewdonates.aspx.cs" Inherits="viewdonates" MasterPageFile="~/MasterPage.master" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:0 auto;margin-top:25px; width: 878px; height: 462px">
        <div style="text-align:center">
            Select the Organ&nbsp;
            <asp:DropDownList ID="ddlOrgon" runat="server" Width="124px">
                <asp:ListItem Selected="True">--Select--</asp:ListItem>
                <asp:ListItem>Eye</asp:ListItem>
                <asp:ListItem>Heart</asp:ListItem>
                <asp:ListItem>Kidney</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btnShow" runat="server" Text="Show" Width="69px" OnClick="btnShow_Click" /></div>
            <div style="text-align:center; margin-top:30px; overflow:scroll">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="807px" AllowPaging="True">
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <Columns>
                <asp:BoundField DataField="DonorName" HeaderText="Donor Name" />
                <asp:BoundField DataField="Sex" HeaderText="Sex" />
                <asp:BoundField DataField="City" HeaderText="City" />
                <asp:BoundField DataField="District" HeaderText="District" />
                <asp:BoundField DataField="Contact" HeaderText="Contact No" />
                <asp:BoundField DataField="Regdate" HeaderText="Reg.Date" />
            </Columns>
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView>
        </div>
    </div>

</asp:Content>