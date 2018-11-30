<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="content.aspx.cs" Inherits="Escc.WebsiteStyleGuide.content" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <Metadata:MetadataControl runat="server" 
        Title="Linking to related content" 
        DateIssued="2014-01-07"
        IpsvPreferredTerms="Website management"
        IsInSearch="false"
        />
    <StyleGuide:Metadata runat="server" />
</asp:Content>

<asp:content runat="server" ContentPlaceHolderID="header">
    <StyleGuide:Skin runat="server" ID="skin1" />
    <EastSussexGovUK:MasterPageControl Control="HeaderDesktop" runat="server" EnableViewState="false" ID="headerDesktop" />    
</asp:content>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="article">
    <ClientDependency:Css runat="server" Files="NavigationSmall;MobileControls"/>
    <EastSussexGovUK:ContextContainer runat="server" Desktop="true">
        <ClientDependency:Css runat="server" Files="NavigationMedium" MediaConfiguration="Medium"/>
        <ClientDependency:Css runat="server" Files="NavigationLarge" MediaConfiguration="Large"/>
    </EastSussexGovUK:ContextContainer>
    <ClientDependency:Script runat="server" Files="Navigation"/>
    <article>
        <div class="content text-content">
            <h1>Linking to related content</h1>
            
            <nav role="navigation" title="All pages in this section">
                <ol class="guide-nav">
                    <li class="first-half"><span class="step-number">1.</span><a href="javascript:return false()">A page with a very long title that will wrap onto multiple lines</a></li>
                    <li class="first-half"><span class="step-number">2.</span><a href="javascript:return false()">A second page</a></li>
                    <li class="second-half"><span class="step-number">3.</span>Current page</li>
                    <li class="second-half"><span class="step-number">4.</span><a href="javascript:return false()">Yet another page</a>
                    </li>

                </ol>
            </nav>

           <p>Guide navigation (shown above) uses the <code>.guide-nav</code> class, and goes directly under the <code>h1</code>. 
                It requires the <code>NavigationSmall</code>, <code>NavigationMedium</code> and <code>NavigationLarge</code> stylesheets.</p>
            <p>If you also load the <code>MobileControls</code> stylesheet and <code>Navigation</code> script, guide navigation will collapse into a dropdown menu on small screens. 
                Resize this page to see a working example. (<code>MobileControls</code> needs to be merged into the <code>NavigationSmall</code> stylesheet in future.)</p>
            <p>For Umbraco templates there is a <a href="https://github.com/east-sussex-county-council/Escc.EastSussexGovUK.UmbracoViews/blob/master/Escc.EastSussexGovUK.UmbracoViews/Views/Layouts/_GuideNavigation.cshtml">_GuideNavigation.cshtml</a> 
                partial view in the <code>Escc.EastSussexGovUK.Umbraco</code> project to handle the HTML.</p>
            
            <h2>Collapsible menus without .guide-nav</h2>
            <p>You can get the same collapsible menu effect without the <code>.guide-nav</code> styling by applying either <code>.nav-menu</code> or <code>.nav-menu-medium</code> to
                any other kind of menu instead of <code>.guide-nav</code>. The first collapses only on small screens; the second on both small and medium.
                <a href="https://github.com/east-sussex-county-council/Escc.EastSussexGovUK/blob/master/Escc.EastSussexGovUK/js/nav.js">nav.js</a> shows the JavaScript code.</p>
            
            <h2>How to format the page content</h2>
            <p>The actual content of the page goes here, inside <code>.content .text-content</code> for its standard <a href="text.aspx">text formatting</a>.</p>
                
        </div>
    </article>
</div>
    
<div class="supporting related-links text-content content-small content-medium">
    <h2 class="aural">Related links</h2>
    <ul>
        <li><a href="javascript:return false()">Example link</a></li>
        <li><a href="javascript:return false()">Example link</a></li>
    </ul>
</div>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="javascript">
    <script src="style-guide.js"></script>
</asp:Content>