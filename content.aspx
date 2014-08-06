<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="content.aspx.cs" Inherits="Escc.WebsiteStyleGuide.content" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <Egms:MetadataControl runat="server" 
        Title="New and related content" 
        DateIssued="2014-01-07"
        IpsvPreferredTerms="Website management"
        IsInSearch="false"
        />
    <StyleGuide:Metadata runat="server" />
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="full-page">
        <article>
            <div id="text1" runat="server">
                <h1>New and related content</h1>
            </div>

            <asp:PlaceHolder runat="server" id="defaultSkin">
            <div class="section-nav">
                <img src="http://placekitten.com/144/144" alt="example image - a kitten"/>
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
            </div>
            </asp:PlaceHolder>

            <div class="content text-content" id="customerFocusSkin" runat="server">
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
            </div>

            <div id="text3" runat="server">
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
</asp:Content>
