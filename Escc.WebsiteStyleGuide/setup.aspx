<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="setup.aspx.cs" Inherits="Escc.WebsiteStyleGuide.setup" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <Metadata:MetadataControl runat="server" 
        Title="Set up a new page" 
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

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="full-page">
        <div class="content text-content">
            <h1>Set up a new page</h1>
            <p>The overall layout of your page should align with the fluid grid and baseline grid (see <a href="grid.aspx">responsive design and the grid</a>).</p>
            <p>You can use any layout you want so long as it aligns with the grid, but normally you'll want to use one of the standard layouts: <code>.full-page</code> or <code>.article</code>.</p>
        </div>
    </div>

    <p>The paragraph shows that area between the header and footer has no styles by default. A CSS reset has been applied. However at large sizes using the default skin 
        the gradient background will show through, so you'll need to cover it up.
    </p>
    
    <div class="full-page">
        <p><code>.full-page</code> gives you a white background with a minimum height.</p>
        <div class="content text-content">
            <h2>Add text formatting</h2>
            <p>Most of the time you'll want to add <code>.content .text-content</code> inside <code>.full-page</code> to add the <a href="text.aspx">standard text formatting</a>.</p>
<pre>
&lt;div class=&quot;full-page&quot;&gt;
    &lt;div class=&quot;content text-content&quot;&gt;
        Your content here.
    &lt;/div&gt;
&lt;/div&gt;
</pre>
        </div>
    </div>
    <div class="article section-demo">
        <p>The other standard layout is <code>.article</code>, which leaves room for a sidebar on large screens.</p>
        <div class="content text-content">
            <h2>Add text formatting</h2>
            <p>Most of the time you'll want to add <code>.content .text-content</code> inside <code>.article</code> to add the <a href="text.aspx">standard text formatting</a>.</p>
<pre>
&lt;div class=&quot;article&quot;&gt;
    &lt;div class=&quot;content text-content&quot;&gt;
        Your content here.
    &lt;/div&gt;
&lt;/div&gt;
</pre>
            <h2>Columns</h2>
            <div class="columns">
                <div class="column1">
                    <p>Within <code>.text-content</code>, use <code>.column1</code> and <code>.column2</code> inside a container element with <code>.columns</code> to create two columns.</p>
 <pre>
&lt;div class=&quot;columns&quot;&gt;
    &lt;div class=&quot;column1&quot;&gt;
        Your content here.
    &lt;/div&gt;
    &lt;div class=&quot;column2&quot;&gt;
        Your content here.
    &lt;/div&gt;
&lt;/div&gt;
</pre>
                </div>
                <div class="column2">
                    <p>The columns are stacked rather than side-by-side at the smallest level.</p>
                </div>

            </div>

        </div>
    </div>
    <div class="supporting section-demo">
        <p>Use <code>.supporting</code> to position content in a sidebar, which sits below <code>.article</code> on smaller screens and next to it on larger screens.</p>
    </div>
    <div class="supporting text-content content-small content-medium">
        <h2>Add text formatting</h2>
        <p>Use the classes shown below to add standard text styles in the sidebar.</p>
        <ul>
            <li>lists look like this</li>
            <li>lists look like this</li>
        </ul>
<pre>
&lt;div class=&quot;supporting text-content content-small content-medium&quot;&gt;
        Your content here.
&lt;/div&gt;
</pre>
    </div>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="javascript">
    <script src="style-guide.js"></script>
</asp:Content>