<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProgressBar.ascx.cs" Inherits="Escc.WebsiteStyleGuide.Views.Buttons.ProgressBar" %>
<%@ Register TagPrefix="NavigationControls" Namespace="Escc.NavigationControls.WebForms" Assembly="Escc.NavigationControls.WebForms" %>
<NavigationControls:ProgressBarControl runat="server" ConfigSectionName="ProgressBarCustomerFocus" LinkFutureStages="False" />
<NavigationControls:ProgressBarControl runat="server" ConfigSectionName="ProgressBarCustomerFocusWithLinks" LinkFutureStages="True" />