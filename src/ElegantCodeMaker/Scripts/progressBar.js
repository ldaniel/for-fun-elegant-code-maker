$(document).ready(function () {
    $("#callEngine").click(function () {

        var gistURL = $("#code").val();

        if (!isValidGistURL(gistURL)) {
            alert("Invalid Gist URL!");
            return;
        }

        if ((gistURL != null) && (gistURL.trim() != "")) {
            $("#analysisPanel").css('display', 'inline');
            $("#callEngine").css('display', 'none');

            var progressbarMsgs = new Array();
            progressbarMsgs[0] = "[Retrieving code...]";
            progressbarMsgs[1] = "[Analyzing anti-patterns...]";
            progressbarMsgs[2] = "[Check for code bad-smells...]";
            progressbarMsgs[3] = "[Analyzing complex structures...]";
            progressbarMsgs[4] = "[Generating elegant code, waiting...]";
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
        }
    });
});

function isValidGistURL(url) {
    var regExp = /https:\/\/gist.github.com\/[0-9]+/;

    if (regExp.test(url)) {
        return true;
    } else {
        return false;
    }
} 