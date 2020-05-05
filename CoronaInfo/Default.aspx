<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CoronaInfo.Default" %>
<%@ MasterType VirtualPath="main.Master" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="home-baner" style="margin-top:100px;">
         <div class="col-4 heading-conutry">
             <asp:Label ID="labContry" CssClass="conutry-name" runat="server" Text="India"></asp:Label>
             <asp:DropDownList ID="DropDownList1" runat="server" CssClass="c-list">
                <asp:ListItem Selected="True" Enabled="true">Change contry</asp:ListItem>
                <asp:ListItem >India</asp:ListItem>
                <asp:ListItem >US</asp:ListItem>
                <asp:ListItem >China</asp:ListItem>

             </asp:DropDownList>
        </div>
        <div class="col-6 cases-panel">
            <table cellpadding="5" cellspacing="5" style="border:none; border-collapse:collapse;font-size:35px;">
                <tr style="border">
                    <td style="color:lightgreen;">Confirmed</td>
                    <td>-</td>
                    <td style="color:dodgerblue;">recovered </td>
                    <td>-</td>
                    <td style="color:green;">deaths </td>
                </tr>
                <tr style="border-top: 2px solid lightgray;">
                    <td> 
                        <asp:Label ID="labConfirmed" runat="server" Text="22547" ForeColor="#FF9933"></asp:Label>  </td>
                     <td>/</td>
                    <td>  
                        <asp:Label ID="labrecovered" runat="server" Text="560" ForeColor="#FF6600"></asp:Label>   </td>
                     <td>/</td>
                     <td>
                         <asp:Label ID="labdeaths" runat="server" Text="560" ForeColor="red"></asp:Label>   
                     </td>
                </tr>
            </table>
        </div>        
    </div>
    <!--<img class="corona-backgraoud-image" src="images/220px-SARS-CoV-2_without_background.webp" alt="Alternate Text" />
   -->
     

    <div class="graph-container">
        <asp:Label ID="labTest" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Content>
