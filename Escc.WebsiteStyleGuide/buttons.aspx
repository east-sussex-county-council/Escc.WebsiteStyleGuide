<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buttons.aspx.cs" Inherits="Escc.WebsiteStyleGuide.buttons" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <Metadata:MetadataControl runat="server" 
        Title="Buttons and navigation" 
        DateIssued="2014-01-07"
        IpsvPreferredTerms="Website management"
        IsInSearch="false"
        />
    <StyleGuide:Metadata runat="server" />
    <ClientDependency:Css runat="server" Files="FormsSmall;NavigationSmall" />
    <EastSussexGovUK:ContextContainer runat="server" Desktop="true">
        <ClientDependency:Css runat="server" Files="FormsMedium;NavigationMedium" MediaConfiguration="Medium" />
        <ClientDependency:Css runat="server" Files="FormsLarge;NavigationLarge" MediaConfiguration="Large" />
    </EastSussexGovUK:ContextContainer>
</asp:Content>

<asp:content runat="server" ContentPlaceHolderID="header">
    <StyleGuide:Skin runat="server" ID="skin1" />
    <EastSussexGovUK:MasterPageControl Control="HeaderDesktop" runat="server" EnableViewState="false" />    
</asp:content>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="content">
    <div class="full-page">
        <article>
            <div id="text" runat="server">
                <asp:placeholder runat="server" id="customerFocusProgressBar">
                    <NavigationControls:ProgressBarControl runat="server" ConfigSectionName="ProgressBarCustomerFocus" LinkFutureStages="False" />
                    <NavigationControls:ProgressBarControl runat="server" ConfigSectionName="ProgressBarCustomerFocusWithLinks" LinkFutureStages="True" />
                </asp:placeholder>
                <h1>Buttons and navigation</h1>
                <asp:placeholder runat="server" ID="defaultProgressBar">
                    <NavigationControls:ProgressBarControl runat="server" ConfigSectionName="ProgressBar" LinkFutureStages="False"/>
                    <NavigationControls:ProgressBarControl runat="server" ConfigSectionName="ProgressBarWithLinks" LinkFutureStages="True" />
                </asp:placeholder>
                <h2>Progress bars</h2>
                
                <asp:placeholder ID="defaultProgressDescription" runat="server">
                    <p>A progress bar uses stages set up in <code>web.config</code>. It normally appears just under the <code>h1</code> element, and can use plain text or links as shown above. 
                       Each stage is a fixed width. The <code>FormsSmall</code> stylesheet is required.
                       Look at the <a href="https://github.com/east-sussex-county-council/Escc.WebsiteStyleGuide/blob/master/Escc.WebsiteStyleGuide/Web.config.example">web.config for this project</a> for an example.
                    </p>
                </asp:placeholder>
                <asp:placeholder ID="customerFocusProgressDescription" runat="server">
                    <p>A progress bar uses stages set up in <code>web.config</code>. It normally appears just above the <code>h1</code> element, and can use plain text or links as shown above. 
                       Each stage expands to fit the text. 
                       Look at the <a href="https://github.com/east-sussex-county-council/Escc.WebsiteStyleGuide/blob/master/Escc.WebsiteStyleGuide/Web.config.example">web.config for this project</a> for an example.
                    </p>
                </asp:placeholder>
    
                <h2>Left navigation</h2>
                <p>We have three styles of left navigation in use: on the <a href="https://e-library.eastsussex.gov.uk">e-library</a>, our <a href="https://democracy.eastsussex.gov.uk">democracy pages</a> and the <a href="https://new.eastsussex.gov.uk/yourcouncil/about/keydocuments/councilplan">Council Plan</a>.
                    None of these has yet been adopted as a standard style.
                </p>

                <h2>Buttons</h2>
               <p>Most buttons are inside a <a href="simple-form.aspx"><code>.simple-form</code></a>, <a href="short-form.aspx"><code>.short-form</code></a>
                     or <a href="service-form.aspx"><code>.service-form</code></a>, but sometimes applications need extra buttons for navigation.</p>

                <p>When there's only one thing you want people to do on the page, you can use <code>.<asp:Literal runat="server" ID="mainAction" /></code> on the parent element of the link:</p>
                <p class="major-action" id="major" runat="server"><a href="javascript:return false()">Wow, that's big!</a></p>
                <p class="main-action" id="main" runat="server"><a href="javascript:return false()">Start</a></p>

                <p>For important actions in an application interface, apply <code>.button</code> to an <code>input</code> element to make it look like the ones we have in forms:</p>
                <input type="button" value="Example button" class="button"/>
                
                <p>To disable a button use the <code>disabled="disabled"</code> attribute, but add the <code>.buttonDisabled</code> class too for older browsers.</p>
                <input type="button" value="Example button" class="button buttonDisabled" disabled="disabled"/>
                
                <h2>Top or bottom navigation</h2>
                <p>For lesser actions, or to create a navigation bar, group one or more <code>input</code> elements or links inside <code>.button-nav</code>, which can be applied to either a <code>p</code> or a <code>ul</code> element.
                    This grouping includes indentation so should be used outside <code>.<asp:Literal runat="server" ID="text3" /></code>.
                </p>
            </div>
            <ul class="button-nav">
                <li><input type="button" value="Example button"/></li>
                <li><a href="javascript:return false()">Example link</a></li>
                <li class="selected"><a href="javascript:return false()">li.selected for current section</a></li>
            </ul>
            <p id="text2" runat="server">Apply both <code>.button-nav</code> and <code>.application-nav</code> to turn the effect into a navigaton toolbar.
                Again, this should be used outside <code>.<asp:Literal runat="server" ID="text4" /></code>.
            </p>
            <ul class="button-nav application-nav">
                <li><input type="button" value="Example button"/></li>
                <li><a href="javascript:return false()">Example link</a></li>
                <li><em>Emphasis for current section (better)</em></li>
            </ul>
            <div class="text-content content" id="prevNext" runat="server">
                <h2>Previous and next pages in a sequence</h2>
                <p>If a set of pages is designed to be read in order you can use the previous and next navigation style, typically placed at the bottom. 
                    It's not appropriate for a multi-page form, which should use submit buttons and the HTTP POST method.</p>
                <p>Load the <code>NavigationSmall</code>, <code>NavigationMedium</code> and <code>NavigationLarge</code> stylesheets, and apply <code>.prev-next</code> 
                    within the context of <code>.text-content</code>. <a href="https://github.com/east-sussex-county-council/Escc.WebsiteStyleGuide/blob/master/Escc.WebsiteStyleGuide/Escc.WebsiteStyleGuide/buttons.aspx">View the source of this page</a> for an example of the HTML.</p>
                <nav role="navigation">
                    <div class="prev-next">
                        <p><a href="javascript:return false()" rel="prev"><em>Previous</em> <span>Title of the previous page</span></a></p>

                        <p><a href="javascript:return false()" rel="next"><em>Next</em> <span>Title of the next page</span></a></p>
                    </div>
                </nav>
            </div>

        </article>
    </div>
</asp:Content>