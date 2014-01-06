<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forms.aspx.cs" Inherits="Escc.WebsiteStyleGuide.forms" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <title>Forms</title>
    <Egms:Css runat="server" Files="FormsSmall"/>
    <EastSussexGovUK:ContextContainer runat="server" Desktop="true">
        <Egms:Css runat="server" Files="FormsMedium" MediaConfiguration="Medium"/>
        <Egms:Css runat="server" Files="FormsLarge" MediaConfiguration="Large"/>
    </EastSussexGovUK:ContextContainer>
</asp:Content>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="content">
    <div class="full-page">
        <article>
            <div class="text">
                <h1>Forms</h1>
                <div class="errorSummary">
                    <p>This is how we would like error messages to appear:</p>
                    <ul>
                        <li>Required: <span class="errorItem"><a href="#">Missing name</a></span></li>
                    </ul>
                </div>

                <ul class="validationSummary">
                    <li>This is how they usually do appear, using a <code>ValidationSummary</code></li>
                </ul>
                <p>There are three types of form, for three different scenarios:</p>
                <ul>
                    <li><a href="simple-form.aspx"><code>.simple-form</code></a> for single line search boxes</li>
                    <li><a href="short-form.aspx"><code>.short-form</code></a> for more complex application interfaces</li>
                    <li><a href="service-form.aspx"><code>.service-form</code></a> for collecting and submitting data</li>
                </ul>
                <p>Whichever one you use, apply the class to a container element along with <code>.form</code>.</p>
            </div>
        </article>
    </div>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="javascript">
    <Egms:Script runat="server" Files="Forms" />   
</asp:Content>