<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CoronaInfo.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="heading">
    
    <div class="flex-container" align="center">
         <div class="heading-conutry">
             <asp:Label ID="labContry" CssClass="conutry-name" runat="server" Text="India"></asp:Label>
             <asp:DropDownList ID="DropDownList1" runat="server" CssClass="c-list">
                <asp:ListItem Selected="True" Enabled="true">Change contry</asp:ListItem>
                <asp:ListItem >India</asp:ListItem>
                <asp:ListItem >US</asp:ListItem>
                <asp:ListItem >China</asp:ListItem>

             </asp:DropDownList>
        </div>
        <div class="cases-panel">
            <table cellpadding="5" cellspacing="5" style="border:none; border-collapse:collapse;">
                <tr style="border">
                    <td style="color:lightgreen;">total</td>
                    <td>/</td>
                    <td style="color:green;">deaths </td>
                </tr>
                <tr style="border-top: 2px solid lightgray;">
                    <td> 
                        <asp:Label ID="Label1" runat="server" Text="22547" ForeColor="#FF9933"></asp:Label>  </td>
                     <td>/</td>
                    <td>  
                        <asp:Label ID="Label2" runat="server" Text="560" ForeColor="Red"></asp:Label>   </td>
                </tr>
            </table>
        </div>        
    </div>
    </div>
    <!--<img class="corona-backgraoud-image" src="images/220px-SARS-CoV-2_without_background.webp" alt="Alternate Text" />
   -->
     <div class="home-container">
         <div class="nav-links">
             <a href="#" class="selected">home</a>
             <a href="#">Overview</a>
             <a href="#">Symptoms</a>
             <a href="#">Prevention</a>
             <a href="#">statistics</a>
             <a href="#">about</a>
         </div>
     </div>
</asp:Content>
