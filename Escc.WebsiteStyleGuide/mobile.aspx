<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mobile.aspx.cs" Inherits="Escc.WebsiteStyleGuide.mobile" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <Metadata:MetadataControl runat="server" 
        Title="Interfaces for mobile" 
        DateIssued="2014-01-07"
        IpsvPreferredTerms="Website management"
        IsInSearch="false"
        />
    <ClientDependency:Css runat="server" Files="MobileControls" />
    <StyleGuide:Metadata runat="server" />
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="full-page">
        <article>
            <div id="text" runat="server">
                <h1>Interfaces for mobile</h1>
                <p>There's just one mobile interface element at the moment, which allows a menu visible on a large screen
                    to be hidden by default on mobile.</p>               
                <p>Include the <code>MobileControls</code> stylesheet in your page for this control. 
                    <a href="https://github.com/east-sussex-county-council/Escc.WebsiteStyleGuide/blob/master/mobile.aspx">View the source of this page</a> for an example.</p>
                <p>Your application's script needs to generate two <code>.menu-toggle</code> elements, and use them to show or hide some content as in the example script below.</p>
                <nav class="menu-toggle menu-toggle-show small medium">Show menu</nav><br />
                <nav class="menu-toggle menu-toggle-hide small medium">Hide menu</nav>
                
<pre>
&lt;script&gt;
    if (jQuery != 'undefined') {
        $(function () {
            var menu = $(".thing-to-hide").hide();
            var toggle = $('&lt;div class="menu-toggle menu-toggle-show small"&gt;Show menu&lt;/div&gt;');

            toggle.insertBefore(menu).click(function () {
                if (menu.is(":visible")) {
                    menu.slideUp();
                    toggle.removeClass("menu-toggle-hide").addClass("menu-toggle-show").text("Show menu");
                } else {
                    menu.slideDown();
                    toggle.removeClass("menu-toggle-show").addClass("menu-toggle-hide").text("Hide menu");
                }
            });

        });
    }
&lt;/script&gt;
</pre>

                <p class="large">It's not needed at this size, where the menu can always be visible, 
                so make your browser window smaller to see it.</p>
            </div>
        </article>
    </div>
</asp:Content>
