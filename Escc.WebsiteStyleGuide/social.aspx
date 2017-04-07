<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="social.aspx.cs" Inherits="Escc.WebsiteStyleGuide.social" %>
<%@ Register TagPrefix="EastSussexGovUK" TagName="Share" Src="~/share.ascx" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <Metadata:MetadataControl runat="server" 
        Title="Social media" 
        DateIssued="2014-01-07"
        IpsvPreferredTerms="Website management"
        IsInSearch="false"
        />
    <ClientDependency:Css runat="server" Files="SocialMediaSmall" />
    <EastSussexGovUK:ContextContainer runat="server" Desktop="true">
        <ClientDependency:Css runat="server" Files="SocialMediaLarge" MediaConfiguration="Large" />
    </EastSussexGovUK:ContextContainer>
    <StyleGuide:Metadata runat="server" />
</asp:Content>

<asp:content runat="server" ContentPlaceHolderID="header">
    <StyleGuide:Skin runat="server" ID="skin1" />
    <EastSussexGovUK:MasterPageControl Control="HeaderDesktop" runat="server" EnableViewState="false" />    
</asp:content>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="article">
        <article>
            <div id="text" runat="server">
                <h1>Social media</h1>

               <p>You can see examples of Facebook and Twitter controls on this page, but resize your browser because there are separate ones for small and large screens.</p>
               <p>Links to <a href="javascript:return false()" class="twitter">Twitter</a>, <a href="javascript:return false()" class="facebook">Facebook</a>,
                   <a href="javascript:return false()" class="youtube">YouTube</a> and <a href="javascript:return false()" class="flickr">Flickr</a> are preceded by an 
                   appropriate icon. You can add a class to any element to get the same effect.</p>
            </div>
            
            <div class="social-mobile text small medium">
                <p class="facebook">Find us on Facebook: <a href="http://www.facebook.com/eastsussexlibraries" id="ctl00_content_ctl07_fb">www.facebook.com/eastsussexlibraries</a></p>
                <p class="twitter">Read updates on Twitter: <a href="https://twitter.com/esccroads" id="ctl00_content_ctl07_tw">Tweets by @esccroads</a></p>
            </div>

            <div id="shareCustomerFocus" runat="server">
                <div class="content text-content">
                    <p>Use the <code>~/share.ascx</code> usercontrol in WebForms (shown here) or <code>EastSussexGovUK/Features/_Share.cshtml</code> partial view in MVC to include the share links.</p>
                    <EastSussexGovUK:Share ID="shareDefault" runat="server" />
                </div>
            </div>

        </article>
    </div>
    
    <div class="social large">
        <div class="supporting">
            <div class="fb-page" data-href="http://www.facebook.com/eastsussexlibraries" data-tabs="timeline" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="http://www.facebook.com/eastsussexlibraries" class="fb-xfbml-parse-ignore"><a href="http://www.facebook.com/eastsussexlibraries">Find us on Facebook</a></blockquote></div>
        </div>

        <div class="supporting"><a class="twitter-timeline" data-dnt=true href="https://twitter.com/esccroads" data-widget-id="256045302744743936">Tweets by @esccroads</a>
            <script>    !function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = "//platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs); } } (document, "script", "twitter-wjs");</script>
        </div>
   </div>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="javascript">
    <ClientDependency:Script runat="server" Files="SocialMedia" />
    <script src="style-guide.js"></script>
</asp:Content>