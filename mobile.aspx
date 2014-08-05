<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mobile.aspx.cs" Inherits="Escc.WebsiteStyleGuide.mobile" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <Egms:MetadataControl runat="server" 
        Title="Interfaces for mobile" 
        DateIssued="2014-01-07"
        IpsvPreferredTerms="Website management"
        IsInSearch="false"
        />
    <Egms:Css runat="server" Files="MobileControls" />
    <StyleGuide:Metadata runat="server" />
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <StyleGuide:Skin runat="server" ID="skin" />
    <div class="full-page">
        <article>
            <div id="text" runat="server">
                <h1>Interfaces for mobile</h1>
                <p>There's just one mobile interface element at the moment, which allows a menu visible on a large screen
                    to be hidden by default on mobile.</p>               
                <p>Include the <code>MobileControls</code> stylesheet in your page for this control. 
                    <a href="https://github.com/east-sussex-county-council/Escc.WebsiteStyleGuide/blob/master/mobile.aspx">View the source of this page</a> for an example.</p>
                <p>Your application's script needs to generate a <code>.menu-toggle</code> element.</p>
                <nav class="menu-toggle small medium"><a href="javascript:return false()">Show menu &#9660;</a></nav>
                <p>When clicked, the application's script should show the menu and change the text of the <code>.menu-toggle</code> element.</p>
                <nav class="menu-toggle small medium"><a href="javascript:return false()">Hide menu &#9650;</a></nav>

                <p class="large">It's not needed at this size, where the menu can always be visible, 
                so make your browser window smaller to see it.</p>
            </div>
        </article>
    </div>
</asp:Content>
