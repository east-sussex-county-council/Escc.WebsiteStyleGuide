<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="simple-form.aspx.cs" Inherits="Escc.WebsiteStyleGuide.simpleForm" %>
<asp:Content runat="server" ContentPlaceHolderID="metadata">
    <Egms:MetadataControl runat="server" 
        Title="Forms using .simple-form" 
        DateIssued="2014-01-07"
        IpsvPreferredTerms="Website management"
        IsInSearch="false"
        />
    <StyleGuide:Metadata runat="server" />
    <Egms:Css runat="server" Files="FormsSmall" />
    <EastSussexGovUK:ContextContainer runat="server" Desktop="true">
        <Egms:Css runat="server" Files="FormsMedium" MediaConfiguration="Medium" />
        <Egms:Css runat="server" Files="FormsLarge" MediaConfiguration="Large" />
    </EastSussexGovUK:ContextContainer>
</asp:Content>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="content">
    <div class="full-page">
        <article>
            <div id="text" runat="server">
                <h1>Forms using <code>.simple-form</code></h1>
                <p>Use <code>.simple-form</code> and <code>.form</code> together for interfaces with one or two components, such as a search box. For more complex interfaces use <a href="short-form.aspx"><code>.short-form</code></a>.</p>
                <p><a href="https://github.com/east-sussex-county-council/Escc.WebsiteStyleGuide/blob/master/simple-form.aspx">View the source of this page</a> to see the HTML for the following layouts.</p>
            </div>

            <div class="form simple-form">
                <label for="example1">Search for</label>
                <input type="text" id="example1"/>
                <input type="submit" value="Search"/>
            </div>
                
            <div class="form simple-form">
                <label for="example7">Upload something</label>
                <input type="file" id="example7" />
                <input type="submit" value="Upload"/>
            </div>

            <div class="form simple-form">
                <h2>Optional subheading</h2>
                <label for="example2">Show me</label>
                <select id="example2">
                    <option>Option 1</option>
                    <option>Option 2</option>
                </select>
                <input type="submit" value="Update"/>
                <p class="note rss"><a href="javascript:return false()">Subscribe by RSS</a> in <code>p.note</code></p>
            </div>

            <div class="form simple-form">
                <div class="fields-with-checkbox">
                    <div class="fields">
                        <label for="example3">Search for </label>
                        <input type="text" id="example3" />
                        <span class="checkbox">
                            <input id="checkbox" type="checkbox" /><label for="checkbox">Extra search option</label>
                        </span>
                    </div>
                    <input type="submit" value="Search" />
                </div>
                <p class="note useList">or <code>p.note</code> can point to a <a href="javascript:return false()">list of everything</a></p>
            </div>
                
            <div class="form simple-form">
                <p class="intro">Optional introduction using <code>p.intro</code>. The addresses shown here appear only when a postcode crosses two areas, such as electoral divisions.</p>
                <label for="example4">My postcode is</label>
                <input type="text" value="TN38 0TA" id="example4" class="postcode" />

                <div class="clarify">
                    <label for="example5">Select your address:</label>
                    <select size="4" id="example5" class="listbox">
                        <option value="157160">1, SEDLESCOMBE ROAD SOUTH, ST. LEONARDS-ON-SEA, TN38 0TA</option>
                        <option value="157798">2, SEDLESCOMBE ROAD SOUTH, ST. LEONARDS-ON-SEA, TN38 0TA</option>
                        <option value="156708">3, SEDLESCOMBE ROAD SOUTH, ST. LEONARDS-ON-SEA, TN38 0TA</option>
                        <option value="157482">4, SEDLESCOMBE ROAD SOUTH, ST. LEONARDS-ON-SEA, TN38 0TA</option>
                        <option value="157750">5, SEDLESCOMBE ROAD SOUTH, ST. LEONARDS-ON-SEA, TN38 0TA</option>
                        <option value="156834">6, SEDLESCOMBE ROAD SOUTH, ST. LEONARDS-ON-SEA, TN38 0TA</option>
                        <option value="156928">7, SEDLESCOMBE ROAD SOUTH, ST. LEONARDS-ON-SEA, TN38 0TA</option>
                    </select>
                </div>
	
                <input type="submit" value="Find your nearest" />
            </div>
                
            <div class="form simple-form">
                <fieldset>
                    <legend>Fieldset and legend, as used by the planning register:</legend>
                    <span class="radioButtonList">
                        <input id="example6-1" name="example6" value="1" checked="checked" type="radio"><label for="example6-1">Option one</label>
                        <input id="example6-2" name="example6" value="2" type="radio"><label for="example6-2">Option two</label>
                    </span>
                </fieldset>
            </div>

        </article>
    </div>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="javascript">
    <Egms:Script runat="server" Files="Forms" />   
</asp:Content>