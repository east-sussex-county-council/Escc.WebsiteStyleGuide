﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buttons.aspx.cs" Inherits="Escc.WebsiteStyleGuide.buttons" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <Metadata:MetadataControl runat="server" 
        Title="Buttons and navigation" 
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

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="content">
    <div class="full-page">
        <article>
            <div id="text" runat="server">
                <h1>Buttons and navigation</h1>
                <p>A progress bar uses stages set up in <code>web.config</code>, and normally appears just under the <code>h1</code> element. 
                   Look at the <a href="https://github.com/east-sussex-county-council/Escc.WebsiteStyleGuide/blob/master/Web.config.example">web.config for this project</a> for an example.
                </p>
                <NavigationControls:ProgressBarControl runat="server" />
    
               <p>Most buttons are inside a <a href="simple-form.aspx"><code>.simple-form</code></a>, <a href="short-form.aspx"><code>.short-form</code></a>
                     or <a href="service-form.aspx"><code>.service-form</code></a>, but sometimes applications need extra buttons for navigation.</p>

                <p>When there's only one thing you want people to do on the page, you can use <code>.<asp:Literal runat="server" ID="mainAction" /></code> on the parent element of the link:</p>
                <p class="major-action" id="major" runat="server"><a href="javascript:return false()">Wow, that's big!</a></p>
                <p class="main-action" id="main" runat="server"><a href="javascript:return false()">Start</a></p>

                <p>For important actions in an application interface, apply <code>.button</code> to an <code>input</code> element to make it look like the ones we have in forms:</p>
                <input type="button" value="Example button" class="button"/>
                
                <p>To disable a button use the <code>disabled="disabled"</code> attribute, but add the <code>.buttonDisabled</code> class too for older browsers.</p>
                <input type="button" value="Example button" class="button buttonDisabled" disabled="disabled"/>

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

        </article>
    </div>
</asp:Content>