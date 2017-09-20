<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hosp_doclist.aspx.cs" Inherits="hosp_doclist" MasterPageFile="~/MasterPage.master" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="text-align:center; height:500px; overflow:scroll">
    <asp:GridView ID="gvDocList" runat="server" AutoGenerateColumns="False" BackColor="White"
        BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Caption="Doctors List"
        CaptionAlign="Top" CellPadding="4" Width="627px">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <Columns>
            <asp:BoundField DataField="DoctorName" HeaderText="Doctor Name" />
            <asp:BoundField DataField="Age" HeaderText="Age" />
            <asp:BoundField DataField="DOB" HeaderText="Date of Birth" />
            <asp:BoundField DataField="Sex" HeaderText="Sex" />
            <asp:BoundField DataField="Qualification" HeaderText="Qualification" />
            <asp:BoundField DataField="Specialization" HeaderText="Specialization" />
            <asp:BoundField DataField="MStatus" HeaderText="Marital Status" />
        </Columns>
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    </asp:GridView>
    </div>
</asp:Content>