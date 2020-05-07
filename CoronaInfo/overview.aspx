<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="overview.aspx.cs" Inherits="CoronaInfo.overview" %>
<%@ MasterType VirtualPath="main.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<meta name="viewport" content="width=device-width, initial-scale=1" />
       
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="heading" >
       Overview
       <hr width="70%" />
    </div>
    <div class="row">
        <div class="col-6" >
            <img src="images/image3.png" class="img" />
        </div>
        <div class="col-6">
            <p class="p-text">
                <span class="highlight">Coronavirus disease (COVID-19)</span> is an infectious disease caused by a newly discovered coronavirus.<br /> 
                <br />
                Most people who fall sick with <span>COVID-19</span> will experience mild to moderate symptoms and recover without special treatment.
            </p>
        </div>
    </div>
  <div class="heading">
        How it spread?
      <hr width="70%" />
    </div> 
  <div class="row">
    <div class="col-6">
        <p class="p-text">
            The virus that causes COVID-19 is mainly transmitted through droplets generated when an <span>infected person coughs, sneezes, or exhales.</span> These droplets are too heavy to hang in the air, and quickly fall on floors or surfaces.<br />
            <br />
            You can be infected by breathing in the virus if you are within close proximity of someone who has COVID-19, or by touching a contaminated surface and then your eyes, nose or mouth.<br />
            <br />
            If you then touch your mouth or nose without <span>washing your hands first</span>, you may accidentally give that virus an entry point into your own body.

        </p>
    </div> 
     <div class="col-6">
        <img class="img" height="600px" src="images/spread.png" />
   </div>
  </div>
</asp:Content>
