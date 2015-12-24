if (typeof(jQuery) !== 'undefined') {
    $(function() {
        "use strict";

        var columnsSlider = $("#columns");
        var widthSlider = $("#width");
        var container = $("#example-container");
        var sections = $(".landing-section", container);

        if (widthSlider && container) {
            widthSlider.change(function() {
                if (this.value === "1") {
                    container.removeClass("full-page").addClass("article");
                } else if (this.value === "2") {
                    container.removeClass("article").addClass("full-page");
                }
            });
        }

        if (columnsSlider && sections.length) {
            columnsSlider.change(function() {
                if (this.value === "2") {
                    sections.removeClass("three-col").addClass("two-col");
                } else if (this.value === "3") {
                    sections.removeClass("two-col").addClass("three-col");
                }
            });
        }
    });
}