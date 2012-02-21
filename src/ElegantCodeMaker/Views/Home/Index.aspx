<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Default.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Elegant Code Maker
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="header">
		<p><strong>Overview:</strong><br />
			This is a engine that analyze and apply techniques properly to make code more elegant. 
            Currently supports Java and C# programming languages. Follow the instructions below.
        </p>
	</div>
    <div class="body"><h2>Start</h2></div>
    <form action="/Home/Index" accept-charset="utf-8">
        <fieldset>            
            <p>
                <label for="code" style="width:500px">Put your gist code (e.g.: https://gist.github.com/1716822)</label><br />
                <input type="text" id="code" name="code" value="<%= ViewData["Code"] %>" style="width: 500px" /><br/>
                view <a href="https://gist.github.com/mine" target="_blank">my gists</a>
            </p>
            <br/>
            <p><input type="submit" id="submitcode" value="Make elegant code now!" class="submit" /></p>
        </fieldset>
    </form>
    <div class="body"><h2>Analyzing your code...</h2>
    <div id="progressbar"></div>
    <div id="progressbarMsg"></div>
    </div>
</asp:Content>
