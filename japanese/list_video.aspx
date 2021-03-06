<%@ Register TagPrefix="uc1" TagName="Right" Src="include/Right.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Bottom" Src="include/Bottom.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Left" Src="include/Left.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TOP" Src="include/Top.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="list_video.aspx.vb" Inherits="KPPress.list_video_jpn" %>
<HTML>
	<HEAD>
		<title>KPM - 조선언론 정보기지</title>
		<META http-equiv="Content-Type" content="text/html; charset=ks_c_5601-1987">
		<LINK href="/japanese/include/main.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body bgColor="#ffffff" leftMargin="0" topMargin="0">
		<form id="Form1" method="post" runat="server">
			<table cellSpacing="0" cellPadding="0" width="963" bgColor="#ffffff" border="0" height="100%">
				<tr>
					<td colSpan="5">
						<!-- 상단메뉴 --><uc1:top id="TOP1" runat="server"></uc1:top></td>
					<td width="1" rowspan="4" bgcolor="#929292"></td>
				</tr>
				<tr>
					<td vAlign="top" align="center" width="148" height="100%">
						<!-- 왼쪽메뉴 --><uc1:left id="Left1" runat="server"></uc1:left></td>
					<td width="1" rowspan="3" bgcolor="#929292"></td>
					<td vAlign="top" align="center" width="584">
						<!-- 메인 시작 -->
						<table cellSpacing="0" cellPadding="0" width="568" bgColor="#ffffff" border="0">
							<tr>
								<td width="170" height="26" bgColor="#ffe0e0">&nbsp;&nbsp; <b>VIDEO</b></td>
								<td align="right" width="398" bgColor="#ffe0e0"></td>
							</tr>
							<tr>
								<td colSpan="2" width="568" height="15"></td>
							</tr>
							<tr>
								<td colSpan="2" width="568" align="center">
									<asp:datagrid id="DataGrid1" runat="server" GridLines="None" CellPadding="3" BackColor="White"
										BorderStyle="None" OnPageIndexChanged="doPaging" AllowPaging="True" AutoGenerateColumns="False"
										PageSize="10" Width="548px" Font-Size="9pt" ShowHeader="False" ItemStyle-VerticalAlign="Top">
										<Columns>
											<asp:TemplateColumn>
												<ItemTemplate>
													<table width="102" height="102" cellSpacing="0" cellPadding="0" border="0">
														<tr>
															<td height="1" colspan="3" bgColor="#A3A3A3"></td>
														</tr>
														<tr>
															<td width="1" height="100" bgColor="#A3A3A3"></td>
															<td width="100" height="100" bgColor="#FFFFFF" align="center" valign="middle">
																<a href="#" onclick='popup_video(<%# Container.DataItem("mmFileID") %>, 300)'><img src='<%# DataBinder.Eval(Container.DataItem, "Location_Thumb") %>' border="0"></a>
															</td>
															<td width="1" height="100" bgColor="#A3A3A3"></td>
														</tr>
														<tr>
															<td height="1" colspan="3" bgColor="#A3A3A3"></td>
														</tr>
													</table>
													<table width="102" cellSpacing="0" cellPadding="0" border="0">
														<tr>
															<td align="center" height="40">
																<a href="#" onclick='popup_video(<%# Container.DataItem("mmFileID") %>, 56)'><img src="/images/btn_56k.gif" width="48" height="22" border="0"></a>
																<a href="#" onclick='popup_video(<%# Container.DataItem("mmFileID") %>, 300)'><img src="/images/btn_300k.gif" width="48" height="22" border="0"></a>
															</td>
														</tr>
													</table>
												</ItemTemplate>
												<ItemStyle HorizontalAlign="left" Width="110" Height="160"></ItemStyle>
											</asp:TemplateColumn>
											<asp:TemplateColumn>
												<ItemTemplate>
													<a href="#" onclick='popup_video(<%# Container.DataItem("mmFileID") %>, 300)' class="branch_a">
														<b>
															<%# DataBinder.Eval(Container.DataItem, "TitleJpn") %>
														</b></a><a href='<%# Container.DataItem("Location_Large") %>'><img src="/images/btn_download_j.gif" width="80" height="16" border="0" align="absmiddle"></a><br>
													<br>
													<%# Replace(DataBinder.Eval(Container.DataItem, "CaptionJpn") +"", Chr(13), "<br>") %>
												</ItemTemplate>
												<ItemStyle CssClass="Text"></ItemStyle>
											</asp:TemplateColumn>
										</Columns>
										<PagerStyle HorizontalAlign="Center" ForeColor="#003296" Mode="NumericPages" Height="30" VerticalAlign="Bottom"></PagerStyle>
									</asp:datagrid>
								</td>
							</tr>
							<tr>
								<td colSpan="2" width="568" height="15"></td>
							</tr>
							<tr>
								<td>&nbsp;&nbsp;<a href="javascript:history.back();" class="branch_a">← Back</a></td>
								<td align="right"><a href="#t" class="branch_a">↑ Top</a>&nbsp;&nbsp;</td>
							</tr>
							<tr>
								<td colSpan="2" width="568" height="15"></td>
							</tr>
						</table>
						<!-- 메인 끝 -->
					</td>
					<td width="1" rowspan="3" bgcolor="#929292"></td>
					<td vAlign="top" align="center" width="228">
						<!-- 오늘쪽 메뉴 --><uc1:right id="Right1" runat="server"></uc1:right></td>
				</tr>
				<tr>
					<td width="960" colSpan="5" height="8"></td>
				</tr>
				<tr>
					<td colSpan="5">
						<!-- 하단 --><uc1:bottom id="Bottom1" runat="server"></uc1:bottom></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
