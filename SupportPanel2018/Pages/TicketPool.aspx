<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TicketPool.aspx.cs" Inherits="SupportPanel2018.Pages.TicketPool" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <main>
         <div class="wrapper">
         <br>
         <span class="title">Ticket Pool</span>
         <div class="row">
            <div class='col s12 m4'>
                <asp:PlaceHolder ID="phTicketsHigh" runat="server"></asp:PlaceHolder>
            </div>
            <div class='col s12 m4'>
                <asp:PlaceHolder ID="phTicketsMedium" runat="server"></asp:PlaceHolder>
            </div>
            <div class='col s12 m4'>
                <asp:PlaceHolder ID="phTicketsLow" runat="server"></asp:PlaceHolder>
            </div>
         </div>
        </div>
      </main>
</asp:Content>