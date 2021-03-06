<%@ Page Language="vb" AutoEventWireup="false" Codebehind="print_article.aspx.vb" Inherits="KPPress.print_article"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>KPM - 기사 프린트</title>
		<LINK href="/include/main.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body leftmargin="40" topmargin="0" onload="print();">
		<form id="Form1" method="post" runat="server">
			<table cellSpacing="0" cellPadding="0" width="580" bgColor="#ffffff" border="0">
				<tr>
					<td align="center">
						<table cellSpacing="0" cellPadding="0" width="580" bgColor="#ffffff" border="0">
							<tr>
								<td width="170" height="26" bgColor="#e2e2e2"><%= image %></td>
								<td align="right" width="410" bgColor="#e2e2e2">
									<asp:Label id="lbl_Section" runat="server" Font-Bold="True"></asp:Label>
									<asp:Label id="lbl_sep" runat="server" Font-Bold="True"></asp:Label>
									<asp:Label id="lbl_Local" runat="server" Font-Bold="True"></asp:Label>&nbsp;&nbsp;</td>
							</tr>
						</table>
						<table cellSpacing="0" cellPadding="0" width="530" bgColor="#ffffff" border="0">
							<tr>
								<td width="550" height="15"></td>
							</tr>
							<tr>
								<td>
									<asp:Label id="lbl_Title" runat="server" Font-Bold="True" Font-Size="11pt" ForeColor="#003296"></asp:Label>
								</td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
								<td>
									<asp:Label id="lbl_SubTitle" runat="server" Font-Bold="True"></asp:Label>
								</td>
							</tr>
							<tr>
								<td height="15"></td>
							</tr>
							<tr>
								<td class="text">
									<asp:Label id="lbl_Nayong" runat="server"></asp:Label>
								</td>
							</tr>
							<tr>
								<td height="10"></td>
							</tr>
							<tr>
								<td>
									<asp:Repeater id="Repeater1" runat="server">
										<ItemTemplate>
											<a href='/view_article.aspx?ArticleID=<%# DataBinder.Eval(Container.DataItem, "ArticleID") %>'>
												<b>[관련기사]</b>
												<%# DataBinder.Eval(Container.DataItem, "Title")  %>
											</a>
										</ItemTemplate>
										<SeparatorTemplate>
											<br>
										</SeparatorTemplate>
									</asp:Repeater>
								</td>
							</tr>
							<tr>
								<td height="10"></td>
							</tr>
							<tr>
								<td align="right" height="17">
									<asp:Label id="lbl_WriterName" runat="server"></asp:Label>
									<asp:Label id="lbl_Email" runat="server"></asp:Label>
								</td>
							</tr>
							<tr>
								<td align="right">
									<asp:Label id="lbl_JunsongDateTime" runat="server"></asp:Label>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
