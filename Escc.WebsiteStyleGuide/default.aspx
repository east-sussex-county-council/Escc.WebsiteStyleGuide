<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Escc.WebsiteStyleGuide.Default" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <Metadata:MetadataControl runat="server" 
        Title="Style guide for www.eastsussex.gov.uk" 
        DateIssued="2014-01-07"
        IpsvPreferredTerms="Website management"
        IsInSearch="false"
        />
    <StyleGuide:Metadata runat="server" />
    <ClientDependency:Css runat="server" Files="FormsSmall" />
    <EastSussexGovUK:ContextContainer runat="server" Desktop="true">
        <ClientDependency:Css runat="server" Files="FormsMedium" MediaConfiguration="Medium" />
        <ClientDependency:Css runat="server" Files="FormsLarge" MediaConfiguration="Large" />
    </EastSussexGovUK:ContextContainer>
</asp:Content>

<asp:content runat="server" ContentPlaceHolderID="header">
    <StyleGuide:Skin runat="server" ID="skin1" />
    <EastSussexGovUK:MasterPageControl Control="HeaderDesktop" runat="server" EnableViewState="false" />    
</asp:content>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="full-page">
        <article>
            <div id="text" runat="server">
                <h1>Style guide for www.eastsussex.gov.uk</h1>
                
                <p>Our website, www.eastsussex.gov.uk, has a standard header and footer, and between the two there are common patterns, 
                    but also the freedom to use new designs.</p> 
                
                <p>This style guide is a reference for designers and developers working on the site.
                    Use it alongside the <a href="https://github.com/east-sussex-county-council/Escc.WebsiteStyleGuide/">source code for this project</a>
                    to see which HTML and controls to use.</p>
                
                <p>It is also a test suite for any changes or additions to sitewide CSS.</p>

           </div>
        
            <div id="text2" runat="server">
                
                <h2>Grid-based layout</h2>
                <ul>
                    <li><a href="grid.aspx">Responsive design and the grid</a></li>
                    <li><a href="setup.aspx">Set up a new page</a></li>
                    <li><a href="fullscreen.aspx">The full screen template</a></li>
                </ul>

                <h2>Text and colours</h2>
                <ul>
                    <li><a href="text.aspx">Text and tables</a></li>
                    <li><a href="colours.aspx">Colours</a></li>
                </ul>

                <h2>Forms</h2>
                <p>There are three types of form, for three different scenarios:</p>
                <ul>
                    <li><a href="simple-form.aspx"><code>.simple-form</code></a> for interfaces with one or two components, such as a search box</li>
                    <li><a href="short-form.aspx"><code>.short-form</code></a> for more complex application interfaces</li>
                    <li><a href="service-form.aspx"><code>.service-form</code></a> for collecting and submitting data</li>
                </ul>
                <p>Whichever one you use, apply the class to a container element along with <code>.form</code>.</p>
                
                <h2>Patterns for navigation</h2>
                <ul>
                    <li><a href="content.aspx">New and related content</a></li>
                    <li><a href="landing.aspx?skin=CustomerFocusSkin">Landing navigation</a></li>
                    <li><a href="buttons.aspx">Buttons and navigation</a></li>
                    <li><a href="search.aspx">Search and paging</a></li>
                    <li><a href="maps.aspx">Maps based on our GIS</a></li>
                </ul>
                
                <h2>Patterns for content</h2>
                <ul>
                    <li><a href="quick-answer.aspx">Quick answers</a></li>
                    <li><a href="social.aspx">Social media</a></li>
                </ul>
            </div>
        </article>
    </div>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="javascript">
    <script src="<%= ResolveUrl("~/style-guide.js") %>"></script>
</asp:Content>