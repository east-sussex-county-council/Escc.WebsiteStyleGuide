<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="colours.aspx.cs" Inherits="Escc.WebsiteStyleGuide.colours" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <Egms:MetadataControl runat="server" 
        Title="Colours" 
        DateIssued="2014-01-07"
        IpsvPreferredTerms="Website management"
        />
    <link rel="stylesheet" href="style-guide.css" type="text/css"/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="full-page">
        <article>
            <div class="text">
                <h1>Colours</h1>
                <p>Our website has a core brand palette and you should normally choose colours from here. 
                    You can add more options by using <a href="http://0to255.com/">tints of these colours</a>. 
                    Record here any tints you use, so that they may be re-used.</p>
                <p>You <strong>must</strong> use colour combinations which pass <a href="http://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html">WCAG 2.0 success criterion 1.4.3</a> 
                    on contrast. The <a href="http://www.paciellogroup.com/resources/contrastAnalyser">Colour Contrast Analyser</a> from the Paicello Group is a good way to check this.</p>
                
                <div class="tCols">
                    <div class="tCol1">
                        <h2>Core brand palette</h2>
                        <ul class="swatches">
                            <li><span class="swatch" style="background: #00A1DE"></span> #00A1DE</li>
                            <li><span class="swatch" style="background: #003C69"></span> #003C69</li>
                            <li><span class="swatch" style="background: #44697D"></span> #44697D</li>
                            <li><span class="swatch" style="background: #BED600"></span> #BED600</li>
                        </ul>
                        <h2>Text</h2>
                        <ul class="swatches">
                            <li><span class="swatch" style="background: #131313"></span> #131313</li>
                            <li><span class="swatch" style="background: #272727"></span> #272727</li>
                        </ul>
                    </div>
                    <div class="tCol2">
                        <h2>Secondary palette</h2>
                        <ul class="swatches">
                            <li><span class="swatch" style="background: #056B0B"></span> #056B0B
                                <ul>
                                    <li><span class="swatch" style="background: #A7CBA9"></span> #A7CBA9 is 35% tint</li>
                                    <li><span class="swatch" style="background: #CDE1CE"></span> #CDE1CE is 20% tint</li>
                                </ul>
                            </li>
                            <li><span class="swatch" style="background: #FF5800"></span> #FF5800
                                <ul>
                                    <li><span class="swatch" style="background: #FFAB7F"></span>#FFAB7F is 50% tint</li>
                                    <li><span class="swatch" style="background: #FFDDCC"></span>#FFDDCC is 20% tint</li>
                                </ul>
                            </li>
                            <li><span class="swatch" style="background: #DAE1E5"></span> #DAE1E5</li>
                        </ul>
                    </div>
                </div>
                <div class="tCols">
                    <div class="tCol1">
                        <h2>Tables</h2>
                        <ul class="swatches">
                            <li><span class="swatch" style="background: #C7DBE4"></span> #C7DBE4</li>
                            <li><span class="swatch" style="background: #ECECEC"></span> #ECECEC</li>
                        </ul>
                        <h2>Forms</h2>
                        <ul class="swatches">
                            <li><span class="swatch" style="background: #CCEEFA"></span> #CCEEFA</li>
                            <li><span class="swatch" style="background: #9C9C9C"></span> #9C9C9C</li>
                            <li><span class="swatch" style="background: #B21313"></span> #B21313</li>
                            <li><span class="swatch" style="background: #FBE2E2"></span> #FBE2E2</li>
                            <li><span class="swatch" style="background: #F6F4E8"></span> #F6F4E8</li>
                        </ul>
                    </div>
                    <div class="tCol2">
                        <h2>Primary button gradient</h2>
                        <ul class="swatches">
                            <li><span class="swatch" style="background: #1E5B83"></span> #1E5B83</li>
                            <li><span class="swatch" style="background: #0B4164"></span> #0B4164</li>
                        </ul>
                        <h2>Breadcrumb trail</h2>
                        <ul class="swatches">
                            <li><span class="swatch" style="background: #00345F"></span> #00345F</li>
                            <li><span class="swatch" style="background: #194C7E"></span> #194C7E</li>
                            <li><span class="swatch" style="background: #196BA6"></span> #196BA6</li>
                            <li><span class="swatch" style="background: #6BC8EC"></span> #6BC8EC</li>
                        </ul>                      
                    </div>
                </div>
            </div>
        </article>
    </div>
</asp:Content>
