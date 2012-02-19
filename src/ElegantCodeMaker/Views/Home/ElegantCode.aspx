<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Elegant.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Elegant Code Maker
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="elegantTitle">Código realmente elegantemente</div>
    <pre id="myElegantCode" class="brush:java; highlight:[1]; gutter:true; toolbar:false;"><%= ViewData["YourCode"] %></pre>
</asp:Content>
