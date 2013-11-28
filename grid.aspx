<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid.aspx.cs" Inherits="Escc.WebsiteStyleGuide.grid" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <link rel="stylesheet" href="style-guide.css" type="text/css"/>   
</asp:Content>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="content">
    <div class="full-page">
        <article>
            <div class="text">
                <h1>Responsive design and the grid</h1>
                <p>Our website uses a responsive design, meaning it can adapt to different screen sizes.</p>
                <p>There are three different layouts, with shortcut styles to make elements appear only at certain ones. 
                    Resize your browser to see the effect.</p>
                <p class="small demo-box"><code>.small</code></p>
                <p class="small medium demo-box"><code>.small</code> and <code>.medium</code></p>
                <p class="medium demo-box"><code>.medium</code></p>
                <p class="medium large demo-box"><code>.medium</code> and <code>.large</code></p>
                <p class="large demo-box"><code>.large</code></p>
                <h2>Fluid grid</h2>
                <p>The fluid grid is an important part of the responsive design. All horizontal measurements are specified
                    in % units, relative to the grid. These percentages change at small, medium and large sizes so you often
                    have to specify three different values.
                </p>
                <p>In the small layout, we have a 6 column grid. In the medium layout there's a 10 column grid. In the large
                    layout, it's 12 columns. You can see the grid by clicking the link below &#8211; save it as a bookmarklet.</p>
                <p><a href="javascript:void (function () { var g = document.getElementById('grid'); if (g) { g.parentNode.removeChild(g); return; } else { g = document.createElement('div'); g.id = 'grid'; g.className = 'escc-grid'; document.body.appendChild(g); } } ())">Toggle grid</a></p>
                <p>This trick only works when you're right on the boundary of small and medium, or medium and large, but it's
                    useful for checking you've got your measurements right.
                </p>
            </div>
        </article>
    </div>
</asp:Content>