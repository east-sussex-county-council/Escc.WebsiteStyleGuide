<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="setup.aspx.cs" Inherits="Escc.WebsiteStyleGuide.setup" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <Egms:MetadataControl runat="server" 
        Title="Set up a new page" 
        DateIssued="2014-01-07"
        IpsvPreferredTerms="Website management"
        IsInSearch="false"
        />
    <link rel="stylesheet" href="style-guide.css" type="text/css"/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="full-page">
        <div class="text">
            <h1>Set up a new page</h1>
            <p>The overall layout of your page should align with the fluid grid and baseline grid (see <a href="grid.aspx">responsive design and the grid</a>).</p>
            <p>You can use any layout you want so long as it aligns with the grid, but normally you'll want to use one of the standard layouts: <code>.full-page</code> or <code>.article</code>.</p>
        </div>
    </div>

    <p>The paragraph shows that area between the header and footer has no styles by default. A CSS reset has been applied. However at large sizes the gradient background will
        show through, so you'll need to cover it up.
    </p>
    
    <div class="full-page">
        <p><code>.full-page</code> gives you a white background with a minimum height.</p>
        <div class="text">
            <h2>Add text formatting</h2>
            <p>Most of the time you'll want to add <code>.text</code> inside <code>.full-page</code> to add the <a href="text.aspx">standard text formatting</a>.</p>
<pre>
&lt;div class=&quot;full-page&quot;&gt;
    &lt;div class=&quot;text&quot;&gt;
        Your content here.
    &lt;/div&gt;
&lt;/div&gt;
</pre>
        </div>
    </div>
    <div class="article section-demo">
        <p>The other standard layout is <code>.article</code>, which leaves room for a sidebar on large screens.</p>
        <div class="text">
            <h2>Add text formatting</h2>
            <p>Most of the time you'll want to add <code>.text</code> inside <code>.article</code> to add the <a href="text.aspx">standard text formatting</a>.</p>
<pre>
&lt;div class=&quot;article&quot;&gt;
    &lt;div class=&quot;text&quot;&gt;
        Your content here.
    &lt;/div&gt;
&lt;/div&gt;
</pre>
            <h2>Columns</h2>
            <div class="tCols">
                <div class="tCol1">
                    <p>Within <code>.text</code>, use <code>.tCol1</code> and <code>.tCol2</code> inside a container element with <code>.tCols</code> to create two columns.</p>
 <pre>
&lt;div class=&quot;tCols&quot;&gt;
    &lt;div class=&quot;tCol1&quot;&gt;
        Your content here.
    &lt;/div&gt;
    &lt;div class=&quot;tCol2&quot;&gt;
        Your content here.
    &lt;/div&gt;
&lt;/div&gt;
</pre>
                </div>
                <div class="tCol2">
                    <p>The columns are stacked rather than side-by-side at the smallest level.</p>
                </div>

            </div>
        </div>
    </div>
    <div class="supporting section-demo">
        <p>Use <code>.supporting</code> to position content in a sidebar, which sits below <code>.article</code> on smaller screens and next to it on larger screens.</p>
    </div>
    <div class="supporting supporting-text">
        <h2>Add text formatting</h2>
        <p>Use <code>.supporting</code> and <code>.supporting-text</code> together to add standard text styles in the sidebar.</p>
        <ul>
            <li>lists look like this</li>
            <li>lists look like this</li>
        </ul>
<pre>
&lt;div class=&quot;supporting supporting-text&quot;&gt;
        Your content here.
&lt;/div&gt;
</pre>
    </div>
</asp:Content>