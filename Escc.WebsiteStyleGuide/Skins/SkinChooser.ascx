<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SkinChooser.ascx.cs" Inherits="Escc.WebsiteStyleGuide.Skins.SkinChooser" %>
<form method="post" class="skin-chooser">
    <div class="container">
    <label for="skin">Apply a custom skin, layered on top of the default skin:
        <select id="skin" name="skin">
            <option value="0">Default</option>
            <option value="1"<%= (SelectedSkinId=="1") ? " selected=\"selected\"" : String.Empty %> >Customer focus</option>
       </select>
    </label>
    <input type="submit" value="Update" />
    </div>
</form>