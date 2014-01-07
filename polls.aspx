﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="polls.aspx.cs" Inherits="Escc.WebsiteStyleGuide.polls" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <title>Polls</title>
    <Egms:Css runat="server" Files="PollSmall" />
    <EastSussexGovUK:ContextContainer runat="server" Desktop="true">
        <Egms:Css runat="server" Files="PollLarge" MediaConfiguration="Large" />
    </EastSussexGovUK:ContextContainer>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="article">
        <article>
            <div class="text">
                <h1>Polls</h1>
                <p>Polls can be added to the right column to add extra interest at large screen sizes. They do not appear on small and medium screens.</p>
                <p>They are generated using a standard control that is tied to Microsoft Content Management Server 2002. Refer to the standard topic 
                    template in the <code>EastSussexCC</code> project for an example.</p>
            </div>
        </article>
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
