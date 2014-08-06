<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SkinChooser.ascx.cs" Inherits="Escc.WebsiteStyleGuide.Skins.SkinChooser" %>
<%@ Import Namespace="Escc.WebsiteStyleGuide.SkinChooser" %>
<div class="form simple-form">
    <h2>Skins</h2>
    <p>You can apply a custom skin to the site which is layered on top of the default skin.</p>
    <asp:Label runat="server" AssociatedControlID="skin" Text="Skin for this visit: " />
    <asp:DropDownList runat="server" ID="skin">
        <asp:ListItem Text="Default" Value="0" />
        <asp:ListItem Text="Customer focus" Value="1" />
   </asp:DropDownList>
    <asp:Button runat="server" Text="Update" OnClick="Update_Clicked"/>
   </div>