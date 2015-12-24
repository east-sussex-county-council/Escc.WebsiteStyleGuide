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
                <p>Include the <code>MobileControls</code> stylesheet in your page for this control, though this needs to be merged into the <code>NavigationSmall</code> stylesheet in future.</p> 
                <p>The guide navigation on the <a href="content.aspx?skin=1">New and related content page (using the customer focus skin)</a> is a working example, and 
                    <a href="https://github.com/east-sussex-county-council/Escc.EastSussexGovUK/blob/master/Escc.EastSussexGovUK/js/nav.js">nav.js</a> shows the JavaScript code.</p>
            </div>
        </article>
    </div>
</asp:Content>
