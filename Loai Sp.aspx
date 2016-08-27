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
    
    <h1>Danh Sách Loại Sản Phẩm:</h1>
    <ol>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaLoai" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" ReadOnly="True" SortExpression="MaLoai" />
                <asp:BoundField DataField="TenLoai" HeaderText="TenLoai" SortExpression="TenLoai" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString4 %>" 
            DeleteCommand="DELETE FROM [Loai_SP] WHERE [MaLoai] = @MaLoai" 
            InsertCommand="INSERT INTO [Loai_SP] ([MaLoai], [TenLoai]) VALUES (@MaLoai, @TenLoai)" 
            SelectCommand="SELECT [MaLoai], [TenLoai] FROM [Loai_SP]" 
            UpdateCommand="UPDATE [Loai_SP] SET [TenLoai] = @TenLoai WHERE [MaLoai] = @MaLoai">
            <DeleteParameters>
                <asp:Parameter Name="MaLoai" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaLoai" Type="Int32" />
                <asp:Parameter Name="TenLoai" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenLoai" Type="String" />
                <asp:Parameter Name="MaLoai" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </ol>
</asp:Content>
