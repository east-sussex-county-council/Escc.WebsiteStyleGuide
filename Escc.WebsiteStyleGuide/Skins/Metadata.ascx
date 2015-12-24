<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Metadata.ascx.cs" Inherits="Escc.WebsiteStyleGuide.Skins.Metadata" %>
<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600' rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="style-guide.css" type="text/css"/>
<ClientDependency:Css runat="server" id="smallCss" MergeWithSimilar="false"/>
<EastSussexGovUK:ContextContainer runat="server" Desktop="true">
    <ClientDependency:Css runat="server" MediaConfiguration="Medium" id="mediumCss" MergeWithSimilar="false"/>
    <ClientDependency:Css runat="server" MediaConfiguration="Large" id="largeCss" MergeWithSimilar="false"/>
</EastSussexGovUK:ContextContainer>
<ClientDependency:Script runat="server" id="js" MergeWithSimilar="False"/>
