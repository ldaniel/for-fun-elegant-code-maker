<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Default.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Elegant Code Maker
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <div id="header">
        <img src="../../Content/images/analysis.png" style="float: left" />
		<p><strong>Overview:</strong><br />
			This is an engine that analyzes and applies properly techniques to make code more elegant. 
            Currently supports Java and C# programming languages. Follow the instructions below.
        </p>
        <br/><br/><br/>
	</div>
    <div class="body"><h2>Start</h2></div>
    <form action="/Home/Index" accept-charset="utf-8">
        <fieldset>            
            <p>
                <label for="code" style="width:500px">Put your gist code (e.g.: https://gist.github.com/1716822)</label><br />
                <input type="text" id="code" name="code" value="<%= ViewData["Code"] %>" style="width: 500px" /><br/>
                (or view <a href="https://gist.github.com/mine" target="_blank">your gists</a> on GitHub)
            </p>
            <br/>
            <p>
                <input type="button" id="callEngine" value="Make elegant code now!" class="submit" />
                <input type="submit" id="submitcode" value="runEngine" style="display:none;" />
            </p>
        </fieldset>
    </form>
    <div id="analysisPanel" name="analysisPanel" style="display:none;">
        <div class="body">
            <h2>Starting engine...</h2>
            <div id="progressbar"></div>
            <div id="progressbarMsg"></div>
        </div>
    </div>
</asp:Content>
