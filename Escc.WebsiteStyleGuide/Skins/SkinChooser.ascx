<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SkinChooser.ascx.cs" Inherits="Escc.WebsiteStyleGuide.Skins.SkinChooser" %>
<%@ Import Namespace="Escc.EastSussexGovUK.MasterPages" %>
<%@ Import Namespace="EsccWebTeam.EastSussexGovUK.MasterPages" %>
<form method="post" class="skin-chooser">
    <div class="container">
    <label for="skin">Apply a custom skin, layered on top of the default skin:
        <select id="skin" name="skin">
            <option value="<%= typeof(DefaultSkin).Name %>">Default</option>
            <option value="<%= typeof(CustomerFocusSkin).Name %>"<%= (SelectedSkinId==typeof(CustomerFocusSkin).Name) ? " selected=\"selected\"" : String.Empty %> >Customer focus</option>
            <option value="<%= typeof(CoronerSkin).Name %>"<%= (SelectedSkinId==typeof(CoronerSkin).Name) ? " selected=\"selected\"" : String.Empty %> >Coroner</option>
       </select>
    </label>
    <input type="submit" value="Update" />
    </div>
</form>