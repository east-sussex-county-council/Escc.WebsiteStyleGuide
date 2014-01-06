<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="service-form.aspx.cs" Inherits="Escc.WebsiteStyleGuide.serviceForm" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <title>Forms using .service-form</title>
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
                <h1>Forms using <code>.service-form</code></h1>

                <div class="form service-form">
                    <h2>Fields in this section have classes which work for all types of form</h2>

                    <div class="formBox">
                        <div class="formPart">
                            <label for="example23">Type a number</label>
                            <input type="text" class="numeric" id="example23"/>
                        </div>

                        <div class="formPart">
                            <label for="example24">Title (Mr, Ms, Miss, Mrs)</label>
                            <input type="text" class="name-title" id="example24"/>
                        </div>

                        <div class="formPart">
                            <label for="example25">Name</label>
                            <input type="text" class="name" id="example25"/>
                        </div>

                        <div class="formPart">
                            <label for="example26">Phone</label>
                            <input type="text" class="phone" id="example26"/>
                        </div>

                        <div class="formPart">
                            <label for="example27">Email</label>
                            <input type="text" class="email" id="example27"/>
                        </div>

                        <div class="formPart">
                            <label for="example28">URL</label>
                            <input type="text" class="url" id="example28"/>
                        </div>

                        <div class="formPart">
                            <label for="example29">Currency</label>
                            £ <input type="text" class="currency" id="example29"/>
                        </div>
                                       
                        <p><label>I need <input type="number" class="within-text" /> fields within a sentence.</label></p>

                        <div class="formPart">
                            <label for="example1">Standard dropdown lists</label>
                            <select id="example1">
                                <option>Example option</option>
                            </select>
                        </div>

                        <div class="formPart">
                            <label for="example2">Wide dropdown lists</label>
                            <select class="too-wide" id="example2">
                                <option>Apply .too-wide if you have a dropdown list which is too wide for the page. This will stop it hanging over the right edge.</option>
                            </select>
                        </div>
                    
                        <FormControls:DateControl ID="DateControl1" runat="server" Label="Example date" LastYear="2020" FirstYear="2005" />
                        
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
                
                        <span class="radioButtonList checkbox">
                            <label for="example30"><input type="checkbox" checked="checked" value="1" id="example30" /> A checkbox on its own</label>
                        </span>
                        
                         <div class="radioButtonList">
                            <input type="radio" id="example31" name="example31" /><label for="example31">Example</label>
                            <input type="radio" id="example32" name="example31" /><label for="example32" class="contains-field">Show me </label> <label><input type="number" class="within-text" /> examples</label>
                            <input type="radio" id="example34" name="example31" /><label for="example34">Other</label>
            
                            <div class="not-radio">
                                <label for="example35">If other, please state</label>
                                <input type="text" id="example35" />
                            </div>
                        </div>

                        <input type="submit" value="Button inside the box"/>
                    </div>
                    
                    <h2>Another section</h2>
                    <div class="formBox">
                        <p class="read-only"><span class="formLabel">Fixed:</span> You can't change this</p>
                        <FormControls:FormAddressNonCitizen ID="FormAddressNonCitizen1" runat="server"/>                       
                    </div>
                    <input type="submit" value="Button after the box"/>
                </div>
            </div>
        </article>
    </div>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="javascript">
    <Egms:Script runat="server" Files="Forms" />   
</asp:Content>