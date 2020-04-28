<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="overview.aspx.cs" Inherits="CoronaInfo.overview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1" />
    <style type="text/css">
        .img
        {
               width:70%;
               border-radius: 10px 30px;
        }
        .text
        {
            text-align:justify;
            font-size:20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="overview-page-img-1" style="float:left;width:30%;height:200px;">
        <img src="images/image3.png" class="img"/>
    </div>
    <div style="width:100%;height:205px;padding:10px;">
        <p class="text">
            Coronavirus disease (COVID-19) is an infectious disease caused by a newly discovered coronavirus.<br /> 
            Most people who fall sick with COVID-19 will experience mild to moderate symptoms and recover without special treatment.
        </p>
    </div>

  <div>
      <br />
      <br />
    <h2>
        How it spreads
    </h2>
  </div> 
  <div style="padding:50px;">
    <div style="width:60%;float:left;height:205px;padding:10px;">
        <p class="text">
            The virus that causes COVID-19 is mainly transmitted through droplets generated when an infected person coughs, sneezes, or exhales. These droplets are too heavy to hang in the air, and quickly fall on floors or surfaces.<br />
            You can be infected by breathing in the virus if you are within close proximity of someone who has COVID-19, or by touching a contaminated surface and then your eyes, nose or mouth.<br />
            If you then touch your mouth or nose without washing your hands first, you may accidentally give that virus an entry point into your own body.
        </p>
    </div> 
     <div style="float:right;width:30%;height:200px;">
        <img src="images/spread.png" class="img""/>
   </div>
  </div>

</asp:Content>
