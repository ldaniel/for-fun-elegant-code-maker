<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Elegant Code Maker
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form action="/Home/Index">        
        <p>Seu código <a href="https://gist.github.com/mine" target="_blank">gist</a> (Ex.: https://gist.github.com/1716822)</p>        
        <input type="text" name="code" value="<%= ViewData["Code"] %>" style="width: 200px" />        
        <p><input type="submit" value="Make elegant code now!"/></p>
    </form>
</asp:Content>
