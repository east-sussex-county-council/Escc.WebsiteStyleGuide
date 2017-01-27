if (typeof(jQuery) !== 'undefined') {
    $(function() {
        "use strict";

        // Wire up tests to show the effect of changing the breadcrumb length
        $("#toggle-breadcrumb").click(function() {
            $(".breadcrumb").toggle();          
        });

        var longBreadcrumb = '<li class="up level1"><span class="aural">Level 1: </span><a href="https://www.eastsussex.gov.uk/">Home</a></li><li class="up level2"><span class="aural">Level 2: </span><a href="https://www.eastsussex.gov.uk/yourcouncil/">Your Council</a></li><li class="up level3"><span class="aural">Level 3: </span><a href="https://www.eastsussex.gov.uk/yourcouncil/about/">About the County Council</a></li><li class="up level4"><span class="aural">Level 4: </span><a href="https://www.eastsussex.gov.uk/yourcouncil/about/improving/">Assessing our performance and improving the way we work</a></li><li class="up level5"><span class="aural">Level 5: </span><a href="https://www.eastsussex.gov.uk/yourcouncil/about/improving/measuringperformance/">Monitoring our performance</a></li><li class="up level6"><span class="aural">Level 6: </span><a href="https://www.eastsussex.gov.uk/yourcouncil/about/improving/measuringperformance/scrutiny/">Scrutiny – reviewing and improving services</a></li><li class="current level7"><span class="aural">Level 7: </span><a href="https://www.eastsussex.gov.uk/yourcouncil/about/improving/measuringperformance/scrutiny/hosc/">East Sussex Health Overview and Scrutiny Committee (HOSC)</a></li>';
        var thisBreadcrumb = $(".breadcrumb").html();
        $("#long-breadcrumb").click(function () {
            var breadcrumb = $(".breadcrumb");
            if (breadcrumb.html() === thisBreadcrumb) {
                breadcrumb.html(longBreadcrumb);
            } else {
                breadcrumb.html(thisBreadcrumb);
            }
        });

        $(".toggle-text").click(function() {
            var text = $(this).html();
            $(this).html($(this).data("toggle"));
            $(this).data("toggle", text);
        });
    });
}