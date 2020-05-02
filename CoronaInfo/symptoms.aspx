<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="symptoms.aspx.cs" Inherits="CoronaInfo.symptoms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        li,.row p
        {
            font-size:20px;
            text-align:left;
        }
        iframe
        {
            border-radius:5px;
            min-height:350px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-12">
        <div class="heading">
        Symptoms of COVID-19
           <hr width="70%" />
        </div> 
        <div class="row">
             <div class="col-6">
                <p class="p-text">
                       Common symptoms
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
             <div class="col-6">
                <img src="images/image5.jpg" class="img"/>
            </div>
        </div>
    </div>
    

 
  <div  class="col-11">
        <p class="p-text" style="font-size:20px;">
            On average it takes <span>5–6 days </span>from when someone is infected with the virus for symptoms to show, however it can take up to <span>14 days</span>.<br />
            <br />
            People with mild symptoms who are otherwise healthy should <span>self-isolate.</span> Seek medical attention if you have a fever, a cough, and difficulty breathing. Call ahead.
            <br />
            <br />
            Those with weakened immune systems may develop more serious symptoms, like <span>pneumonia</span> or <span>bronchitis</span>. You may never develop symptoms after being exposed to <span>COVID-19.</span> So far, most confirmed cases are in adults, but some children have been infected. There is no evidence that children are at greater risk for getting the virus.
        </p>
  </div>
   <div class="row" >
         <div class="heading">
           Videos for COVID-19 symptoms
               <hr width="70%" />
        </div> 
        <iframe class="col-6" src="https://www.youtube.com/embed/YAc9NabBJzg" frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        <iframe class="col-6" src="https://www.youtube.com/embed/fPbYaTKKtmA" frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
   </div>
</asp:Content>
