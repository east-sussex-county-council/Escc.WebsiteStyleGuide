<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fullscreen.aspx.cs" Inherits="Escc.WebsiteStyleGuide.FullScreen" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <Egms:MetadataControl runat="server" 
        Title="Full screen template" 
        DateIssued="2014-01-07"
        IpsvPreferredTerms="Website management"
        IsInSearch="false"
        />
    <StyleGuide:Metadata runat="server" />
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="fullScreenHeading">Full screen template</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="fullScreenLinks"><p><a href="default.aspx">Back to Style guide</a></p>
    <p class="accessible"><a href="javascript:return false()">Link to accessible version</a></p>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div id="text" runat="server">
        <p>When you need as much screen space as possible (typically for a map), use the full screen template.</p>
        <p>Apply it by adding the URL of your page to the <code>DesktopMasterPages</code> and <code>MobileMasterPages</code> sections in <code>web.config</code>.</p>
        <p>There are extra placeholders (<code>fullScreenHeading</code> and <code>fullScreenLinks</code>) to add the heading and links to the bar across the top.</p>
        <p>Wherever relevant, include a link to an accessible alternative using the <code>.accessible</code> class to position the link.</p>
        <p>Look at the <a href="https://github.com/east-sussex-county-council/Escc.WebsiteStyleGuide/blob/master/Web.config.example">web.config for this project</a>
            and the <a href="https://github.com/east-sussex-county-council/Escc.WebsiteStyleGuide/blob/master/fullscreen.aspx">source of this page</a> for an example.</p>
    </div>
</asp:Content>
