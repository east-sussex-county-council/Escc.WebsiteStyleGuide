<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="setup.aspx.cs" Inherits="Escc.WebsiteStyleGuide.setup" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <link rel="stylesheet" href="style-guide.css" type="text/css"/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="content">
    <h1>Setup a new page</h1>
    <p>The area between the header and footer has no styles by default. You can use any layout here, but normally you'll 
    want to use one of the standard layouts.</p>
    <div class="full-page section-demo">
        <p><code>.full-page</code> gives you a white background with a minimum height.</p>
        <div class="text">
            <h2>Add text formatting</h2>
            <p>Most of the time you'll want to add <code>.text</code> inside <code>.full-page</code> to add the standard text formatting.</p>
        </div>
    </div>
    <div class="article section-demo">
        <p>The other standard layout is <code>.article</code>, which leaves room for a sidebar on large screens.</p>
        <div class="text">
            <h2>Add text formatting</h2>
            <p>Most of the time you'll want to add <code>.text</code> inside <code>.article</code> to add the standard text formatting.</p>
        </div>
    </div>
    <div class="supporting section-demo">
        <p>Use <code>.supporting</code> to add content to a sidebar, which sits below <code>.article</code> on smaller screens and next to it on larger screens.</p>
    </div>
    <div class="supporting supporting-text">
        <h2>Add text formatting</h2>
        <p>Use <code>.supporting</code> and <code>.supporting-text</code> together to add standard text styles in the sidebar.</p>
    </div>
</asp:Content>