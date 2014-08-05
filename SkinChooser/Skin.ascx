<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Skin.ascx.cs" Inherits="Escc.WebsiteStyleGuide.SkinChooser.Skin" %>
<%@ Import Namespace="Escc.WebsiteStyleGuide.SkinChooser" %>
<Egms:Css runat="server" Files="FormsSmall" id="smallCss"/>
    <EastSussexGovUK:ContextContainer runat="server" Desktop="true">
        <Egms:Css runat="server" Files="FormsMedium" MediaConfiguration="Medium" id="mediumCss"/>
        <Egms:Css runat="server" Files="FormsLarge" MediaConfiguration="Large" id="largeCss"/>
    </EastSussexGovUK:ContextContainer>


<div class="form simple-form"><asp:Label runat="server" AssociatedControlID="skin" Text="Skin: " />
    <asp:DropDownList runat="server" ID="skin">
        <asp:ListItem Text="Default" Value="0" />
        <asp:ListItem Text="Customer focus" Value="1" />
   </asp:DropDownList>
    <asp:Button runat="server" Text="Update" OnClick="Update_Clicked"/>
   </div>