<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="symptoms.aspx.cs" Inherits="CoronaInfo.symptoms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .img
        {
               width:100%;
               height:400px;
               border-radius: 10px 30px;
        }
        .text
        {
            text-align:justify;
            font-size:24px;
        }
        li
        {
            text-align:left;
            font-size:20px;
            font-family:Sans-Serif
        }
        iframe
        {
            border-radius:5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <h2>
        Symptoms of COVID-19
    </h2>
  </div> 
  <div style="">
    <div style="width:50%;float:left;padding:10px;">
        <p class="text">
               Common symptoms:
        </p>
        <ul>
            <li>Fever</li>
            <li>Tiredness</li>
            <li>Dry Cough</li>
        </ul>
        <br />
        <p class="text">
               Some people may experience:
        </p>
        <ul>
            <li>Aches and pains.</li>
            <li>Nasal congestion.</li>
            <li>Runny nose</li>
            <li>Sore throat</li>
            <li>Diarrhoea</li>
        </ul>
    </div> 
     <div style="float:right;width:50%;">
        <img src="images/image5.jpg" class="img""/>
   </div>
  </div>
  <div style="clear:both;padding-top:30px;">
        <p class="text" style="font-size:20px   ">
            On average it takes 5–6 days from when someone is infected with the virus for symptoms to show, however it can take up to 14 days.<br />
            <br />
            People with mild symptoms who are otherwise healthy should self-isolate. Seek medical attention if you have a fever, a cough, and difficulty breathing. Call ahead.
            <br />
            <br />
            Those with weakened immune systems may develop more serious symptoms, like pneumonia or bronchitis. You may never develop symptoms after being exposed to COVID-19. So far, most confirmed cases are in adults, but some children have been infected. There is no evidence that children are at greater risk for getting the virus.
        </p>
  </div>
   <div >
        <h3 style="padding:30px;">
            Videos for COVID-19 symptoms
        </h3>
        <iframe style="margin-right:30px;" width="560" height="315" src="https://www.youtube.com/embed/YAc9NabBJzg" frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        <iframe width="560" height="315" src="https://www.youtube.com/embed/fPbYaTKKtmA" frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
   </div>
</asp:Content>
