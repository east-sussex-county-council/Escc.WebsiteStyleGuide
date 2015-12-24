<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="content.aspx.cs" Inherits="Escc.WebsiteStyleGuide.content" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <Metadata:MetadataControl runat="server" 
        Title="New and related content" 
        DateIssued="2014-01-07"
        IpsvPreferredTerms="Website management"
        IsInSearch="false"
        />
    <StyleGuide:Metadata runat="server" />
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="content">
    
<asp:PlaceHolder runat="server" id="defaultSkin">
    <div class="full-page">
        <article>
            <div id="text1" runat="server">
                <h1>New and related content</h1>
            </div>

            <div class="section-nav">
                <img src="https://placeimg.com/144/144/animals" alt="example image"/>
                <ul>
                    <li><a href="javascript:return false()">Example link</a></li>
                    <li><a href="javascript:return false()">Example link</a></li>
                </ul>
            </div>           
                
            <p class="text">Use <code>.section-nav</code> to introduce a set of related pages, either with an image and one list of links, or with no image and two lists.</p>

            <div class="section-nav">
                <ul>
                    <li><a href="javascript:return false()">Example link</a></li>
                    <li><a href="javascript:return false()">Example link</a></li>
                </ul>
                <ul>
                    <li><a href="javascript:return false()">Example link</a></li>
                    <li><a href="javascript:return false()">Example link</a></li>
                </ul>
            </div>

            <div class="latestBox">
            <section>
                <h2 class="latest">Latest</h2>
                <p>Use a <code>.latestBox</code> to highlight new or updated content. It appears straight after the Heading 1 and, optionally, the <code>.section-nav</code>.
                    If you need more than a few words, <a href="javascript:return false()">link to a separate page</a>.
                </p>
                <ul><li>If there's a list it should appear to be part of the item above.</li></ul>
                <p>Authors can add multiple items, but the HTML can be unpredictable.</p>
                <div class="item"><p>So we need to support different variations.</p></div>
            </section>
            </div>

            <div class="text">
                <h2>Use Microsoft Content Management Server controls</h2>
                <p>Both <code>.section-nav</code> and <code>.latestBox</code> are normally used on Microsoft Content Management Server pages, 
                    and have standard controls. Refer to the standard topic template in the <code>EastSussexCC</code> project for examples.</p>

                <h2>How to format the page content</h2>
                <p>The actual content of the page goes here, inside <code>.text</code> for its standard <a href="text.aspx">text formatting</a>.</p>
                
                <h2>About related pages</h2>
                <p>Related pages on other parts of our website, or other websites, go at the bottom of the page. This is <strong>not</strong> meant 
                    for navigation within the current section. Use the <code>Related</code> control to generate this box &#8211; 
                    <a href="https://github.com/east-sussex-county-council/Escc.WebsiteStyleGuide/blob/master/content.aspx">view the source of this page</a> for an example.</p>
            </div>

            <EastSussexGovUK:Related runat="server">
                <PagesTemplate>
                    <ul>
                        <li><a href="javascript:return false()">Example link</a></li>
                        <li><a href="javascript:return false()">Example link</a></li>
                    </ul>
                </PagesTemplate>
                <WebsitesTemplate>
                    <ul>
                        <li><a href="javascript:return false()">Example link</a></li>
                        <li><a href="javascript:return false()">Example link</a></li>
                    </ul>
                </WebsitesTemplate>
            </EastSussexGovUK:Related>
        </article>
    </div>
</asp:PlaceHolder>

<div class="article" id="customerFocusSkin" runat="server">
    <ClientDependency:Css runat="server" Files="NavigationSmall;MobileControls"/>
    <EastSussexGovUK:ContextContainer runat="server" Desktop="true">
        <ClientDependency:Css runat="server" Files="NavigationMedium" MediaConfiguration="Medium"/>
        <ClientDependency:Css runat="server" Files="NavigationLarge" MediaConfiguration="Large"/>
    </EastSussexGovUK:ContextContainer>
    <ClientDependency:Script runat="server" Files="Navigation"/>
    <article>
        <div class="content text-content">
            <h1>New and related content</h1>
            
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
                Resize this page to see a working example.</p>
            <p>For Umbraco templates there is a <code>_GuideNavigation.cshtml</code> partial view in the <code>Escc.EastSussexGovUK.UmbracoViews</code> project to handle the HTML.</p>


            <div class="latest">
            <section>
                <h2>Latest</h2>
                <p>Use a <code>.latest</code> box to highlight new or updated content. It appears straight after the Heading 1.
                    If you need more than a few words, <a href="javascript:return false()">link to a separate page</a>.
                </p>
                <ul><li>Authors can add lists.</li></ul>
                <p>Authors can add multiple paragraphs.</p>
            </section>
            </div>
                
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
