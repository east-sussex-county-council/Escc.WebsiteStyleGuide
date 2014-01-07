﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="social.aspx.cs" Inherits="Escc.WebsiteStyleGuide.social" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <title>Social media</title>
    <Egms:Css runat="server" Files="SocialMediaSmall" />
    <EastSussexGovUK:ContextContainer runat="server" Desktop="true">
        <Egms:Css runat="server" Files="SocialMediaLarge" MediaConfiguration="Large" />
    </EastSussexGovUK:ContextContainer>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="article">
        <article>
            <div class="text">
                <h1>Social media</h1>

               <p>You can see examples of Facebook and Twitter controls on this page, but resize your browser because there are separate ones for small and large screens.</p>
               <p>You can apply classes to links to add an appropriate social media icon for <a href="#" class="twitter">Twitter</a>, <a href="#" class="facebook">Facebook</a>,
                   <a href="#" class="youtube">YouTube</a> and <a href="#" class="flickr">Flickr</a>.</p>
                <p>The 'Related pages' box is shown because social media on small screens appears between it and the 'Share' box.</p>
            </div>
            
            <EastSussexGovUK:Related runat="server">
                <PagesTemplate>
                    <ul>
                        <li><a href="#">Example link</a></li>
                        <li><a href="#">Example link</a></li>
                    </ul>
                </PagesTemplate>
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
</asp:Content>