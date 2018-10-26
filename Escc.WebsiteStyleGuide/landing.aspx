<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="landing.aspx.cs" Inherits="Escc.WebsiteStyleGuide.landing" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <Metadata:MetadataControl runat="server" 
        Title="Landing page navigation" 
        DateIssued="2015-12-24"
        IpsvPreferredTerms="Website management"
        IsInSearch="false"
        />
    <ClientDependency:Css runat="server" Files="NavigationSmall" />
    <EastSussexGovUK:ContextContainer runat="server" Desktop="true">
        <ClientDependency:Css runat="server" Files="NavigationMedium" MediaConfiguration="Medium"/>
        <ClientDependency:Css runat="server" Files="NavigationLarge" MediaConfiguration="Large"/>
    </EastSussexGovUK:ContextContainer>
    <StyleGuide:Metadata runat="server" />
</asp:Content>

<asp:content runat="server" ContentPlaceHolderID="header">
    <StyleGuide:Skin runat="server" ID="skin1" />
    <EastSussexGovUK:MasterPageControl Control="HeaderDesktop" runat="server" EnableViewState="false" />    
</asp:content>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="full-page">
        <article>
            <div class="content text-content">
                <h1>Landing navigation</h1>
                <p>Landing navigation is a reusable component only in the customer focus skin, so this page loads with that skin by default.</p>
                <p>It requires the <code>NavigationSmall</code>, <code>NavigationMedium</code> and <code>NavigationLarge</code> stylesheets, and
                for Umbraco templates there is a <a href="https://github.com/east-sussex-county-council/Escc.EastSussexGovUK.UmbracoViews/blob/master/Escc.EastSussexGovUK.UmbracoViews/Views/Layouts/_LandingNavigation.cshtml">_LandingNavigation.cshtml</a> 
                    partial view in the <code>Escc.EastSussexGovUK.UmbracoViews</code> project to handle the HTML.</p>
                <p>It is designed to work in either two or three columns, within either <code>.full-page</code> or <code>.article</code>. Use the toggles below to see each style.</p>

                <p><label for="columns">Columns:</label> <input id="columns" type="range" min="2" max="3" value="3"/></p>
                <p><label for="width">Container width:</label> <input id="width" type="range" min="1" max="2" value="2"/></p>
             </div>
        </article>
    </div>
            
    <div class="full-page" id="example-container">
        <div class="content text-content">
            <div class="landing-section three-col odd group1">
                    <h2><a href="javascript:return false()">Getting help from  us</a></h2>
                        <ul class="medium large">
                                <li><a href="javascript:return false()">Contact Adult Social Care or apply for an assessment</a></li>
                                <li><a href="javascript:return false()">What do social care services cost?</a></li>
                                <li><a href="javascript:return false()">Am I eligible for support?</a></li>
                                <li><a href="javascript:return false()">More on Getting help from us</a></li>
                        </ul>
                </div><div class="landing-section three-col even group2">
                    <h2><a href="javascript:return false()">Support to stay at home</a></h2>
                        <ul class="medium large">
                                <li><a href="javascript:return false()">Help at home you can trust</a></li>
                                <li><a href="javascript:return false()">Equipment to help me at home</a></li>
                                <li><a href="javascript:return false()">Meals in your home</a></li>
                                <li><a href="javascript:return false()">More on Support to stay at home</a></li>
                        </ul>
                </div><div class="landing-section three-col odd group3">
                    <h2><a href="javascript:return false()">Worried about someone (safeguarding)</a></h2>
                        <ul class="medium large">
                                <li><a href="javascript:return false()">Report a concern</a></li>
                                <li><a href="javascript:return false()">What is safeguarding?</a></li>
                                <li><a href="javascript:return false()">Restricting someone's freedom</a></li>
                                <li><a href="javascript:return false()">More on Worried about someone</a></li>
                        </ul>
                </div><div class="landing-section three-col even group1">
                    <h2><a href="javascript:return false()">Transport for disabled or older people</a></h2>
                        <ul class="medium large">
                                <li><a href="javascript:return false()">Blue Badges</a></li>
                                <li><a href="javascript:return false()">Disabled parking bays</a></li>
                                <li><a href="javascript:return false()">Practical guide to transport</a></li>
                        </ul>
                </div><div class="landing-section three-col odd group2">
                    <h2><a href="javascript:return false()">Looking after someone (carers)</a></h2>
                        <ul class="medium large">
                                <li><a href="javascript:return false()">A guide to respite care</a></li>
                                <li><a href="javascript:return false()">Carer's assessments</a></li>
                                <li><a href="javascript:return false()">Young carers</a></li>
                                <li><a href="javascript:return false()">More on Looking after someone</a></li>
                        </ul>
                </div><div class="landing-section three-col even group3">
                    <h2><a href="javascript:return false()">Health advice and local services</a></h2>
                        <ul class="medium large">
                                <li><a href="javascript:return false()">Mental health</a></li>
                                <li><a href="javascript:return false()">Healthy living and wellbeing</a></li>
                                <li><a href="javascript:return false()">Health promotion resources</a></li>
                                <li><a href="javascript:return false()">More on Health advice and local services</a></li>
                        </ul>
                </div>
            </div>
    </div>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="javascript">
    <script src="landing.js"></script>
    <script src="style-guide.js"></script>
</asp:Content>