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
    
    <h1>Hóa Đơn:</h1>
    <ol>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Ma_ChiTiet" DataSourceID="SqlDataC_hd">
            <Fields>
                <asp:BoundField DataField="Ma_ChiTiet" HeaderText="Ma_ChiTiet" ReadOnly="True" SortExpression="Ma_ChiTiet" />
                <asp:BoundField DataField="MaHoaDon" HeaderText="MaHoaDon" SortExpression="MaHoaDon" />
                <asp:BoundField DataField="MaSP" HeaderText="MaSP" SortExpression="MaSP" />
                <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataC_hd" runat="server" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString6 %>" DeleteCommand="DELETE FROM [Chi_Tiet_Hoa_Don] WHERE [Ma_ChiTiet] = @Ma_ChiTiet" InsertCommand="INSERT INTO [Chi_Tiet_Hoa_Don] ([Ma_ChiTiet], [MaHoaDon], [MaSP], [SoLuong]) VALUES (@Ma_ChiTiet, @MaHoaDon, @MaSP, @SoLuong)" SelectCommand="SELECT [Ma_ChiTiet], [MaHoaDon], [MaSP], [SoLuong] FROM [Chi_Tiet_Hoa_Don]" UpdateCommand="UPDATE [Chi_Tiet_Hoa_Don] SET [MaHoaDon] = @MaHoaDon, [MaSP] = @MaSP, [SoLuong] = @SoLuong WHERE [Ma_ChiTiet] = @Ma_ChiTiet">
            <DeleteParameters>
                <asp:Parameter Name="Ma_ChiTiet" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ma_ChiTiet" Type="Int32" />
                <asp:Parameter Name="MaHoaDon" Type="Int32" />
                <asp:Parameter Name="MaSP" Type="Int32" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MaHoaDon" Type="Int32" />
                <asp:Parameter Name="MaSP" Type="Int32" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
                <asp:Parameter Name="Ma_ChiTiet" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataCHD" runat="server"></asp:SqlDataSource>
    </ol>
</asp:Content>
