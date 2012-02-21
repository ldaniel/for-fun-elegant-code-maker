$("#callEngine").click(function () {
    alert("teste");
    $("#analysisPanel").css('display', 'inline');

    var progressbarMsgs = new Array();
    progressbarMsgs[0] = "[Retrieving code...]";
    progressbarMsgs[1] = "[Analyzing anti-patterns...]";
    progressbarMsgs[2] = "[Check for code bad-smells...]";
    progressbarMsgs[3] = "[Analyzing complex structures...]";
    progressbarMsgs[4] = "[Generating elegant code, waiting...]";
    var count = 0;

    $(function() {
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
});