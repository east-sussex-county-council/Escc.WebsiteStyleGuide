<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="content.aspx.cs" Inherits="Escc.WebsiteStyleGuide.content" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <title>Standard elements on content pages</title>
    <Egms:Css runat="server" Files="PollSmall;SocialMediaSmall" />
    <EastSussexGovUK:ContextContainer runat="server" Desktop="true">
        <Egms:Css runat="server" Files="PollLarge;SocialMediaLarge" MediaConfiguration="Large" />
    </EastSussexGovUK:ContextContainer>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="article">
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
               
               <h2>Social media</h2>
               <p>You can see examples of Facebook and Twitter controls on this page, but resize your browser because there are separate ones for small and large screens.</p>
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
            
            <div class="social-mobile text small medium">
                <p class="facebook">Find us on Facebook: <a href="http://www.facebook.com/eastsussexlibraries" id="ctl00_content_ctl07_fb">www.facebook.com/eastsussexlibraries</a></p>
                <p class="twitter">Read updates on Twitter: <a href="https://twitter.com/esccroads" id="ctl00_content_ctl07_tw">Tweets by @esccroads</a></p>
            </div>

            <EastSussexGovUK:Share ID="Share1" runat="server" />
        </article>
    </div>
    
    <div class="social large">
        <div class="supporting">
            <div id="ctl00_content_ctl10_ctl01_facebook" class="fb-like-box" data-width="252" data-header="true" data-href="http://www.facebook.com/eastsussexlibraries" data-show-faces="false" data-stream="true"></div>
        </div>

        <div class="supporting"><a class="twitter-timeline" data-dnt=true href="https://twitter.com/esccroads" data-widget-id="256045302744743936">Tweets by @esccroads</a>
            <script>    !function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = "//platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs); } } (document, "script", "twitter-wjs");</script>
        </div>
   </div>

    

    <div class="supporting-text poll">
	    <article>
	        <h2 class="pollQ">What does a poll look like?</h2>
            <label for="ctl00_content_poll_PresentationModeControlsContainer_ctl00_poll1"><input value="1" name="ctl00$content$poll$PresentationModeControlsContainer$ctl00$" type="radio" />The HTML is generated by a control</label>
            <label for="ctl00_content_poll_PresentationModeControlsContainer_ctl00_poll2"><input value="2" name="ctl00$content$poll$PresentationModeControlsContainer$ctl00$" type="radio" />You need to include the <code>PollSmall</code> and <code>PollLarge</code> CSS files</label>
            <label for="ctl00_content_poll_PresentationModeControlsContainer_ctl00_poll3"><input value="3" name="ctl00$content$poll$PresentationModeControlsContainer$ctl00$" type="radio" />The control works with Microsoft Content Management Server</label>
            <input type="submit" value="Vote" name="ctl00$content$poll$PresentationModeControlsContainer$ctl00$pollVote" id="ctl00_content_poll_PresentationModeControlsContainer_ctl00_pollVote" class="button" />
        </article>
    </div>
    
    <div class="supporting-text poll">
    	<article>
    	    <div class="cornerTR"><div class="cornerTL"></div></div>
            <h2 class="pollQ">What does a poll look like?</h2>
            <div class="pollAnswer">Answer 1</div><span class="pollBackBar"><span style="width: 20%" class="bar">&nbsp;</span><span class="percent">20%</span></span>
            <div class="pollAnswer">Answer 2</div><span class="pollBackBar"><span style="width: 30%" class="bar">&nbsp;</span><span class="percent">30%</span></span>
            <div class="pollAnswer">Answer 3</div><span class="pollBackBar"><span style="width: 50%" class="bar"><span class="percent">50%</span></span></span>
            <p>Total votes: <strong>40</strong></p>
            <p>Optional text after the poll can include <a href="#">a link</a>.</p>
            <p><a class="pollLink" href="#">Link to related content</a></p>
            <div class="cornerBR"><div class="cornerBL"></div></div>
    	</article>
    </div>
</asp:Content>
