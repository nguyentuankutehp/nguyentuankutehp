<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>&nbsp;</h1>
                <h2>tuannhph03569-inf 204 điện toán đám mây</h2>
            </hgroup>
            <p>
               
                Hệ thống siêu thị Big C hoạt động kinh doanh theo mô hình “Trung tâm thương mại” hay
                 “Đại siêu thị”, là hình thức kinh doanh bán lẻ hiện đại đang được Tập đoàn Casino (Tập 
                đoàn mẹ của siêu thị Big C) triển khai. Casino là một trong những tập đoàn bán lẻ hàng đầu thế giới, với hơn 307.000 nhân viên làm việc tại hơn 12.000 
                chi nhánh, tại Việt Nam, Thái Lan, Argentina, Uruguay, Brazil, Columbia, Pháp, Madagascar và Mauritius.
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <h5>Bang khach hang</h5>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID_KHACHHANG" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"  ShowinsertButton="True"/>
                    <asp:BoundField DataField="ID_KHACHHANG" HeaderText="ID_KHACHHANG" ReadOnly="True" SortExpression="ID_KHACHHANG" />
                    <asp:BoundField DataField="HOTENKH" HeaderText="HOTENKH" SortExpression="HOTENKH" />
                    <asp:BoundField DataField="DAICHI" HeaderText="DAICHI" SortExpression="DAICHI" />
                    <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBH_TUANNHPH03569ConnectionString7 %>" DeleteCommand="DELETE FROM [KHACHHANG] WHERE [ID_KHACHHANG] = @ID_KHACHHANG" InsertCommand="INSERT INTO [KHACHHANG] ([ID_KHACHHANG], [HOTENKH], [DAICHI], [SDT], [EMAIL]) VALUES (@ID_KHACHHANG, @HOTENKH, @DAICHI, @SDT, @EMAIL)" SelectCommand="SELECT [ID_KHACHHANG], [HOTENKH], [DAICHI], [SDT], [EMAIL] FROM [KHACHHANG]" UpdateCommand="UPDATE [KHACHHANG] SET [HOTENKH] = @HOTENKH, [DAICHI] = @DAICHI, [SDT] = @SDT, [EMAIL] = @EMAIL WHERE [ID_KHACHHANG] = @ID_KHACHHANG">
                <DeleteParameters>
                    <asp:Parameter Name="ID_KHACHHANG" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID_KHACHHANG" Type="String" />
                    <asp:Parameter Name="HOTENKH" Type="String" />
                    <asp:Parameter Name="DAICHI" Type="String" />
                    <asp:Parameter Name="SDT" Type="Int32" />
                    <asp:Parameter Name="EMAIL" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="HOTENKH" Type="String" />
                    <asp:Parameter Name="DAICHI" Type="String" />
                    <asp:Parameter Name="SDT" Type="Int32" />
                    <asp:Parameter Name="EMAIL" Type="String" />
                    <asp:Parameter Name="ID_KHACHHANG" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="two">
            <h5>Loại Sản Phẩm</h5>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_LOAISANPHAM" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"  ShowinsertButton="True"/>
                    <asp:BoundField DataField="ID_LOAISANPHAM" HeaderText="ID_LOAISANPHAM" ReadOnly="True" SortExpression="ID_LOAISANPHAM" />
                    <asp:BoundField DataField="TEN_SANPHAM" HeaderText="TEN_SANPHAM" SortExpression="TEN_SANPHAM" />
                </Columns>
            </asp:GridView>
           
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QLBH_TUANNHPH03569ConnectionString8 %>" DeleteCommand="DELETE FROM [LOAISANPHAM] WHERE [ID_LOAISANPHAM] = @ID_LOAISANPHAM" InsertCommand="INSERT INTO [LOAISANPHAM] ([ID_LOAISANPHAM], [TEN_SANPHAM]) VALUES (@ID_LOAISANPHAM, @TEN_SANPHAM)" SelectCommand="SELECT [ID_LOAISANPHAM], [TEN_SANPHAM] FROM [LOAISANPHAM]" UpdateCommand="UPDATE [LOAISANPHAM] SET [TEN_SANPHAM] = @TEN_SANPHAM WHERE [ID_LOAISANPHAM] = @ID_LOAISANPHAM">
                <DeleteParameters>
                    <asp:Parameter Name="ID_LOAISANPHAM" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID_LOAISANPHAM" Type="String" />
                    <asp:Parameter Name="TEN_SANPHAM" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TEN_SANPHAM" Type="String" />
                    <asp:Parameter Name="ID_LOAISANPHAM" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
           
        </li>
        <li class="three">
            <h5>Bảng Hóa Đơn</h5>
            <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_HOADON" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"  ShowinsertButton="True"/>
                    <asp:BoundField DataField="ID_HOADON" HeaderText="ID_HOADON" ReadOnly="True" SortExpression="ID_HOADON" />
                    <asp:BoundField DataField="ID_KHACHHANG" HeaderText="ID_KHACHHANG" SortExpression="ID_KHACHHANG" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QLBH_TUANNHPH03569ConnectionString9 %>" DeleteCommand="DELETE FROM [HOADON] WHERE [ID_HOADON] = @ID_HOADON" InsertCommand="INSERT INTO [HOADON] ([ID_HOADON], [ID_KHACHHANG]) VALUES (@ID_HOADON, @ID_KHACHHANG)" SelectCommand="SELECT [ID_HOADON], [ID_KHACHHANG] FROM [HOADON]" UpdateCommand="UPDATE [HOADON] SET [ID_KHACHHANG] = @ID_KHACHHANG WHERE [ID_HOADON] = @ID_HOADON">
                <DeleteParameters>
                    <asp:Parameter Name="ID_HOADON" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID_HOADON" Type="String" />
                    <asp:Parameter Name="ID_KHACHHANG" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ID_KHACHHANG" Type="String" />
                    <asp:Parameter Name="ID_HOADON" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>

        <li class="four">
            <h5>Bảng Chi Tiết Hóa Đơn</h5>
            <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_CHITIETHD" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"  ShowinsertButton="True"/>
                    <asp:BoundField DataField="HOTENKH" HeaderText="HOTENKH" SortExpression="HOTENKH" />
                    <asp:BoundField DataField="ID_CHITIETHD" HeaderText="ID_CHITIETHD" ReadOnly="True" SortExpression="ID_CHITIETHD" />
                    <asp:BoundField DataField="ID_HOADON" HeaderText="ID_HOADON" SortExpression="ID_HOADON" />
                    <asp:BoundField DataField="ID_SANPHAM" HeaderText="ID_SANPHAM" SortExpression="ID_SANPHAM" />
                    <asp:BoundField DataField="NGAYMUAHANG" HeaderText="NGAYMUAHANG" SortExpression="NGAYMUAHANG" />
                    <asp:BoundField DataField="SOLUONG" HeaderText="SOLUONG" SortExpression="SOLUONG" />
                    <asp:BoundField DataField="TONGGIATIEN" HeaderText="TONGGIATIEN" SortExpression="TONGGIATIEN" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:QLBH_TUANNHPH03569ConnectionString10 %>" DeleteCommand="DELETE FROM [CHITIETHD] WHERE [ID_CHITIETHD] = @ID_CHITIETHD" InsertCommand="INSERT INTO [CHITIETHD] ([HOTENKH], [ID_CHITIETHD], [ID_HOADON], [ID_SANPHAM], [NGAYMUAHANG], [SOLUONG], [TONGGIATIEN]) VALUES (@HOTENKH, @ID_CHITIETHD, @ID_HOADON, @ID_SANPHAM, @NGAYMUAHANG, @SOLUONG, @TONGGIATIEN)" SelectCommand="SELECT [HOTENKH], [ID_CHITIETHD], [ID_HOADON], [ID_SANPHAM], [NGAYMUAHANG], [SOLUONG], [TONGGIATIEN] FROM [CHITIETHD]" UpdateCommand="UPDATE [CHITIETHD] SET [HOTENKH] = @HOTENKH, [ID_HOADON] = @ID_HOADON, [ID_SANPHAM] = @ID_SANPHAM, [NGAYMUAHANG] = @NGAYMUAHANG, [SOLUONG] = @SOLUONG, [TONGGIATIEN] = @TONGGIATIEN WHERE [ID_CHITIETHD] = @ID_CHITIETHD">
                <DeleteParameters>
                    <asp:Parameter Name="ID_CHITIETHD" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="HOTENKH" Type="String" />
                    <asp:Parameter Name="ID_CHITIETHD" Type="String" />
                    <asp:Parameter Name="ID_HOADON" Type="String" />
                    <asp:Parameter Name="ID_SANPHAM" Type="String" />
                    <asp:Parameter Name="NGAYMUAHANG" Type="String" />
                    <asp:Parameter Name="SOLUONG" Type="Int32" />
                    <asp:Parameter Name="TONGGIATIEN" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="HOTENKH" Type="String" />
                    <asp:Parameter Name="ID_HOADON" Type="String" />
                    <asp:Parameter Name="ID_SANPHAM" Type="String" />
                    <asp:Parameter Name="NGAYMUAHANG" Type="String" />
                    <asp:Parameter Name="SOLUONG" Type="Int32" />
                    <asp:Parameter Name="TONGGIATIEN" Type="String" />
                    <asp:Parameter Name="ID_CHITIETHD" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>

        <li class="five">
            <h5>Bảng Sản Phẩm</h5>
            <asp:GridView ID="GridView5" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_SANPHAM" DataSourceID="SqlDataSource5">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowinsertButton="True"/>
                    <asp:BoundField DataField="ID_SANPHAM" HeaderText="ID_SANPHAM" ReadOnly="True" SortExpression="ID_SANPHAM" />
                    <asp:BoundField DataField="ID_LOAISANPHAM" HeaderText="ID_LOAISANPHAM" SortExpression="ID_LOAISANPHAM" />
                    <asp:BoundField DataField="TEN_SANPHAM" HeaderText="TEN_SANPHAM" SortExpression="TEN_SANPHAM" />
                    <asp:BoundField DataField="GIA" HeaderText="GIA" SortExpression="GIA" />
                    <asp:BoundField DataField="MOTA" HeaderText="MOTA" SortExpression="MOTA" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:QLBH_TUANNHPH03569ConnectionString11 %>" DeleteCommand="DELETE FROM [SANPHAM] WHERE [ID_SANPHAM] = @ID_SANPHAM" InsertCommand="INSERT INTO [SANPHAM] ([ID_SANPHAM], [ID_LOAISANPHAM], [TEN_SANPHAM], [GIA], [MOTA]) VALUES (@ID_SANPHAM, @ID_LOAISANPHAM, @TEN_SANPHAM, @GIA, @MOTA)" SelectCommand="SELECT [ID_SANPHAM], [ID_LOAISANPHAM], [TEN_SANPHAM], [GIA], [MOTA] FROM [SANPHAM]" UpdateCommand="UPDATE [SANPHAM] SET [ID_LOAISANPHAM] = @ID_LOAISANPHAM, [TEN_SANPHAM] = @TEN_SANPHAM, [GIA] = @GIA, [MOTA] = @MOTA WHERE [ID_SANPHAM] = @ID_SANPHAM">
                <DeleteParameters>
                    <asp:Parameter Name="ID_SANPHAM" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID_SANPHAM" Type="String" />
                    <asp:Parameter Name="ID_LOAISANPHAM" Type="String" />
                    <asp:Parameter Name="TEN_SANPHAM" Type="String" />
                    <asp:Parameter Name="GIA" Type="String" />
                    <asp:Parameter Name="MOTA" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ID_LOAISANPHAM" Type="String" />
                    <asp:Parameter Name="TEN_SANPHAM" Type="String" />
                    <asp:Parameter Name="GIA" Type="String" />
                    <asp:Parameter Name="MOTA" Type="String" />
                    <asp:Parameter Name="ID_SANPHAM" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>

       
    </ol>
</asp:Content>
