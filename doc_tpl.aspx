<%@ Page Language="C#" AutoEventWireup="true" CodeFile="doc_tpl.aspx.cs" Inherits="doc_tpl" MasterPageFile="~/MasterPage.master" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="float: left; width: 250px; height: 418px; background-image: url('images/doctorOffice.jpg');">
    </div>
    <div style="float: right; width: 650px; height: 495px; overflow:scroll; padding-top:30px;">
    
            <br />
            <br />
            <br />
            <br />
    
            <asp:GridView ID="gvTPL" runat="server" AutoGenerateColumns="False" BackColor="White"
                BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Caption="Todays Patient List"
                CaptionAlign="Top" CellPadding="4" Width="627px">
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <Columns>
                    <asp:BoundField DataField="ClientName" HeaderText="Patient Name" ReadOnly="True" />
                    <asp:BoundField DataField="Age" HeaderText="Age" />
                    <asp:BoundField DataFormatString="Sex" HeaderText="Sex" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" />
                    <asp:BoundField DataField="State" HeaderText="State" />
                    <asp:BoundField DataField="AppDate" HeaderText="App. Date">
                        <ItemStyle Font-Bold="True" />
                    </asp:BoundField>
                </Columns>
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            </asp:GridView>
    </div>


</asp:Content>