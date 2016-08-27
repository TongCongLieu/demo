<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Hải Yến:</span>
            <span>01696770569</span>
        </p>
        <p>
            <span class="label">Liệu:</span>
            <span>01674360134</span>
        </p>
        <p>
            <span class="label">Yến:</span>
            <span>01697107008</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Hải Yến:</span>
            <span><a href="mailto:yennthph03791@fpt.edu.vn">yennthph03791@fpt.edu.vn</a></span>
        </p>
        <p>
            <span class="label">Liệu:</span>
            <span><a href="mailto:lieuntph03957@fpt.edu.vn">lieuntph03957@fpt.edu.vn</a></span>
        </p>
        <p>
            <span class="label">Yến:</span>
            <span><a href="mailto:yenntph04028@fpt.edu.vn">yenntph04028@fpt.edu.vn</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.5047560690564!2d105.7803936149162!3d21.012480193709866!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acaab3f11653%3A0x7b2b51f9248a68e6!2zMTM2IE3hu4UgVHLDrCBI4bqhLCBN4buFIFRyw6wsIFThu6sgTGnDqm0sIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1471012110613" 
                width="600" height="450" frameborder="0" style="border:0" allowfullscreen>

            </iframe>
        </p>
    </section>
</asp:Content>