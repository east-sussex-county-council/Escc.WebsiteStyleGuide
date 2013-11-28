﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forms.aspx.cs" Inherits="Escc.WebsiteStyleGuide.forms" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="content">
    <div class="full-page">
        <article>
            <div class="text">
                <h1>Forms</h1>
                <p>Most buttons are inside a <code>.form</code> element (see below), but sometimes applications need extra buttons for navigation.</p>
                <p>Apply <code>.button</code> to an input element which looks like the ones we have in forms:</p>
                <input type="button" value="Example button" class="button"/>
                
                <p>To disable a button use the <code>disabled="disabled"</code> attribute, but add the <code>.buttonDisabled</code> class too for older browsers.</p>
                <input type="button" value="Example button" class="button buttonDisabled" disabled="disabled"/>

                <p>Group one or more buttons or links inside <code>.button-nav</code>, which can be applied to either a <code>p</code> or a <code>ul</code> element.
                This grouping includes indentation so should be used outside <code>.text</code>.
                </p>
            </div>
            <ul class="button-nav">
                <li><input type="button" value="Example button"/></li>
                <li><a href="javascript:return false()">Example link</a></li>
                <li class="selected"><a href="javascript:return false()">li.selected for current section</a></li>
            </ul>
            <p class="text">Apply both <code>.button-nav</code> and <code>.application-nav</code> to turn the effect into a navigaton toolbar.
                Again, this should be used outside <code>.text</code>.
            </p>
            <ul class="button-nav application-nav">
                <li><input type="button" value="Example button"/></li>
                <li><a href="javascript:return false()">Example link</a></li>
                <li><em>Emphasis for current section (better)</em></li>
            </ul>
            <div class="text">
                <p>When there's only one thing you want people to do on the page, you can use <code>.major-action</code> on the parent element of the link:</p>
                <p class="major-action"><a href="javascript:return false()">Wow, that's big!</a></p>
            </div>
        </article>
    </div>
</asp:Content>