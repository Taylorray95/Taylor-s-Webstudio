<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Home.aspx.vb" Inherits="NewProject.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />

    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">

    <div class="row">
      <div class="col-md-4 mb-5">
        <div class="card h-100">
          <img class="card-img-top" src="content/images/picc.jpg" alt="">
          <div class="card-body">
            <h4 class="card-title">Website & Web Application Development </h4>
              <p class="card-title">&nbsp;</p>
            <p class="card-text">We specialize in developing mobile, and desktop responsive websites. Whether that be sophisticated web applications, static websites, landing pages or E-commerce pages.

            </p>
          </div>

        </div>
      </div>
      <div class="col-md-4 mb-5">
        <div class="card h-100">
          <img class="card-img-top" src="content/images/consult.jpg" alt="">
          <div class="card-body">
            <h4 class="card-title">Development and Security Consultation Services or Research</h4>
            <p class="card-text">We can provide web security or development consultation services for any sort of problems your business encounters or questions that need to be answered. We can also conduct research for your business needs.</p>
          </div>

        </div>
      </div>
      <div class="col-md-4 mb-5">
        <div class="card h-100">
          <img class="card-img-top" src="content/images/cyber_300x200.png" alt="">
          <div class="card-body">
            <h4 class="card-title">Cybersecurity Services</h4>
              <p class="card-title">&nbsp;</p>
            <p class="card-text">We will provide a security assesment for your business and acess the needs on a case&nbsp; by case basis. Some of the services we can provide are DDoS protection; email, web application and cloud security; as well as information security and event management protection.</p>
              <p class="card-text">&nbsp;</p>
          </div>
  
        </div>
      </div>
    </div>
          </div>
    <asp:Panel ID="pnlValidation" Visible ="false" runat="server" BackColor="#FF3300">
      <div class="col-sm-12 col-md-12 col-md-12 col-lg-12" align="center">
          <asp:Label ID="lblvalidation1" Visible ="false" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="lblvalidation2" Visible ="false" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="lblvalidation3" Visible ="false" runat="server" Text="Label"></asp:Label>
          <br />
            <asp:Label ID="lblvalidation4" Visible ="false" runat="server" Text="Label"></asp:Label>
          <br />
            <asp:Label ID="lblvalidation5" Visible ="false" runat="server" Text="Label"></asp:Label>
          </div></asp:Panel>


     <div class="container">
         <div class="contact-form">
    <div class="row">
      <div class="col-sm-12 col-md-12 col-md-12 col-lg-12" align="center">
        <asp:TextBox ID="txtName" placeholder="Name/ Business name" Width="355px" CssClass="contact-form" runat="server"></asp:TextBox> 

        </div></div>

           <div class="row">
      <div class="col-sm-12 col-md-12 col-md-12 col-lg-12" align="center"><asp:TextBox ID="txtEmail" placeholder="Email" Width="355px"  runat="server"></asp:TextBox> 
       
               </div></div>
            <div class="row">
      <div class="col-sm-12 col-md-12 col-md-12 col-lg-12" align="center"><asp:TextBox ID="txtNumber" placeholder="Phone Number" runat="server" Width="355px"></asp:TextBox>
          <br />
                </div></div>
									  <div class="row">
      <div class="col-sm-12 col-md-12 col-md-12 col-lg-12" align="center">
          
          <asp:TextBox ID="txtBody" placeholder="Inquery Goes here" TextMode="MultiLine" multiline="true" Rows="10" runat="server" Width="355px"></asp:TextBox>
  
                                        

                                          </div></div>
              <div class="row">
      <div class="col-sm-12 col-md-12 col-md-12 col-lg-12" align="center">    
          <br />
          <br />
          <br />
          <asp:Button ID="btnsend" runat="server" Text="Send" CssClass="btn btn-primary" style="left: 82px; top: -2px"   />
          <br />
          <br />
                  </div></div>

      </div></div>
</asp:Content>
  