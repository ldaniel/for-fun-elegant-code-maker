<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Elegant.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Elegant Code Maker
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br/>
    <div class="elegantTitle">Really elegant code</div>
    <br/><br/>
    <div style="width:780px; text-align:center;">
        <pre id="myElegantCode" class="brush:java; highlight:[1]; gutter:true; toolbar:false;"><%= ViewData["YourCode"] %></pre>
    </div>
    <form action="/Home/ElegantCode" accept-charset="utf-8">
        <fieldset>            
            <p><input type="submit" value="Make again :)" class="submitcode" /></p>
        </fieldset>
    </form>
</asp:Content>
