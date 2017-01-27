<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="Escc.WebsiteStyleGuide.search" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <Metadata:MetadataControl runat="server" 
        Title="Search and paging" 
        DateIssued="2014-01-07"
        IpsvPreferredTerms="Website management"
        IsInSearch="false"
        />
    <StyleGuide:Metadata runat="server" />
</asp:Content>

<asp:content runat="server" ContentPlaceHolderID="header">
    <StyleGuide:Skin runat="server" ID="skin1" />
    <EastSussexGovUK:MasterPageControl Control="HeaderDesktop" runat="server" EnableViewState="false" />    
</asp:content>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="content">
    <div class="full-page">
        <article>
            <div id="text" runat="server">
                <h1>Search and paging</h1>    
                <p>For paging through a set of results use <code>Escc.NavigationControls.WebForms.PagingControl</code> above and below the results. It will apply the <code>.infoBar</code> class.</p>
                <p>The results themselves typically display several fields, and use a <code>dl.itemDetail</code> for each result.
                    Where there's only one result, add <code>.onlyItem</code> to the <code>dl</code>.</p>
                <p id="defaultSkinOnly" runat="server">Both the paging and results should be outside <code>.text</code>.</p>
                <p><a href="https://github.com/east-sussex-county-council/Escc.WebsiteStyleGuide/blob/master/Escc.WebsiteStyleGuide/search.aspx">View the source of this page</a> for examples.</p>
            </div>
            
            <div id="classAroundPaging" runat="server">
                <NavigationControls:PagingController runat="server" ID="paging" TotalResults="100" />
                <NavigationControls:PagingBarControl runat="server" id="pagingTop" PagingControllerId="paging" />

                <dl class="itemDetail">
                    <dt>Field</dt>
                    <dd>Value</dd>
                    <dt>Field</dt>
                    <dd>Value</dd>
                </dl>

                <dl class="itemDetail">
                    <dt>Field</dt>
                    <dd>Value</dd>
                    <dt>Field</dt>
                    <dd>Value</dd>
                </dl>
            
                <dl class="itemDetail">
                    <dt>Field</dt>
                    <dd>Value</dd>
                    <dt>Field</dt>
                    <dd>Value</dd>
                </dl>
            
                <NavigationControls:PagingBarControl runat="server" id="pagingBottom" PagingControllerId="paging" />
            
                <dl class="itemDetail onlyItem">
                    <dt>Total results</dt>
                    <dd>1</dd>
                    <dt>Class applied</dt>
                    <dd><code>.onlyItem</code></dd>
                </dl>
            
                <NavigationControls:PagingBarControl runat="server" id="PagingBarControl1" PagingControllerId="paging" />
            </div>
        </article>
    </div>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="javascript">
    <script src="<%= ResolveUrl("~/style-guide.js") %>"></script>
</asp:Content>