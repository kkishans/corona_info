﻿<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CoronaInfo.Default" %>
<%@ MasterType VirtualPath="main.Master" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="home-baner" style="margin-top:100px;">
         <div class="col-4 heading-conutry">
             <asp:Label ID="labContry" CssClass="conutry-name" runat="server" Text="India" ForeColor="Black"></asp:Label>
        </div>
        <div class="col-6 cases-panel">
            <table cellpadding="5" cellspacing="5" style="border:none; border-collapse:collapse;font-size:35px;">
                <tr style="border">
                    <td style="color:red;">Confirmed</td>
                    <td></td>
                    <td style="color:green;">recovered </td>
                    <td></td>
                    <td style="color:gray;">deaths </td>
                </tr>
                <tr style="border-top: 2px solid lightgray;">
                    <td> 
                        <asp:Label ID="labConfirmed" runat="server" Text="22547" ForeColor="red"></asp:Label>  </td>
                     <td></td>
                    <td>  
                        <asp:Label ID="labrecovered" runat="server" Text="560" ForeColor="green"></asp:Label>   </td>
                     <td></td>
                     <td>
                         <asp:Label ID="labdeaths" runat="server" Text="560" ForeColor="gray"></asp:Label>   
                     </td>
                </tr>
            </table>
        </div>        
    </div>
    <!--<img class="corona-backgraoud-image" src="images/220px-SARS-CoV-2_without_background.webp" alt="Alternate Text" />
   -->
    <asp:Label ID="labTest" runat="server" Text="Confirmed case chart"></asp:Label>
    <div class="graph-container" class="col-12">
        <asp:Chart ID="Chart1" runat="server" BorderlineWidth="0" CssClass="chart-img" 
            Width="600px" >
            <Series>
                <asp:Series Name="Series1" ChartType="Line">
                    <Points>
                                               
                    </Points>
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                    <AxisX Title = "date" >
                        <MajorGrid Enabled = "false" />
                    </AxisX>
                    
                    <AxisY Title = "Confimed cases">
                        <MajorGrid Enabled = "false" />
                    </AxisY>

                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
    </div>
</asp:Content>
