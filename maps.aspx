﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="maps.aspx.cs" Inherits="Escc.WebsiteStyleGuide.Maps" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <title>Maps based on our GIS</title>
    <Egms:Css runat="server" Files="Map" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="full-page">
        <article>
            <div class="text">
                <h1>Maps based on our GIS</h1>
                <p>Load extra styles for GIS maps using <code>&lt;Egms:Css runat=&quot;server&quot; Files=&quot;Map&quot; /&gt;</code></p>

                <p>Older GIS maps are rendered on the server-side.</p>
                <p>Zoom buttons use <code>.button</code> inside <code>.zoom</code>. The key is a list using <code>ul.key</code>.
                   The map is contained within <code>.gisMap</code>. There are arrows to move the map, but these are missing when the map is zoomed out.</p>

                <span class="zoom">
                    <input type="submit" value="Zoom in" class="button" />
                    <input type="submit" value="Zoom out" class="button" />
                </span>

                <ul class="key">
                    <li>&#9733; Example key item</li>
                    <li>&#9733; Example key item</li>
                </ul>

                <div class="gisMap" id="Div1">
                    <input type="image" class="map" src="map-county-example.png" alt="Map" />
                </div>

                <div class="gisMap" id="gisMap">
                    <input type="image" class="map" src="map-example.png" alt="Map" />
                    <input type="image" title="move north west" class="panNW" src="//static2.eastsussexcc.gov.uk/eastsussexcc/pics/forms/pan-nw.gif" alt="move north west" />
                    <input type="image" title="move north" class="panN" src="//static2.eastsussexcc.gov.uk/eastsussexcc/pics/forms/pan-n.gif" alt="move north" />
                    <input type="image" title="move north east" class="panNE" src="//static2.eastsussexcc.gov.uk/eastsussexcc/pics/forms/pan-ne.gif" alt="move north east" />
                    <input type="image" title="move west" class="panW" src="//static2.eastsussexcc.gov.uk/eastsussexcc/pics/forms/pan-w.gif" alt="move west" />
                    <input type="image" title="move east" class="panE" src="//static2.eastsussexcc.gov.uk/eastsussexcc/pics/forms/pan-e.gif" alt="move east" />
                    <input type="image" title="move south west" class="panSW" src="//static2.eastsussexcc.gov.uk/eastsussexcc/pics/forms/pan-sw.gif" alt="move south west" />
                    <input type="image" title="move south" class="panS" src="//static2.eastsussexcc.gov.uk/eastsussexcc/pics/forms/pan-s.gif" alt="move south" />
                    <input type="image" title="move south east" class="panSE" src="//static2.eastsussexcc.gov.uk/eastsussexcc/pics/forms/pan-se.gif" alt="move south east" />
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
