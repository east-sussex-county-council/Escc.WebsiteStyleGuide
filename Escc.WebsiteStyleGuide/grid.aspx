<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid.aspx.cs" Inherits="Escc.WebsiteStyleGuide.grid" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <Metadata:MetadataControl runat="server" 
        Title="Responsive design and the grid" 
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
                <h1>Responsive design and the grid</h1>
                <p>Our website uses a responsive design, meaning it can adapt to different screen sizes.</p>
                <p>Styles are defined at small, medium and large sizes, with each set building upon the previous ones.
                    There are shortcut styles to make elements appear at certain sizes. Resize your browser to see the effect.</p>
                <p class="small demo-box">Use the <code>.small</code> class to show content only on small screens.</p>
                <p class="small medium demo-box">Use the <code>.small</code> and <code>.medium</code> classes together to show content all but the largest screens.</p>
                <p class="medium demo-box">Use the <code>.medium</code> class to show content only on medium screens.</p>
                <p class="medium large demo-box">Use the <code>.medium</code> and <code>.large</code> classes together to show content on all but the smallest screens.</p>
                <p class="large demo-box">Use the <code>.large</code> class to show content only on large screens.</p>
                <h2>Fluid grid</h2>
                <p>The fluid grid is an important part of the responsive design. All horizontal measurements are specified
                    in % units, relative to the grid. These percentages change at small, medium and large sizes so you often
                    have to specify three different values.
                </p>
                <p>In the small layout, we have a 6 column grid. In the medium layout there's a 10 column grid. In the large
                    layout, it's 12 columns. You can see the grid by clicking the link below &#8211; save it as a bookmarklet 
                    and use it to debug your layouts.</p>
                
                <p class="button-nav"><a href="#" id="toggle-grid">Show the grid</a></p>
                
                <p>You can use the <a href="grid.xlsx" type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" class="xls">grid spreadsheet</a> to work out widths relative to the grid.</p>
                
                <h2>Baseline grid</h2>
                <p>The baseline grid gives the page a vertical rhythm, and ensures that when arranging elements in multiple 
                    columns they will line up vertically.</p>
                <p>We have an 18 pixel grid. That means each line is <code>18px</code> high, and each element you create should be a multiple 
                    of <code>18px</code> in height. Be sure to include the vertical <code>margin</code>, <code>border</code> and <code>padding</code>
                    as well as the <code>height</code> of the element in your calculations.</p>
                <p>While you work out the value you want in pixels, you need to specify it in <code>em</code> units, so that the vertical
                    rhythm is maintained when the font size is changed. <code>1em</code> is equal to the current <code>font-size</code>,
                    so you need to be aware of the current <code>font-size</code> whenever you add a style. By default it is <code>13px</code> on our site.
                </p>
                <p>If you change the <code>font-size</code>, you must adjust the <code>line-height</code>. Specify a new <code>line-height</code> in <code>em</code> units
                    relative to the new <code>font-size</code> you are setting, ensuring that the new <code>line-height</code> remains a multiple of <code>18px</code>.</p>
                
               <p>For example, inside <code>.text</code>:</p>
                <ul>
                    <li><code>p</code> has a <code>line-height</code> of <code>18px</code>, and <code>margin-top</code> and <code>margin-bottom</code> each set to <code>9px</code> (2 x 18 pixels in total)</li>
                    <li><code>h1</code> has a <code>line-height</code> of <code>36px</code> (2 x 18 pixels), and <code>padding-top</code>, <code>padding-bottom</code> and 
                        <code>border-bottom</code> altogether add another 18 pixels.</li>
                </ul>

                <p>You can use the <a href="grid.xlsx" type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" class="xls">grid spreadsheet</a> to work out heights relative to the baseline grid.</p>
                
            </div>
        </article>
    </div>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="javascript">
    <script src="grid.js"></script>
    <script src="grid-page.js"></script>
    <script src="style-guide.js"></script>
</asp:Content>