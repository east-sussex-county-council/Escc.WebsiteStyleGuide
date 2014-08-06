<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="quick-answer.aspx.cs" Inherits="Escc.WebsiteStyleGuide.quickAnswer" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <Egms:MetadataControl runat="server" 
        Title="Quick answers" 
        DateIssued="2014-01-07"
        IpsvPreferredTerms="Website management"
        IsInSearch="false"
        />
    <StyleGuide:Metadata runat="server" />
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="full-page">
        <article>
            <div id="text" runat="server">
                <h1>Quick answers</h1>

                <p class="quick-answer"><strong>When most people want one thing: <strong class="quick-answer-datum">use <code>.quick-answer</code></strong></strong></p>
                
                <p><a href="https://github.com/east-sussex-county-council/Escc.WebsiteStyleGuide/blob/master/quick-answer.aspx">View the source of this page</a> to see how to format a quick answer.</p>
                <p>The full content of the page follows the quick answer. It may repeat the original answer, but deal with other questions too.</p>
                <p>Everything is inside <code>.<asp:Literal runat="server" ID="text2" /></code> for its standard <a href="text.aspx">text formatting</a>.</p>
            </div>
        </article>
    </div>
</asp:Content>
