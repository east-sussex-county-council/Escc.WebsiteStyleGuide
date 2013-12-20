<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="text.aspx.cs" Inherits="Escc.WebsiteStyleGuide.text" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <title>Text and tables</title>    
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="full-page">
        <article>
            <div class="text">
                <h1>Text and tables</h1>
                <p>Inside an element with <code>.text</code> applied you get standard text styles for all of the elements you see here, including the Heading 1 above.</p>
                <h2>Heading 2</h2>
                <p>A paragraph following the heading.</p>
                <p>Two consecutive paragraphs. This one includes an <a id="unvisited" runat="server">unvisited link</a> and a <a href="text.aspx">visited link</a>. Try tabbing to them and hovering over them.</p>
                <h3>Heading 3</h3>
                <p>A paragraph following the heading. Here's a <a href="#" class="pdf">File to download <span class="downloadDetail">(PDF, 100K)</span></a>.</p>
                <ul>
                    <li>An unordered list between paragraphs</li>
                    <li>An unordered list between paragraphs</li>
                </ul>
                <p>A paragraph following an unordered list.</p>
                <h4>Heading 4</h4>
                <p>A paragraph following the heading.</p>
                <ol>
                    <li>An ordered list between paragraphs</li>
                    <li>An ordered list between paragraphs
                        <ol>
                            <li>With a nested list
                                <ol><li>And another
                                    <ol><li>And another
                                        <ol><li>And another</li></ol>
                                        </li></ol>
                                    </li></ol>
                            </li>
                        </ol>
                    </li>
                </ol>
                <p>A paragraph following an ordered list. This one has an <abbr title="It means this">abbreviation</abbr>, some <strong>important text</strong> and a <strong class="warning">warning</strong>.</p>
                <h5>Heading 5</h5>
                <p>A paragraph following the heading.</p>
                <dl>
                    <dt>A definition list</dt>
                    <dd>With a description</dd>
                    <dt>And a second item</dt>
                    <dd>With a description</dd>
                </dl>
                <h6>Heading 6</h6>
                <p>A paragraph following the heading. There's a horizontal rule next.</p>
                <hr />
                <small>The small print.</small>
                <p>Tables highlight alternate rows with different colours, but in IE8 that's not supported so tables look different in that browser.</p>
                <table>
                    <caption>Table caption</caption>
                    <thead><tr><th>Column header inside <code>thead</code></th><th>Another column</th><th>Use <code>.numeric</code> for numeric data</th></tr></thead>
                    <tbody>
                        <tr><td>Data</td><td>Data</td><td class="numeric">1</td></tr>
                        <tr><td>Data</td><td>Data</td><td class="numeric">2</td></tr>
                        <tr class="subHeading"><td colspan="3">This uses tr<code>.subHeading</code> and the <code>colspan</code> attribute</td></tr>
                        <tr><td>Data</td><td>Data</td><td class="numeric">3</td></tr>
                        <tr><td>Data</td><td>Data</td><td class="numeric">4</td></tr>
                        <tr class="totalsRow"><td>Total</td><td>Total</td><td>This uses tr<code>.totalsRow</code></td></tr>
                    </tbody>
                </table>
                
                <p>Sometimes tables have row headings instead of column headings, but they're not styled by default.</p>
                <table>
                    <tbody>
                        <tr><th>Heading</th><td>Data</td><td>Data</td></tr>
                        <tr><th>Heading</th><td>Data</td><td>Data</td></tr>
                        <tr><th>Heading</th><td>Data</td><td>Data</td></tr>
                        <tr><th>Heading</th><td>Data</td><td>Data</td></tr>
                    </tbody>
                </table>
                
                <p>If the table is particularly complex, use <code>.complexData</code> to add more gridlines.</p>
                         <table class="complexData">
                    <thead><tr><th>Column header</th><th>Another column</th><th>Another column</th></tr></thead>
                    <tbody>
                        <tr><th>Heading</th><td>Data</td><td>Data</td></tr>
                        <tr><th>Heading</th><td>Data</td><td>Data</td></tr>
                        <tr><th>Heading</th><td>Data</td><td>Data</td></tr>
                        <tr><th>Heading</th><td>Data</td><td>Data</td></tr>
                    </tbody>
                </table>
            </div>
        </article>
    </div>
</asp:Content>
