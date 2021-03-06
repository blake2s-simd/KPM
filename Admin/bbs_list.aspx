<%@ Page Language="vb" AutoEventWireup="false" Codebehind="bbs_list.aspx.vb" Inherits="KPPress.bbs_list" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>bbs_list</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="<%=strStyle%>" type="text/css" rel="stylesheet">
		<script>
			function schSubmit()
			{
				if (event.keyCode == 13)
				{
					document.all.btnSearch.focus();
					<%=Page.GetPostBackEventReference(btnSearch, "")%>;
					return false;
				}
			}
		</script>
	</HEAD>
	<body leftMargin="0" topMargin="0">
		<form id="Form1" method="post" runat="server">
			<table cellSpacing="0" cellPadding="0" width="580" border="0">
				<tr>
					<td align="center">
						<table cellSpacing="0" cellPadding="0" width="570" border="0">
							<tr height="15">
								<td>
									<table height="30" cellSpacing="0" cellPadding="0" width="100%" border="0">
										<tr vAlign="middle">
											<td width="150">전체&nbsp;<font class="redbold"><asp:label id="lblBbsTotal" runat="server"></asp:label></font>
											</td>
											<td align="center">&nbsp;
											</td>
											<td align="right" width="150"></A>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<asp:label id="lblNone" runat="server" Visible="False">
								<tr valign="middle" bgcolor="#e0e0e0" height="150px">
									<td align="center" valign="middle">
										게시물이 존재하지 않습니다.
									</td>
								</tr>
							</asp:label>
							<tr vAlign="top">
								<td align="center"><asp:datagrid id="dgBbsList" runat="server" PageSize="15" AllowPaging="True" BorderColor="#E0E0E0"
										BorderWidth="1px" GridLines="Horizontal" BorderStyle="Solid" Width="570px" AutoGenerateColumns="False">
										<AlternatingItemStyle BorderWidth="12px" BorderStyle="Dotted"></AlternatingItemStyle>
										<ItemStyle Height="25px" BorderWidth="12px" BorderStyle="Dotted"></ItemStyle>
										<HeaderStyle Height="25px" BorderStyle="Dotted" BorderColor="#000040" BackColor="#E0E0E0"></HeaderStyle>
										<Columns>
											<asp:BoundColumn DataField="number" HeaderText="글번호">
												<HeaderStyle HorizontalAlign="Center" Width="60px"></HeaderStyle>
												<ItemStyle HorizontalAlign="Center"></ItemStyle>
											</asp:BoundColumn>
											<asp:BoundColumn Visible="False" DataField="Category" HeaderText="작성위치">
												<HeaderStyle HorizontalAlign="Center" Width="80px"></HeaderStyle>
												<ItemStyle HorizontalAlign="Center"></ItemStyle>
											</asp:BoundColumn>
											<asp:TemplateColumn HeaderText="제목">
												<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
												<ItemTemplate>
													<asp:Label id="lblReply" runat="server"></asp:Label><A href='bbs_View.aspx?bbsid=<%=request("bbsid")%>&no=<%# Container.DataItem("number")%>&amp;pg=<%=dgBbsList.CurrentPageIndex+1%>&amp;keyword=<%=Request("keyword")%>&amp;keywordkind=<%=request("keywordkind")%>'><%# Container.DataItem("subject") %></A>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:BoundColumn Visible="False" DataField="writeCustomerName" HeaderText="기관명">
												<HeaderStyle HorizontalAlign="Center" Width="100px"></HeaderStyle>
												<ItemStyle HorizontalAlign="Center"></ItemStyle>
											</asp:BoundColumn>
											<asp:BoundColumn DataField="hit" HeaderText="조회">
												<HeaderStyle HorizontalAlign="Left" Width="30px"></HeaderStyle>
												<ItemStyle HorizontalAlign="Center"></ItemStyle>
											</asp:BoundColumn>
											<asp:BoundColumn DataField="regdate" HeaderText="날짜" DataFormatString="{0:yyyy-MM-dd}">
												<HeaderStyle HorizontalAlign="Center" Width="100px"></HeaderStyle>
												<ItemStyle HorizontalAlign="Center"></ItemStyle>
											</asp:BoundColumn>
										</Columns>
										<PagerStyle Visible="False"></PagerStyle>
									</asp:datagrid></td>
							</tr>
							<tr>
								<td align="center">
									<table height="30" cellSpacing="0" cellPadding="0" width="100%" border="0">
										<tr vAlign="middle">
											<td width="200"></td>
											<td class="E3" align="center">
												<asp:Label id="lblPagePre" runat="server" Visible="False">
													<img src="/images/btn_navi_left.gif" border="0" align="absmiddle" hspace="2"><font class="e4">이전</font></asp:Label>&nbsp;<asp:label id="lblPageList" runat="server"></asp:label>&nbsp;
												<asp:Label id="lblPageNext" runat="server" Visible="False">
													<font class="e4">다음</font><img src="/images/btn_navi_right.gif" border="0" align="absmiddle" hspace="2"></asp:Label></td>
											<td align="right" width="150">
												<A href='bbs_write.aspx?mode=1&amp;bbsid=<%=request("bbsid")%>&amp;pg=<%=request("pg")%>&amp;keyword=<%=Request("keyword")%>&amp;keywordkind=<%=request("keywordkind")%>' >
													<asp:Label id="lblAdmin" runat="server">
														<img src="/images/btn_write.gif" border="0" align="absMiddle"></asp:Label></A>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td align="center" bgColor="#f0f0f0" height="30">
									<table cellSpacing="0" cellPadding="0" border="0">
										<tr>
											<td><asp:dropdownlist id="ddlSelectMenu" runat="server">
													<asp:ListItem Value="subject" Selected="True">제목</asp:ListItem>
													<asp:ListItem Value="content">제목+내용</asp:ListItem>
													<asp:ListItem Value="Number">글번호</asp:ListItem>
												</asp:dropdownlist></td>
											<td><INPUT onkeypress="schSubmit();" id="txtSearchKeyWord" style="BORDER-RIGHT: #b2b2b2 1px solid; BORDER-TOP: #b2b2b2 1px solid; BORDER-LEFT: #b2b2b2 1px solid; WIDTH: 150px; BORDER-BOTTOM: #b2b2b2 1px solid; HEIGHT: 20px"
													type="text" name="txtSearchKeyWord" runat="server">
											</td>
											<td vAlign="middle"><asp:imagebutton id="btnSearch" runat="server" ToolTip="검색" ImageUrl="/images/btn_search.gif"></asp:imagebutton></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
