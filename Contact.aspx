<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Liên Hệ</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3> chăm sóc khách hàng</h3>
        </header>
        <p>
            <span class="label">hotline</span>
            <span>0936493147</span>
        </p>
        <p>
            <span class="label">hotline hà nội</span>
            <span>0425.555.0199</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Hỗ Trợ</span>
            <span><a href="mailto:tuannhph03569@fpt.edu.vn">HN.Support@example.com</a></span>
        </p>
        <p>
            <span class="label">Bán HÀng</span>
            <span><a href="mailto:Marketing@example.com">HCM.Marketing@example.com</a></span>
        </p>
        <p>
            <span class="label">thông tin chung</span>
            <span><a href="mailto:General@example.com">danang.General@example.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Địa chỉ</h3>
            <p> Siêu thị BigC, Trần Duy Hưng, Trung Hoà, Cầu Giấy, Hà Nội, Việt Nam</p>
            <p>bản Đồ</p>
            <p>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.6377739809814!2d105.79131151432375!3d21.00715228601008!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135aca8b1a2a577%3A0x9767f6516febacf7!2zU2nDqnUgdGjhu4sgQmlnQw!5e0!3m2!1svi!2s!4v1466146169777" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>

            </p>
        </header>
        <p>
            One Microsoft Way<br />
            Redmond, WA 98052-6399
        </p>
    </section>
</asp:Content>