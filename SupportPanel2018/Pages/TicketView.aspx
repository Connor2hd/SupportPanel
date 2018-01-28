<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TicketView.aspx.cs" Inherits="SupportPanel2018.Pages.TicketView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1><asp:Label ID="lblTitle" runat="server" Text=""></asp:Label> - Severity Level: <asp:Label ID="lblSeverity" runat="server" Text=""></asp:Label> - <asp:Label ID="lblTicketID" runat="server" Text=""></asp:Label></h1>
    <h4><asp:Label ID="lblAuthor" runat="server" Text=""></asp:Label></h4>
    <div class="row">
         <asp:PlaceHolder ID="phCard" runat="server"></asp:PlaceHolder>
          <span class="white-text">
              <asp:Label ID="lblBody" runat="server" Text="Label"></asp:Label>
              <br />
              <asp:Label ID="lblBodyAuthor" runat="server" Text="Label"></asp:Label>    <asp:Label ID="lblDate" runat="server" Text="Label"></asp:Label>
          </span>
        </div>
    <asp:PlaceHolder ID="phReply" runat="server"></asp:PlaceHolder>
    
    <br />

    <div class="row">
        <div class="col s6 offset-s2">
        <asp:TextBox id="txtReplyBody" TextMode="multiline" Columns="200" Rows="5" runat="server" CssClass="materialize-textarea" />
        <br />
        <asp:Button ID="btnSubmitReply" runat="server" Text="Submit Response" CssClass="waves-effect waves-light btn" OnClick="btnSubmitReply_Click" />
        </div>
    </div>

</asp:Content>
