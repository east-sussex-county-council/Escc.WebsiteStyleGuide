if (typeof (jQuery) !== 'undefined') {
    $(function() {
        "use strict";

        $('<input type="button" value="Add an alert" />').appendTo(".skin-chooser > div").click(function() {
            displayAlerts([{ alert: '<p><a href="https://www.eastsussex.gov.uk/educationandlearning/schools/schoolclosures/">Emergency school closures</a> &#8211; check if your school is affected, and subscribe to alerts.</p>' }]);
        });
    });
}