function esccToggleGrid() {
    /// <summary>Toggle on or off a visualisation of the fluid and baseline grids used for www.eastsussex.gov.uk</summary>
    //
    //  Use the following bookmarklet to load and trigger this script:
    //  javascript:void ((function(){ if (typeof(esccToggleGrid) == 'undefined') { $.getScript('https://www.eastsussex.gov.uk/styleguide/grid.js').done(function(){esccToggleGrid();}) } else { esccToggleGrid();} })())
    
    $("<link href=\"https://www.eastsussex.gov.uk/styleguide/grid.css\" rel=\"stylesheet\" type=\"text/css\" />").appendTo('head');

    var g = document.getElementById('escc-grid');

    function turnOff() {
        g.parentNode.removeChild(g);
        $(document.body).unbind('keyup', reactToEscapeKey);
    }

    function createGrid(columns) {
        if (g) turnOff();
        g = $("<div id=\"escc-grid\" class=\"container\" />")[0];
        document.body.appendChild(g);

        gridColumns(columns);
        gridLines();

        $(document.body).keyup(reactToEscapeKey);
        $("<a>Press escape to exit <span>x<span></a>").appendTo(g).click(turnOff).wrap("<p class=\"grid-escape\">");
    }

    function gridColumns(columns) {
        for (var i = 1; i <= columns; i++) {
            $("<div class=\"grid-column\" />").appendTo(g);
            if (i < columns) $("<div class=\"grid-gutter\" />").appendTo(g);
        }
    }

    function gridLines() {
        var div = $("<div class=\"grid-lines\">");

        var lines = Math.floor(2000 / 18);
        for (var i = 0; i < lines; i++) {
            $("<div />").appendTo(div);
        }

        $(g).append(div);

    }

    function reactToEscapeKey(e) {
        if (e.keyCode == 27) {
            turnOff();
        }
    }

    if (g) {
        turnOff();
    } else {
        onEsccBreakpointChange(function () { createGrid(6); }, function () { createGrid(10); }, function () { createGrid(12); });
    }
}