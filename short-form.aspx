﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="short-form.aspx.cs" Inherits="Escc.WebsiteStyleGuide.shortForm" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <title>Forms using .short-form</title>
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
                <h1>Forms using <code>.short-form</code></h1>
            </div>            
            
            <div class="form short-form">
                <p><a href="#">View all results</a> or other text here</p>
                <fieldset>
                    <legend class="or">or search for something:</legend>
                    <label for="example8">Choose from a list</label>
                     <select id="example8">
                        <option>Option 1</option>
                        <option>Option 2</option>
                    </select>
                    <label for="example9">Type in a standard box <span class="requiredField">*</span></label>
                    <input type="text" id="example9"/>
                    <label for="example13">Type an email address</label>
                    <input type="email" id="example13" class="email"/>
                    <label for="example14">Type a postcode</label>
                    <input type="text" id="example14" class="postcode"/>
                    <label for="example36">Type more text</label>
                    <textarea id="example36"></textarea>
                    <div>
                        <input type="submit" value="Search"/>
                    </div>
                </fieldset>      
            </div>

            <div class="form short-form">
                <fieldset>
                    <legend>Find something by a choice of methods:</legend>
                    <div data-enables="option-1" class="depends">
                        <input type="radio" checked="checked" value="1" name="options" id="example15">
                        <label for="example15">search by method 1</label>
                    </div>

                    <div id="option-1" class="dependentFields">
                        <label class="aural" for="example18">Search method 1:</label>
                        <input type="text" id="example18" />
                    </div>

                    <div data-enables="option-2" class="depends">
                        <input type="radio" value="2" name="options" id="example16">
                        <label for="example16">search by method 2</label>
                    </div>

                    <div id="option-2" class="dependentFields" style="display: none;">
                        <label for="example19">Search method 2</label>
                        <input type="text" id="example19" />

                        <fieldset>
                            <legend>Additional filter:</legend>
                            <span class="radioButtonList">
                                <input type="radio" checked="checked" value="2" name="example17" id="example17-1"><label for="example17-1">additional filter</label>
                                <input type="radio" value="3" name="example17" id="example17-2"><label for="example17-2">additional filter</label>
                            </span>
                        </fieldset>
                    </div>
                    
                    <p><span class="or">or</span> <a href="#">do this</a></p>
                </fieldset>

                <div>
                    <input type="submit" value="Search">
                </div>
            </div>
            
            <div class="form short-form">
                <h2>Optional heading</h2>
                <p><a href="#">List all results</a></p>
                <fieldset>
                    <legend>Choose some of these:</legend>
                    <label for="example10">
                        <input type="checkbox" checked="checked" value="1" id="example10" />
                        Option 1</label>
                    <label for="example11">
                        <input type="checkbox" checked="checked" value="1" id="example11" />
                        Option 2</label>
                    <label for="example12">
                        <input type="checkbox" checked="checked" value="1" id="example12" />
                        Option 3</label>
                </fieldset>

                <p>Or these, using HTML generated by <code>asp:RadioButtonList</code>:</p>
                <asp:RadioButtonList runat="server" CssClass="radioButtonList" RepeatDirection="Horizontal" RepeatLayout="Flow">
                    <asp:ListItem Text="Option 1"></asp:ListItem>
                    <asp:ListItem Text="Option 2"></asp:ListItem>
                    <asp:ListItem Text="Option 3"></asp:ListItem>
                </asp:RadioButtonList>
                
                <span class="radioButtonList checkbox">
                    <label for="example30"><input type="checkbox" checked="checked" value="1" id="example30" /> Or a checkbox on its own</label>
                </span>

                 <div>
                    <input type="submit" value="Search">
                </div>         
            </div>
        </article>
    </div>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="javascript">
    <Egms:Script runat="server" Files="Forms" />   
</asp:Content>