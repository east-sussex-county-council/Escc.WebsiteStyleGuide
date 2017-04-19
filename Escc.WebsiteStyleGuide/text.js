if (typeof(jQuery) !== 'undefined') {
    $(function() {
        "use strict";

        // Wire up tests to show the effect of removing the breadcrumb
        $("#toggle-breadcrumb").click(function() {
            $(".breadcrumb").toggle();
            if ($(".breadcrumb:visible").length) {
                $("#main").removeClass("no-breadcrumb");
            } else {
                $("#main").addClass("no-breadcrumb");
            }
        });

        $("#toggle-breadcrumb-mobile").click(function () {
            $(".breadcrumb-mobile").toggle();
            if ($(".breadcrumb-mobile:visible").length) {
                $("#main").removeClass("no-breadcrumb");
            } else {
                $("#main").addClass("no-breadcrumb");
            }
        });

        $(".toggle-text").click(function () {
            var text = $(this).html();
            $(this).html($(this).data("toggle"));
            $(this).data("toggle", text);
        });
    });
}