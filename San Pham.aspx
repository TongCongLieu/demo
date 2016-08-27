<%@ Page Title="Assignment" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="San Pham.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <a id="A6" runat="server" href="~/">
                <input id="Button6" type="button" value="Khách Hàng" /></a>
            <a id="A7" runat="server" href="~/San Pham.aspx">
                <input id="Button7" type="button" value="Sản Phẩm" /></a>
            <a id="A8" runat="server" href="~/Loai Sp.aspx">
                <input id="Button8" type="button" value="Loại Sản Phẩm" /></a>
            <a id="A9" runat="server" href="~/Hoa Don.aspx">
                <input id="Button9" type="button" value="Hóa Đơn" /></a>
            <a id="A10" runat="server" href="~/C HOa Don.aspx">
                <input id="Button10" type="button" value="Chi Tiết Hóa Đơn" /></a>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h1>Danh Sách Sản Phẩm:</h1>
    <ol class="round">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaSP" DataSourceID="SqlDataSP">
            <Fields>
                <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" SortExpression="MaLoai" />
                <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>

        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSP" runat="server" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString3 %>" 
            DeleteCommand="DELETE FROM [San_Pham] WHERE [MaSP] = @MaSP" 
            InsertCommand="INSERT INTO [San_Pham] ([MaSP], [MaLoai], [TenSP], [Gia], [MoTa], [img]) VALUES (@MaSP, @MaLoai, @TenSP, @Gia, @MoTa, @img)" 
            SelectCommand="SELECT [MaSP], [MaLoai], [TenSP], [Gia], [MoTa], [img] FROM [San_Pham]" 
            UpdateCommand="UPDATE [San_Pham] SET [MaLoai] = @MaLoai, [TenSP] = @TenSP, [Gia] = @Gia, [MoTa] = @MoTa, [img] = @img WHERE [MaSP] = @MaSP">
            <DeleteParameters>
                <asp:Parameter Name="MaSP" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaSP" Type="Int32" />
                <asp:Parameter Name="MaLoai" Type="Int32" />
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="Gia" Type="Decimal" />
                <asp:Parameter Name="MoTa" Type="String" />
                <asp:Parameter Name="img" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MaLoai" Type="Int32" />
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="Gia" Type="Decimal" />
                <asp:Parameter Name="MoTa" Type="String" />
                <asp:Parameter Name="img" Type="String" />
                <asp:Parameter Name="MaSP" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </ol>
</asp:Content>
