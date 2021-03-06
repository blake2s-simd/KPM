<%@ Control Language="vb" AutoEventWireup="false" Codebehind="Articles_main.ascx.vb" Inherits="KPPress.Articles_main" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<table cellSpacing="0" cellPadding="0" width="568" bgColor="#ffffff" border="0">
	<tr>
		<td height="26" bgColor="#e2e2e2">&nbsp;&nbsp;&nbsp;<A href="/list_src.aspx?MediaID=<%= MediaID %>" onfocus="this.blur()"><%= image %></A></td>
		<td width="328" bgColor="#e2e2e2"></td>
		<td width="70"><A href="/list_src.aspx?MediaID=<%= MediaID %>" onfocus="this.blur()"><IMG height="26" src="/images/btn_main_more.gif" width="70" border="0"></A></td>
	</tr>
	<tr>
		<td colSpan="3" height="7"></td>
	</tr>
</table>
<asp:datagrid id="DataGrid1" ShowHeader="False" Font-Size="9pt"
	Width="558px" AutoGenerateColumns="False" AllowPaging="False" BorderStyle="None" BackColor="White"
	CellPadding="1" GridLines="None" runat="server">
	<Columns>
		<asp:TemplateColumn>
			<ItemTemplate>
				ㆍ
			</ItemTemplate>
			<ItemStyle HorizontalAlign="Right" Width="10" VerticalAlign="Top"></ItemStyle>
		</asp:TemplateColumn>
		<asp:TemplateColumn>
			<ItemTemplate>
				<a href="/view_article.aspx?ArticleID=<%# Container.DataItem("ArticleID") %>"><%# Container.DataItem("Title") %></a>
				<%# Img_photo(Container.DataItem("chkPhoto")) %>
			</ItemTemplate>
			<ItemStyle HorizontalAlign="Left" Height="20"></ItemStyle>
		</asp:TemplateColumn>
		<asp:BoundColumn DataField="JunsongDateTime" DataFormatString="{0:MM-dd HH:mm}">
			<ItemStyle HorizontalAlign="Right" Width="80" VerticalAlign="Top"></ItemStyle>
		</asp:BoundColumn>
	</Columns>
</asp:datagrid>
<table cellSpacing="0" cellPadding="0" width="568" bgColor="#ffffff" border="0">
	<tr>
		<td width="568" height="7"></td>
	</tr>
</table>
