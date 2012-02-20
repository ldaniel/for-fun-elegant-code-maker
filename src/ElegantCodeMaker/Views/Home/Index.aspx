<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Default.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Elegant Code Maker
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
	    .ui-progressbar-value {
            background-image: url('/content/css/ui-lightness/images/pbar-ani.gif');
        }
	</style>
	<script>
	    var progressbarMsgs = new Array();
	    progressbarMsgs[0] = "Retrieving code...";
	    progressbarMsgs[1] = "Analyzing anti-patterns...";
	    progressbarMsgs[2] = "Check for code bad-smells...";
	    progressbarMsgs[3] = "Analyzing complex structures...";
	    progressbarMsgs[4] = "Generating elegant code, waiting...";
	    var count = 0;

	    $(function () {
	        $("#progressbar").progressbar({ value: 0 });
	        setTimeout(updateProgress, 500);

	        function updateProgress() {
	            var progress;
	            progress = $("#progressbar").progressbar("option", "value");
	            if (progress < 100) {
	                if ((progress % 3) == 0) $("#progressbarMsg").text(progressbarMsgs[count++]);
	                $("#progressbar").progressbar("option", "value", progress + 5);
	                setTimeout(updateProgress, 500);
	            } else {
	                $("#submitcode").click();
	            }
	        }
	    });
	</script>
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
            <p><input type="submit" id="submitcode" value="Make elegant code now!" class="submitcode" /></p>
        </fieldset>
    </form>
    <div class="body"><h2>Analyzing you code...</h2>
    <div id="progressbar"></div>
    <div id="progressbarMsg"></div>
    </div>
</asp:Content>
