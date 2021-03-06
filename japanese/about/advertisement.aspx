<%@ Page Language="vb" AutoEventWireup="false" Codebehind="advertisement.aspx.vb" Inherits="KPPress.advertisement_jpn" %>
<%@ Register TagPrefix="uc1" TagName="TOP" Src="/japanese/include/Top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Left" Src="/japanese/include/Left.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Bottom" Src="/japanese/include/Bottom.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Right" Src="/japanese/include/Right.ascx" %>
<HTML>
	<HEAD>
		<title>KPM - Japanese</title>
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
								<td colSpan="2" height="26" bgColor="#d2e2d4">&nbsp;&nbsp;<b>広告案内</b></td>
							</tr>
							<tr>
								<td colSpan="2" width="568" height="35"></td>
							</tr>
							<tr>
								<td colSpan="2" width="568" align="center">
									<table cellSpacing="0" cellPadding="0" width="538" bgColor="#ffffff" border="0">
										<tr>
											<td class="text_intro">
コリアメディアでは民族系企業及び海外企業を対象としてＫＰＭに載せるバナー広告を募集しています。朝鮮民主主義人民共和国最初の言論情報ネットとして全世界を対象に送信される特殊な意味と效果を期待することができるでしょう。
											</td>
										</tr>
										<tr>
											<td height="26"></td>
										</tr>
										<tr>
											<td height="1" bgColor="#808080"></td>
										</tr>
										<tr>
											<td height="3"></td>
										</tr>
										<tr>
											<td height="22"><b><font color="#a50021">◎ 位置</font></b></td>
										</tr>
										<tr>
											<td height="1" bgColor="#808080"></td>
										</tr>
										<tr>
											<td height="12"></td>
										</tr>
										<tr>
											<td>	<img src="/images/img01_ad_about.gif" width="520" height="510"></td>
										</tr>
										<tr>
											<td height="26"></td>
										</tr>
										<tr>
											<td height="1" bgColor="#808080"></td>
										</tr>
										<tr>
											<td height="3"></td>
										</tr>
										<tr>
											<td height="22"><b><font color="#a50021">◎ 運營方式 </font></b></td>
										</tr>
										<tr>
											<td height="1" bgColor="#808080"></td>
										</tr>
										<tr>
											<td height="12"></td>
										</tr>
										<tr>
											<td>
											
											<table cellSpacing="2" cellPadding="5" width="100%" bgColor="#ffffff" border="0">
											<tr bgcolor="#595959">
												<td align="center" width="20%" height="24"><font color="#FFFFFF"><b>位置</b></font></td>
												<td align="center" width="60%"><font color="#FFFFFF"><b>運營方式</b></font></td>
												<td align="center" width="20%"><font color="#FFFFFF"><b>pixel</b></font></td>
											</tr>
											<tr bgcolor="#E6E6E6">
												<td align="center">A1</td>
												<td>Roll(2個)</td>
												<td align="center">212 × 50</td>
											</tr>
											<tr bgcolor="#E6E6E6">
												<td align="center">A2</td>
												<td>Roll(2個)</td>
												<td align="center">212 × 600</td>
											</tr>
											</table><br>
											
- 詳細な内容に対しては下記の場所にお問い合わせください。<br><br>

◆ 電話 : 03-3814-4410<br>
◆ FAX  : 03-3814-4420<br>
◆ 住所 : 〒112-8603 /東京都文京区白山4-33-14<br>
◆ E-mail : help@korea-m.com<br>
◆ 交通案内: 都営地下鉄三田線 白山駅下車A1出口(小石川植物園方面)徒歩3分白山通り沿い<br><br>

<img src="/images/img_map_about_jpn.gif" width="538" height="320">
											</td>
										</tr>
										<tr>
											<td height="26"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td colSpan="2" width="568" height="15"></td>
							</tr>
							<tr>
								<td>&nbsp;&nbsp;<A class="branch_a" href="javascript:history.back();">← Back</A></td>
								<td align="right"><A class="branch_a" href="#t">↑ Top</A>&nbsp;&nbsp;</td>
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
					<td colSpan="5" height="8"></td>
				</tr>
				<tr>
					<td colSpan="5">
						<!-- 하단 --><uc1:bottom id="Bottom1" runat="server"></uc1:bottom></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>