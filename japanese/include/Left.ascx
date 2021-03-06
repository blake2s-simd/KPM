<%@ Control Language="vb" AutoEventWireup="false" Codebehind="Left.ascx.vb" Inherits="KPPress.Left_jpn" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<table cellSpacing="0" cellPadding="0" width="132" bgColor="#ffffff" border="0">
	<tr>
		<td>
			<asp:Panel id="pnlLogout" runat="server">
				<TABLE cellSpacing="0" cellPadding="0" width="132" bgColor="#ffffff" border="0">
					<TR>
						<TD height="26">
							<asp:ImageButton id="btn_logout" runat="server" ImageUrl="/images/btn_logout_j.gif" AlternateText="Log Out"></asp:ImageButton></TD>
					</TR>
					<TR>
						<TD height="3"></TD>
					</TR>
				</TABLE>
			</asp:Panel>
		</td>
	</tr>
	<tr>
		<td height="26"><IMG height="29" src="/images/bar_left_news.gif" width="132"></td>
	</tr>
	<tr>
		<td height="7" bgcolor="#ededed"></td>
	</tr>
	<tr>
		<td class="branch1" bgcolor="#ededed">
			<asp:HyperLink id="hl_key" runat="server" NavigateUrl="/japanese/list_all.aspx?lvl=1">主要記事</asp:HyperLink><br>
			<asp:HyperLink id="hl_all" runat="server" NavigateUrl="/japanese/list_all.aspx?lvl=0">すべての記事</asp:HyperLink><br>
			<asp:HyperLink id="hl_past" runat="server" NavigateUrl="/japanese/search_past.aspx">過去の記事</asp:HyperLink><br>
			<asp:HyperLink id="hl_s_101" runat="server" NavigateUrl="/japanese/list_etc.aspx?ID=101&amp;chk_etc=section">政治</asp:HyperLink><br>
			<asp:HyperLink id="hl_s_102" runat="server" NavigateUrl="/japanese/list_etc.aspx?ID=102&amp;chk_etc=section">外交</asp:HyperLink><br>
			<asp:HyperLink id="hl_s_103" runat="server" NavigateUrl="/japanese/list_etc.aspx?ID=103&amp;chk_etc=section">経済</asp:HyperLink><br>
			<asp:HyperLink id="hl_s_104" runat="server" NavigateUrl="/japanese/list_etc.aspx?ID=104&amp;chk_etc=section">社会</asp:HyperLink><br>
			<asp:HyperLink id="hl_s_105" runat="server" NavigateUrl="/japanese/list_etc.aspx?ID=105&amp;chk_etc=section">文化</asp:HyperLink><br>
			<asp:HyperLink id="hl_s_106" runat="server" NavigateUrl="/japanese/list_etc.aspx?ID=106&amp;chk_etc=section">情報科学</asp:HyperLink><br>
			<asp:HyperLink id="hl_s_107" runat="server" NavigateUrl="/japanese/list_etc.aspx?ID=107&amp;chk_etc=section">スポーツ</asp:HyperLink><br>
			<asp:HyperLink id="hl_s_108" runat="server" NavigateUrl="/japanese/list_etc.aspx?ID=108&amp;chk_etc=section">社説/論評</asp:HyperLink><br>
			<asp:HyperLink id="hl_s_109" runat="server" NavigateUrl="/japanese/list_etc.aspx?ID=109&amp;chk_etc=section">インタビュー</asp:HyperLink><br>
		</td>
	</tr>
	<tr>
		<td height="7"></td>
	</tr>
	<tr>
		<td height="19" bgcolor="#c6c6c6" align="left" valign="bottom">&nbsp;&nbsp;地域別記事</td>
	</tr>
	<tr>
		<td height="2"></td>
	</tr>
	<tr>
		<td class="branch2" bgcolor="#ededed" height="56">
			<asp:HyperLink id="hl_l_101" runat="server" NavigateUrl="/japanese/list_etc.aspx?ID=101&amp;chk_etc=local">平壌</asp:HyperLink>
			<asp:HyperLink id="hl_l_102" runat="server" NavigateUrl="/japanese/list_etc.aspx?ID=102&amp;chk_etc=local">開城</asp:HyperLink>
			<asp:HyperLink id="hl_l_103" runat="server" NavigateUrl="/japanese/list_etc.aspx?ID=103&amp;chk_etc=local">南浦</asp:HyperLink>
			<asp:HyperLink id="hl_l_104" runat="server" NavigateUrl="/japanese/list_etc.aspx?ID=104&amp;chk_etc=local">羅先</asp:HyperLink><br>
			<asp:HyperLink id="hl_l_105" runat="server" NavigateUrl="/japanese/list_etc.aspx?ID=105&amp;chk_etc=local">平安道</asp:HyperLink>
			<asp:HyperLink id="hl_l_106" runat="server" NavigateUrl="/japanese/list_etc.aspx?ID=106&amp;chk_etc=local">滋江道</asp:HyperLink>
			<asp:HyperLink id="hl_l_107" runat="server" NavigateUrl="/japanese/list_etc.aspx?ID=107&amp;chk_etc=local">両江道</asp:HyperLink><br>
			<asp:HyperLink id="hl_l_108" runat="server" NavigateUrl="/japanese/list_etc.aspx?ID=108&amp;chk_etc=local">咸鏡道</asp:HyperLink>
			<asp:HyperLink id="hl_l_109" runat="server" NavigateUrl="/japanese/list_etc.aspx?ID=109&amp;chk_etc=local">黄海道</asp:HyperLink>
			<asp:HyperLink id="hl_l_110" runat="server" NavigateUrl="/japanese/list_etc.aspx?ID=110&amp;chk_etc=local">江原道</asp:HyperLink><br>
		</td>
	</tr>
	<tr>
		<td height="10"></td>
	</tr>
	<tr>
		<td height="26"><IMG height="29" src="/images/bar_left_journal.gif" width="132"></td>
	</tr>
	<tr>
		<td height="5"></td>
	</tr>
	<tr>
		<td valign="middle" align="center">
			<asp:ListBox id="lbx_l_Journals" runat="server" Width="130px" Rows="12" AutoPostBack="True" DataTextField="MediaNameJpn"
				DataValueField="MediaID"></asp:ListBox>
		</td>
	</tr>
	<tr>
		<td height="15"></td>
	</tr>
	<tr>
		<td>
			<table cellSpacing="1" cellPadding="0" border="0" bgcolor="#c6c6c6">
				<tr>
					<td width="132" bgcolor="#ffffff">
						<table cellSpacing="0" cellPadding="0" width="130" border="0">
							<tr>
								<td width="130"><IMG src="/images/bar_left_information.gif" width="130" height="24" border="0"></td>
							</tr>
							<tr>
								<td width="130" height="5"></td>
							</tr>
							<tr>
								<td width="130" class="branch3">
									<asp:HyperLink id="hl_about" runat="server" NavigateUrl="/japanese/about/introduction.aspx">KPM 紹介</asp:HyperLink><br>
									<asp:HyperLink id="hl_usage" runat="server" NavigateUrl="/japanese/about/guide.aspx">利用案内</asp:HyperLink><br>
									<asp:HyperLink id="hl_media" runat="server" NavigateUrl="/japanese/about/media.aspx">コンテンツ提供媒体 </asp:HyperLink><br>
									<asp:HyperLink id="hl_qna" runat="server" NavigateUrl="/japanese/about/qna.aspx">質問と答</asp:HyperLink><br>
									<asp:HyperLink id="hl_ad" runat="server" NavigateUrl="/japanese/about/advertisement.aspx">広告案内</asp:HyperLink><br>
									<asp:HyperLink id="hl_copyright" runat="server" NavigateUrl="/japanese/about/copyright.aspx">著作権公示</asp:HyperLink><br>
									<asp:HyperLink id="hl_contact" runat="server" NavigateUrl="/japanese/about/contact.aspx">連絡場所</asp:HyperLink><br>
									<asp:HyperLink id="hl_terms" runat="server" NavigateUrl="/japanese/about/terms.aspx">利用約款</asp:HyperLink>
								</td>
							</tr>
							<tr>
								<td width="130" height="5"></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td height="15"></td>
	</tr>
</table>
