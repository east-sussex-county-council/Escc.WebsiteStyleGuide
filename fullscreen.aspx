<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fullscreen.aspx.cs" Inherits="Escc.WebsiteStyleGuide.FullScreen" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <title>Full screen template</title>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="fullScreenHeading">Full screen template</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="fullScreenLinks"><p><a href="default.aspx">Back to Website style guide</a></p>
    <p class="accessible"><a href="#">Link to accessible version</a></p>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="text">
        <p>When you need as much screen space as possible (typically for a map), use the full screen template.</p>
        <p>Apply it by adding the URL of your page to the <code>DesktopMasterPages</code> and <code>MobileMasterPages</code> sections in <code>web.config</code>. Look at this project for an example.</p>
        <p>There are extra placeholders (<code>fullScreenHeading</code> and <code>fullScreenLinks</code>) to add the heading and links to the bar across the top.</p>
        <p>Wherever possible, include a link to an accessible alternative using the <code>.accessible</code> class to position the link.</p>
    </div>
</asp:Content>
