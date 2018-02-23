<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="service-form.aspx.cs" Inherits="Escc.WebsiteStyleGuide.serviceForm" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <Metadata:MetadataControl runat="server" 
        Title="Forms using .service-form" 
        DateIssued="2014-01-07"
        IpsvPreferredTerms="Website management"
        IsInSearch="false"
        />
    <StyleGuide:Metadata runat="server" />
    <ClientDependency:Css runat="server" Files="FormsSmall" />
    <EastSussexGovUK:ContextContainer runat="server" Desktop="true">
        <ClientDependency:Css runat="server" Files="FormsMedium" MediaConfiguration="Medium" />
        <ClientDependency:Css runat="server" Files="FormsLarge" MediaConfiguration="Large" />
    </EastSussexGovUK:ContextContainer>
</asp:Content>

<asp:content runat="server" ContentPlaceHolderID="header">
    <StyleGuide:Skin runat="server" ID="skin1" />
    <EastSussexGovUK:MasterPageControl Control="HeaderDesktop" runat="server" EnableViewState="false" />    
</asp:content>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="content">
    <div class="full-page">
        <article>
            <div id="text" runat="server">
                <h1>Forms using <code>.service-form</code> (WebForms)</h1>

                <p>Use <code>.service-form</code> and <code>.form</code> together for collecting and submitting data. These forms may be 
                    much more complex than a <a href="simple-form.aspx"><code>.simple-form</code></a> or <a href="short-form.aspx"><code>.short-form</code></a>,
                    spanning multiple sections and even multiple pages.</p>
                <p id="defaultSkinOnly" runat="server">Unlike the other kinds of form, a <code>.service-form</code> should be within a container with the <code>.text</code> 
                    class applied, meaning standard <a href="text.aspx">text formatting</a> is active.</p>
                
                <p>You should also refer to the <a href="<%= ResolveUrl("~/serviceform") %>">MVC version of this page</a>, as the HTML is the same for both. 
                    This page shows only where WebForms controls can be used to achieve the HTML for some field types.</p>

                <p><a href="https://github.com/east-sussex-county-council/Escc.WebsiteStyleGuide/blob/master/Escc.WebsiteStyleGuide/service-form.aspx">View the source of this page</a> to see the controls used for the following layouts.</p>

                <div class="form service-form">
                    <h2>Fields in this section have classes which work for all types of form</h2>

                    <div class="formBox">
                        <FormControls:DateControl ID="DateControl1" runat="server" Label="Example date" LastYear="2020" FirstYear="2005" />
                    </div>
                    
                    <h2>This section has layouts which are just for a <code>.service-form</code></h2>
                    <div class="formBox">
                        <fieldset>
                            <legend>Horizontal radio buttons for a few, short options</legend>
                            <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                <asp:ListItem Text="Yes"></asp:ListItem>
                                <asp:ListItem Text="No"></asp:ListItem>
                            </asp:RadioButtonList>
                        </fieldset>
                
                        <fieldset>
                            <legend>Vertical radio buttons and checkboxes should be preferred most of the time. Just add <code>.radioButtonList</code>.</legend>
                            <asp:RadioButtonList runat="server" CssClass="radioButtonList" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                <asp:ListItem Text="Option 1"></asp:ListItem>
                                <asp:ListItem Text="Option 2"></asp:ListItem>
                                <asp:ListItem Text="Option 3"></asp:ListItem>
                            </asp:RadioButtonList>
                        </fieldset>
                
                        <FormControls:FormAddressNonCitizen ID="FormAddressNonCitizen1" runat="server"/>                       
                    </div>
                </div>
            </div>
        </article>
    </div>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="javascript">
    <ClientDependency:Script runat="server" Files="Forms" />   
    <script src="style-guide.js"></script>
</asp:Content>