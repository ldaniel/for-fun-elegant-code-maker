<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Default.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    About Elegant Code Maker
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="header">
		<p><strong>Yes, this is a joke!</strong><br />
			Really, this is a fake engine that not analyzes and applies properly techniques to make code more elegant.
        </p>
	</div>
    <div class="body">
        <img src="../../Content/images/YUNOGuy.png" width="200" height="150" style="float: left" />
        <h2>Y U didn't make?</h2>
        <p>
            In my arrogant opinion, generally, there is some consensus about what an elegant code, in fact.
            However, I have seen some elegant code samples that add complexity, verbosity and other uncomfortable 
            issues. Of course, there are some things in any development language that push code from “acceptable” to 
            “impressive” level.
        </p>
        <p>
            Truthfully, every developer has a different definition of elegance and all may be correct under a 
            properly perspective - or not :). So, the development of a *perfect* <i>elegant code maker</i> is an 
            intangible task.
        </p>
        <br/>
        <p>
            by <a href="http://twitter.com/leandronet">@leandronet</a>
        </p>
        <br/><br/><br/>
    </div>
</asp:Content>
