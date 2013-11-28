<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="text.aspx.cs" Inherits="Escc.WebsiteStyleGuide.text" %>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="full-page">
        <article>
            <div class="text">
                <h1>Standard text styles</h1>
                <p>Inside an element with <code>.text</code> applied you get standard text styles for all of the elements you see here, including the Heading 1 above.</p>
                <h2>Heading 2</h2>
                <p>A paragraph following the heading.</p>
                <p>Two consecutive paragraphs. This one includes an <a id="unvisited" runat="server">unvisited link</a> and a <a href="text.aspx">visited link</a>. Try tabbing to them and hovering over them.</p>
                <h3>Heading 3</h3>
                <p>A paragraph following the heading.</p>
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
                <p>A paragraph following an ordered list. This one has an <abbr title="It means this">abbreviation</abbr>.</p>
                <h5>Heading 5</h5>
                <p>A paragraph following the heading.</p>
                <h6>Heading 6</h6>
                <p>A paragraph following the heading. There's a horizontal rule next.</p>
                <hr />
                <small>The small print.</small>
            </div>
        </article>
    </div>
</asp:Content>
