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
           
    <h1>Khách Hàng:</h1>
    <ol class="round">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaKH" DataSourceID="SqlDataKH">
            <Fields>
                <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH" />
                <asp:BoundField DataField="TenKhachHang" HeaderText="TenKhachHang" SortExpression="TenKhachHang" />
                <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="SĐT" HeaderText="SĐT" SortExpression="SĐT" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataKH" runat="server" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString2 %>" 
            SelectCommand="SELECT [MaKH], [TenKhachHang], [DiaChi], [Email], [SĐT] FROM [Khach_Hang]"
            DeleteCommand="DELETE FROM [Khach_Hang] WHERE [MaKH] = @MaKH"  
            InsertCommand="INSERT INTO [Khach_Hang] ([MaKH], [TenKhachHang], [DiaChi], [Email],[SĐT]) VALUES (@MaKh, @TenKhachHang, @DiaChi, @Email, @SĐT)"
            UpdateCommand="UPDATE [Khach_Hang] SET [TenKhachHang] = @TenKhachHang , [DiaChi] = @DiaChi, [Email] =  @Email ,[SĐT] = @SĐT  WHERE [MaKH] = @MaKH">
                    <DeleteParameters>
                        <asp:Parameter Name="MaKH"/>
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MaKH" />
                        <asp:Parameter Name="TenKhachHang" />
                        <asp:Parameter Name="DiaChi" />
                        <asp:Parameter Name="Email" />
                        <asp:Parameter Name="SĐT" />
                    </InsertParameters>            
                    <UpdateParameters>
                        <asp:Parameter Name="MaKH" />
                        <asp:Parameter Name="TenKhachHang" />
                        <asp:Parameter Name="DiaChi" />
                        <asp:Parameter Name="Email" />
                        <asp:Parameter Name="SĐT" />
                    </UpdateParameters>
                </asp:SqlDataSource>
    </ol>
</asp:Content>
