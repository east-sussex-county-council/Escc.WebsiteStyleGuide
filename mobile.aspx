﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mobile.aspx.cs" Inherits="Escc.WebsiteStyleGuide.mobile" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <title>Adapting content for mobile</title>
    <Egms:Css runat="server" Files="MobileControls" />
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="full-page">
        <article>
            <div class="text">
                <h1>Adapting content for mobile</h1>
                <p>There's just one mobile interface element at the moment, which allows a menu visible on a large screen
                    to be hidden by default on mobile.</p>               
                <p>Include the <code>MobileControls</code> stylesheet in your page for this control.</p>
                <p>Your application's script needs to generate a <code>.menu-toggle</code> element.</p>
                <nav class="menu-toggle small medium"><a href="#">Show menu &#9660;</a></nav>
                <p>When clicked, the application's script should show the menu and change the text of the <code>.menu-toggle</code> element.</p>
                <nav class="menu-toggle small medium"><a href="#">Hide menu &#9650;</a></nav>

                <p class="large">It's not needed at this size, where the menu can always be visible, 
                so make your browser window smaller to see it.</p>
            </div>
        </article>
    </div>
</asp:Content>
