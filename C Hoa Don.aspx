<%@ Page Title="Assignment" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <a id="A1" runat="server" href="~/">
                <input id="Button5" type="button" value="Khách Hàng" /></a>
            <a id="A2" runat="server" href="~/San Pham.aspx">
                <input id="Button1" type="button" value="Sản Phẩm" /></a>
            <a id="A3" runat="server" href="~/Loai Sp.aspx">
                <input id="Button2" type="button" value="Loại Sản Phẩm" /></a>
            <a id="A4" runat="server" href="~/Hoa Don.aspx">
                <input id="Button3" type="button" value="Hóa Đơn" /></a>
            <a id="A5" runat="server" href="~/C HOa Don.aspx">
                <input id="Button4" type="button" value="Chi Tiết Hóa Đơn" /></a>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
    <h1>Chi Tiết Hóa Đơn:</h1>
    <ol>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaHoaDon" DataSourceID="SqlDataHD">
            <Fields>
                <asp:BoundField DataField="MaHoaDon" HeaderText="MaHoaDon" ReadOnly="True" SortExpression="MaHoaDon" />
                <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataHD" runat="server" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString5 %>" 
            DeleteCommand="DELETE FROM [Hoa_Don] WHERE [MaHoaDon] = @MaHoaDon" 
            InsertCommand="INSERT INTO [Hoa_Don] ([MaHoaDon], [MaKH]) VALUES (@MaHoaDon, @MaKH)" 
            SelectCommand="SELECT [MaHoaDon], [MaKH] FROM [Hoa_Don]" 
            UpdateCommand="UPDATE [Hoa_Don] SET [MaKH] = @MaKH WHERE [MaHoaDon] = @MaHoaDon">
            <DeleteParameters>
                <asp:Parameter Name="MaHoaDon" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaHoaDon" Type="Int32" />
                <asp:Parameter Name="MaKH" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MaKH" Type="Int32" />
                <asp:Parameter Name="MaHoaDon" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </ol>
</asp:Content>
