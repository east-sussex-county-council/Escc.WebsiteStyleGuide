<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="maps.aspx.cs" Inherits="Escc.WebsiteStyleGuide.Maps" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <Metadata:MetadataControl runat="server" 
        Title="Maps based on our GIS" 
        DateIssued="2014-01-07"
        IpsvPreferredTerms="Website management"
        IsInSearch="false"
        />
    <ClientDependency:Css runat="server" Files="GisMaps" />
    <StyleGuide:Metadata runat="server" />
</asp:Content>

<asp:content runat="server" ContentPlaceHolderID="header">
    <StyleGuide:Skin runat="server" ID="skin1" />
    <EastSussexGovUK:MasterPageControl Control="HeaderDesktop" runat="server" EnableViewState="false" />    
</asp:content>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="full-page">
        <article>
            <div id="text" runat="server">
                <h1>Maps based on our GIS</h1>
                <p>Include the <code>Maps</code> stylesheet in your page for GIS maps.</p>

                <p>Older GIS maps are rendered on the server-side, and contained within an element with <code>.gisMap</code> applied.</p>
                <p>Zoom buttons use <code>p.button-nav</code> (see <a href="buttons.aspx">buttons and navigation</a>). The key is a list using <code>ul.key</code>.
                   There are arrows to move the map, but these are missing when the map is zoomed out.</p>
                <p><a href="https://github.com/east-sussex-county-council/Escc.WebsiteStyleGuide/blob/master/Escc.WebsiteStyleGuide/maps.aspx">View the source of this page</a> for examples.</p>

                <p class="button-nav">
                    <input type="submit" value="Zoom in" class="button" />
                    <input type="submit" value="Zoom out" class="button" />
                </p>

                <ul class="key">
                    <li>&#9733; Example key item</li>
                    <li>&#9733; Example key item</li>
                </ul>

                <div class="gisMap" id="Div1">
                    <input type="image" class="map" src="map-county-example.png" alt="Map" />
                </div>

                <div class="gisMap" id="gisMap">
                    <input type="image" class="map" src="map-example.png" alt="Map" />
                    <input type="image" title="move north west" class="panNW" src="//www.eastsussex.gov.uk/img/body/pan-nw.gif" alt="move north west" />
                    <input type="image" title="move north" class="panN" src="//www.eastsussex.gov.uk/img/body/pan-n.gif" alt="move north" />
                    <input type="image" title="move north east" class="panNE" src="//www.eastsussex.gov.uk/img/body/pan-ne.gif" alt="move north east" />
                    <input type="image" title="move west" class="panW" src="//www.eastsussex.gov.uk/img/body/pan-w.gif" alt="move west" />
                    <input type="image" title="move east" class="panE" src="//www.eastsussex.gov.uk/img/body/pan-e.gif" alt="move east" />
                    <input type="image" title="move south west" class="panSW" src="//www.eastsussex.gov.uk/img/body/pan-sw.gif" alt="move south west" />
                    <input type="image" title="move south" class="panS" src="//www.eastsussex.gov.uk/img/body/pan-s.gif" alt="move south" />
                    <input type="image" title="move south east" class="panSE" src="//www.eastsussex.gov.uk/img/body/pan-se.gif" alt="move south east" />
                </div>

                <p>Newer GIS maps are rendered on the client-side, contained within <code>.jsMap</code>. They don't need the zoom buttons but can use <code>ul.key</code>.</p>
                <p>They can use the <a href="fullscreen.aspx">full screen template</a> instead.</p>
                
                <div class="jsMap">
                    <img src="map-example.jpg" alt="image of a client-side map"/>
                </div>
            </div>
        </article>
    </div>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="javascript">
    <script src="<%= ResolveUrl("~/style-guide.js") %>"></script>
</asp:Content>