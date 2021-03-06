<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="AccessDenied.ascx.vb" Inherits="Ventrian.PropertyAgent.AccessDenied" %>
<%@ Register TagPrefix="Agent" TagName="Options" Src="Options.ascx" %>

<table cellpadding="0" cellspacing="0" width="100%">
<tr>
	<td align="left" valign="middle">
		<asp:Repeater ID="rptBreadCrumbs" Runat="server">
				<ItemTemplate><a href='<%# DataBinder.Eval(Container.DataItem, "Url") %>' class="NormalBold"><%# DataBinder.Eval(Container.DataItem, "Caption") %></a></ItemTemplate>
				<SeparatorTemplate>&nbsp;&#187;&nbsp;</SeparatorTemplate>
		</asp:Repeater>
	</td>
	<td align="right">
		<Agent:Options id="Options1" runat="server" />
	</td>
</tr>
<tr>
	<td height="5" colspan="2"></td>
</tr>
</table>
<asp:Label ID="lblAccessDenied" Runat="server" ResourceKey="AccessMessage" CssClass="Normal">You do not have access to this page.</asp:Label>