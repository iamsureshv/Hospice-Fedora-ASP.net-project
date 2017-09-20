<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bsearchresult.aspx.cs" Inherits="bsearchresult" MasterPageFile="~/MasterPage.master" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="height:497px; width:246px; float:left; background-image:url(images/bloodbank.jpg); ">
    
   </div>
<div style="height:500px; width:500px; float:right; ">
    <div style="margin-top:20px; text-align:center">
    <div style="text-align:center; width:467px; font-weight:bold; margin-top:20px; font-size:20px; background-color:Gray">
        Blood search results</div>
        <asp:GridView id="gvResults" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" AllowPaging="True" BorderColor="#404040" 
            BorderStyle="Solid" BorderWidth="1px" Width="460px" style="margin-top: 22px">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:BoundField DataField="DonorName" HeaderText="Name" ReadOnly="True" >
                    <ItemStyle Font-Bold="True" />
                </asp:BoundField>
                <asp:BoundField DataField="Sex" HeaderText="Sex" ReadOnly="True" />
                <asp:BoundField DataField="Age" HeaderText="Age" ReadOnly="True" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" ReadOnly="True" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" ReadOnly="True" >
                    <ControlStyle BorderStyle="Solid" />
                </asp:BoundField>
                <asp:BoundField DataField="District" HeaderText="District" />
            </Columns>
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red" 
            Width="467px" Height="16px"></asp:Label>
        
    </div>
 </div>
</asp:Content>