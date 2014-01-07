<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="Escc.WebsiteStyleGuide.search" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <Egms:MetadataControl runat="server" 
        Title="Search and paging" 
        DateIssued="2014-01-07"
        IpsvPreferredTerms="Website management"
        />
</asp:Content>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="content">
    <div class="full-page">
        <article>
            <div class="text">          
                <h1>Search and paging</h1>    
                <p>For paging through a set of results use <code>EsccWebTeam.NavigationControls.PagingControl</code> above and below the results. It will apply the <code>.infoBar</code> class.</p>
                <p>The results themselves typically display several fields, and use a <code>dl.itemDetail</code> for each result.
                    Where there's only one result, add <code>.onlyItem</code> to the <code>dl</code>.</p>
                <p>Both the paging and results should be outside <code>.text</code>.</p>
                <p><a href="https://github.com/east-sussex-county-council/Escc.WebsiteStyleGuide/blob/master/search.aspx">View the source of this page</a> for examples.</p>
            </div>
            
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

        </article>
    </div>
</asp:Content>