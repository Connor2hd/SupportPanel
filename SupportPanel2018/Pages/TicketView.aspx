<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TicketView.aspx.cs" Inherits="SupportPanel2018.Pages.TicketView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label></h2>
    <h3><asp:Label ID="lblAuthor" runat="server" Text="Label"></asp:Label></h3>
    <div class="row">
        <div class="col s12 m5">
         <asp:PlaceHolder ID="phCard" runat="server"></asp:PlaceHolder>
          <span class="white-text">
              <asp:Label ID="lblBody" runat="server" Text="Label"></asp:Label>
              <br />
              <asp:Label ID="lblDate" runat="server" Text="Label"></asp:Label>
          </span>
        </div>
      </div>
    </div>
</asp:Content>
