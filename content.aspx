<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="content.aspx.cs" Inherits="Escc.WebsiteStyleGuide.content" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <title>Standard elements on content pages</title>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="full-page">
        <article>
            <div class="text">
                <h1>Standard elements on content pages</h1>

                <div class="section-nav">
                    <img src="http://placekitten.com/144/144" alt="example image - a kitten"/>
                    <ul>
                        <li><a href="#">Example link</a></li>
                        <li><a href="#">Example link</a></li>
                    </ul>
                </div>
                
                <p>Use <code>.section-nav</code> to introduce a set of related pages, either with an image and one list of links, or with no image and two lists.</p>

                <div class="section-nav">
                    <ul>
                        <li><a href="#">Example link</a></li>
                        <li><a href="#">Example link</a></li>
                    </ul>
                    <ul>
                        <li><a href="#">Example link</a></li>
                        <li><a href="#">Example link</a></li>
                    </ul>
                </div>

                  <div class="latestBox">
                   <section>
                        <h2 class="latest">Latest</h2>
                        <p>Use a <code>.latestBox</code> to highlight new or updated content. It normally appears straight after the Heading 1.
                            If you need more than a few words, <a href="#">link to a separate page</a>.
                        </p>
                        <ul><li>If there's a list it should appear to be part of the item above.</li></ul>
                        <p>Authors can add multiple items, but the HTML can be unpredictable.</p>
                        <div class="item"><p>So we need to support different variations.</p></div>
                   </section>
                   </div>
                
               <p class="quick-answer"><strong>When most people want one thing: <strong class="quick-answer-datum">use <code>.quick-answer</code></strong></strong></p> 

            </div>
            
            <EastSussexGovUK:Related runat="server">
                <PagesTemplate>
                    <ul>
                        <li><a href="#">Example link</a></li>
                        <li><a href="#">Example link</a></li>
                    </ul>
                </PagesTemplate>
                <WebsitesTemplate>
                    <ul>
                        <li><a href="#">Example link</a></li>
                        <li><a href="#">Example link</a></li>
                    </ul>
                </WebsitesTemplate>
            </EastSussexGovUK:Related>

            <EastSussexGovUK:Share ID="Share1" runat="server" />
        </article>
    </div>
</asp:Content>
