<%@ Register TagPrefix="uc1" TagName="Top" Src="../include/Top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Bottom" Src="../include/Bottom.ascx" %>
<%@ Register TagPrefix="uc1" TagName="AdminLeft" Src="AdminLeft.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="JournalEditor.aspx.vb" ValidateRequest="false" Inherits="KPPress.JournalEditor"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>조선신보사관리자</title>
		<LINK href="/include/style.css" rel="stylesheet">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript">
<!--
function LinkAdd()
{
	var LinkArticleNo =  document.Form1.txtLinkArticleID.value ;
	var LinkDescription = document.Form1.txtLinkDescription.value ;
	if (LinkArticleNo.length == 0) {
		alert('기사번호를 입력해주세요.');
		return false;
	}
	if (LinkDescription.length == 0) {
		alert('기사설명을 입력해주세요.');
		return false;
	}
	document.Form1.txtNayong.value += "<a href='../news/ViewArticle.aspx?ArticleID=" + LinkArticleNo + "'>" + LinkDescription + "</a>"	;
}
function PopupOpen(page,name,width,height){
	var features = 'width=' + width + ',height=' + height + '';
    features    += 'diretories=no,location=no,menubar=no,scrollbars=yes,toolbar=no,resizable=yes,';
    features    += 'status=yes,';
    window_handle= window.open(page,name,features);
}
// -->
		</script>
	</HEAD>
	<body leftMargin="0" topMargin="0">
		<form id="Form1" method="post" runat="server">
			<table cellSpacing="0" cellPadding="0" width="780" border="0">
				<tr>
					<td><uc1:top id="Top1" runat="server"></uc1:top></td>
				</tr>
				<tr>
					<td background="../images/bg_table_big.gif">
						<table cellSpacing="0" cellPadding="0" width="779" border="0">
							<tr>
								<td vAlign="top" width="155" background="../images/bg_table_small.gif"><uc1:adminleft id="AdminLeft1" runat="server"></uc1:adminleft></td>
								<td vAlign="top">
									<table cellSpacing="0" cellPadding="0" width="604" align="center" border="0">
										<tr>
											<td><IMG height="9" src="../images/00.gif" width="1"></td>
										</tr>
										<tr>
											<td>
												<table cellSpacing="0" cellPadding="0" width="100%" border="0">
													<tr>
														<td bgColor="#c6c6c6"><IMG height="1" src="../images/00.gif" width="1"></td>
													</tr>
													<tr>
														<td vAlign="bottom" height="20">
															<table cellSpacing="0" cellPadding="0" width="99%" align="center" border="0">
																<tr>
																	<td><IMG height="11" src="../images/icon_arrow_blue.gif" width="10">&nbsp; <font style="FONT-SIZE: 12pt" color="#003399">
																			<strong>
																				<asp:label id="lblAdminMenuName" runat="server"></asp:label></strong></font></td>
																	<td class="icon" vAlign="bottom">
																		<div align="right">&nbsp;</div>
																	</td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td bgColor="#c6c6c6"><IMG height="1" src="../images/00.gif" width="1"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td style="HEIGHT: 9px"><IMG height="9" src="../images/00.gif" width="1"></td>
										</tr>
										<TR>
											<td><asp:checkbox id="chkSeeListSelector" runat="server" AutoPostBack="True" Checked="true" Text="목록 보기"
													Font-Bold="True" Font-Size="9pt"></asp:checkbox>&nbsp;&nbsp;
												<asp:button id="btnNew" runat="server" Text="새로입력"></asp:button><asp:panel id="Panel1" runat="server">
													<TABLE cellSpacing="0" cellPadding="0" width="604" align="center" border="0">
														<TR>
															<TD>
																<TABLE width="100%">
																	<TR>
																		<TD class="text" style="WIDTH: 233px">검색어(제목)
																			<asp:textbox id="txtSearchWord" runat="server" Font-Size="9pt" Width="140px"></asp:textbox></TD>
																		<TD class="text">입력일
																			<asp:textbox id="txtGijunDateTime" runat="server" Font-Size="9pt" Width="208px"></asp:textbox>이후
																			<asp:Button id="btnSearch" Font-Size="8pt" Text="찾기" Runat="server"></asp:Button></TD>
																	</TR>
																	<TR>
																		<TD colSpan="4">
																			<asp:Label id="lblErrorMsg" runat="server" Font-Size="9pt" Width="100%" ForeColor="Red"></asp:Label></TD>
																	</TR>
																</TABLE>
															</TD>
														<TR>
															<TD>
																<asp:DropDownList id="ddlSelectJournal" runat="server" AutoPostBack="True"></asp:DropDownList>
																<asp:datagrid id="DataGrid1" runat="server" Font-Size="9pt" Width="100%" PageSize="15" DataKeyField="JArticleID"
																	AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanged="doPaging" BorderColor="White"
																	BorderStyle="Ridge" CellSpacing="1" BorderWidth="2px" BackColor="White" CellPadding="3" GridLines="None">
																	<SelectedItemStyle Font-Bold="True" ForeColor="MidnightBlue" BackColor="Lavender"></SelectedItemStyle>
																	<ItemStyle HorizontalAlign="Center" ForeColor="Black" BackColor="WhiteSmoke"></ItemStyle>
																	<HeaderStyle Font-Bold="True" HorizontalAlign="Center" ForeColor="GhostWhite" BackColor="DimGray"></HeaderStyle>
																	<FooterStyle ForeColor="Black" BackColor="#C6C3C6"></FooterStyle>
																	<Columns>
																		<asp:BoundColumn DataField="JArticleID" HeaderText="No.">
																			<HeaderStyle Width="10%"></HeaderStyle>
																		</asp:BoundColumn>
																		<asp:BoundColumn DataField="MediaName" HeaderText="제호">
																			<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
																			<ItemStyle HorizontalAlign="Center"></ItemStyle>
																		</asp:BoundColumn>
																		<asp:BoundColumn DataField="BalHengYear" HeaderText="발행년도"></asp:BoundColumn>
																		<asp:BoundColumn DataField="Gwonho" HeaderText="호수"></asp:BoundColumn>
																		<asp:ButtonColumn DataTextField="Title" HeaderText="제목" CommandName="Select">
																			<ItemStyle HorizontalAlign="Left"></ItemStyle>
																		</asp:ButtonColumn>
																		<asp:BoundColumn DataField="Writers" HeaderText="저자">
																			<HeaderStyle Width="10%"></HeaderStyle>
																		</asp:BoundColumn>
																		<asp:BoundColumn DataField="InputDateTime" HeaderText="입력일시">
																			<HeaderStyle Width="13%"></HeaderStyle>
																		</asp:BoundColumn>
																		<asp:TemplateColumn HeaderText="보기">
																			<HeaderStyle Width="5%"></HeaderStyle>
																			<ItemTemplate>
																				<asp:Label id=Label1 runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.PreviewBtn") %>'>
																				</asp:Label>
																				<asp:Label id="Label2" runat="server"></asp:Label>
																			</ItemTemplate>
																			<EditItemTemplate>
																				<asp:TextBox id=TextBox1 runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.PreviewBtn") %>'>
																				</asp:TextBox>
																			</EditItemTemplate>
																		</asp:TemplateColumn>
																		<asp:BoundColumn Visible="false" DataField="filename" HeaderText="파일명"></asp:BoundColumn>
																	</Columns>
																	<PagerStyle HorizontalAlign="Right" ForeColor="Black" BackColor="#C6C3C6" Mode="NumericPages"></PagerStyle>
																</asp:datagrid></TD>
														</TR>
													</TABLE>
												</asp:panel></td>
										</TR>
										<tr>
											<td><asp:panel id="pnlEntries" Runat="server" Visible="False">
													<TABLE cellSpacing="1" cellPadding="3" border="0">
														<TR>
															<TD class="text" width="15%" bgColor="#f2f2f2">
																<DIV align="right"><STRONG><FONT color="#003399"><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">&nbsp;번호</FONT></STRONG></DIV>
															</TD>
															<TD width="85%">
																<asp:label id="lblJArticleID" runat="server" Font-Size="10pt" Font-Bold="True"></asp:label></TD>
														</TR>
														<TR>
															<TD><IMG height="4" src="../images/00.gif" width="1"></TD>
														</TR>
														<TR>
															<TD class="text" width="15%" bgColor="#f2f2f2">
																<DIV align="right"><STRONG><FONT color="#003399"><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">
																			제목</FONT></STRONG></DIV>
															</TD>
															<TD width="85%">
																<asp:textbox id="txtTitle" runat="server" Font-Size="9pt" Width="491px"></asp:textbox></TD>
														</TR>
														<TR>
															<TD class="text" bgColor="#f2f2f2">
																<DIV align="right"><STRONG><FONT color="#003399"><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">&nbsp;영문제목</FONT></STRONG></DIV>
															</TD>
															<TD>
																<asp:textbox id="txtTitleEng" runat="server" Font-Size="9pt" Width="491px" DESIGNTIMEDRAGDROP="3738"></asp:textbox></TD>
														</TR>
														<TR>
															<TD><IMG height="4" src="../images/00.gif" width="1"></TD>
														</TR>
														<TR>
															<TD class="text" bgColor="#f2f2f2">
																<DIV align="right"><STRONG><FONT color="#003399"><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">&nbsp;저자</FONT></STRONG></DIV>
															</TD>
															<TD>
																<asp:textbox id="txtWriters" runat="server" Font-Size="9pt" Width="320px" DESIGNTIMEDRAGDROP="3746"></asp:textbox>&nbsp; 
																예) 최윤수;홍영근</TD>
														</TR>
														<TR>
															<TD><IMG height="4" src="../images/00.gif" width="1"></TD>
														</TR>
														<TR>
															<TD class="text" bgColor="#f2f2f2"><FONT face="굴림">
																	<DIV align="right"><STRONG><FONT color="#003399"><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">&nbsp;출처</FONT></STRONG></DIV>
																</FONT>
															</TD>
															<TD>
																<TABLE cellSpacing="1" cellPadding="0" border="0">
																	<TR>
																		<TD style="WIDTH: 66px" width="66">
																			<DIV align="right"><STRONG><FONT color="#003399"><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">&nbsp;학술지명</FONT></STRONG></DIV>
																		</TD>
																		<TD style="WIDTH: 20px" width="27">
																			<asp:dropdownlist id="ddlJournal" runat="server" Font-Size="9pt" AutoPostBack="True" Width="135px"></asp:dropdownlist></TD>
																		<TD><BUTTON id=관리 title=관리 
                              style="WIDTH: 40px; HEIGHT: 20px" 
                              onclick="window.open('JournalEditorSub.aspx?JournalID=<%=ddljournal.selectedvalue%>','journaleditor','toolbar=0, directories=0, status=1, menubar=no, scrollbars=yes, resizable=no,width=520,height=150,top=30,left=300');" 
                              type=button>관리</BUTTON>
																			<asp:Button id="btnJournalRefresh" runat="server" Text="학술지명 새로고침"></asp:Button></TD>
																	</TR>
																</TABLE>
																<TABLE cellSpacing="1" cellPadding="0" bgColor="#e2e2e2" border="0">
																	<TR>
																		<TD colSpan="2">&nbsp;<FONT color="#003399"><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">&nbsp;정기간행물번호</FONT>
																			<asp:TextBox id="txtGanHengMulNo" runat="server" Width="132px" Enabled="False"></asp:TextBox></TD>
																		<TD><FONT color="#003399">&nbsp; </FONT><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle"><FONT color="#003399">&nbsp;ISSN
																				<asp:TextBox id="txtISSN" runat="server" Width="80px" Enabled="False"></asp:TextBox></FONT></TD>
																	</TR>
																	<TR>
																		<TD colSpan="2">&nbsp;<IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle"><FONT color="#003399">&nbsp;발행지</FONT>
																			<asp:TextBox id="txtBalHengJi" runat="server" Width="180px" Enabled="False"></asp:TextBox></TD>
																		<TD><FONT color="#003399">&nbsp; </FONT><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle"><FONT color="#003399">&nbsp;발행처
																				<asp:TextBox id="txtBalHengCher" runat="server" Width="180px" Enabled="False"></asp:TextBox></FONT></TD>
																	</TR>
																</TABLE>
																<TABLE cellSpacing="1" cellPadding="0" border="0">
																	<TR>
																		<TD colSpan="4"><FONT color="#003399">&nbsp;<IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">&nbsp;발행년도
																				<asp:TextBox id="txtBalHengYear" runat="server" Width="80px"></asp:TextBox>&nbsp;
																				<IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">&nbsp;호수</FONT>
																			<asp:TextBox id="txtGwonHo" runat="server" Width="80px"></asp:TextBox><FONT color="#003399">&nbsp;&nbsp;<IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">&nbsp;루계
																			</FONT>
																			<asp:TextBox id="txtRugye" runat="server" Width="80px"></asp:TextBox></TD>
																	</TR>
																	<TR>
																		<TD colSpan="4"><FONT color="#003399">&nbsp;<IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">&nbsp;쪽수</FONT>
																			<asp:TextBox id="txtBeginPage" runat="server" Width="40px"></asp:TextBox><FONT color="#003399">-</FONT>
																			<asp:TextBox id="txtEndPage" runat="server" Width="40px"></asp:TextBox></TD>
																	</TR>
																</TABLE>
															</TD>
														</TR>
														<TR>
															<TD><IMG height="4" src="../images/00.gif" width="1"></TD>
														</TR>
														<TR>
															<TD class="text" bgColor="#f2f2f2">
																<DIV align="right"><STRONG><FONT color="#003399"><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">&nbsp;전송처</FONT></STRONG></DIV>
															</TD>
															<TD>
																<asp:textbox id="txtJunSongCher" runat="server" Font-Size="9pt" Width="224px" Visible="False"
																	DESIGNTIMEDRAGDROP="4022" Enabled="False"></asp:textbox></TD>
														</TR>
														<TR>
															<TD class="text" bgColor="#f2f2f2">
																<DIV align="right"><STRONG><FONT color="#003399"><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">&nbsp;전송일</FONT></STRONG></DIV>
															</TD>
															<TD>
																<asp:textbox id="txtJunSongDate" runat="server" Font-Size="9pt" Width="80px" Visible="False"></asp:textbox></TD>
														</TR>
														<TR>
															<TD><IMG height="4" src="../images/00.gif" width="1"></TD>
														</TR>
														<TR>
															<TD class="text" bgColor="#f2f2f2">
																<DIV align="right"><STRONG><FONT color="#003399"><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">&nbsp;파일포맷</FONT></STRONG></DIV>
															</TD>
															<TD>
																<asp:DropDownList id="ddlFormat" runat="server" AutoPostBack="True">
																	<asp:ListItem Value="1">Full-Text</asp:ListItem>
																	<asp:ListItem Value="0">PDF</asp:ListItem>
																</asp:DropDownList></TD>
														</TR>
														<asp:panel id="pnlSetFile" Runat="server" Visible="False">
															<TR>
																<TD class="text" bgColor="#f2f2f2">
																	<DIV align="right"><STRONG><FONT color="#003399"><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">&nbsp;파일첨부</FONT></STRONG></DIV>
																</TD>
																<TD>
																	<P><INPUT language="vb" id="txtFile" style="FONT-SIZE: 9pt; WIDTH: 74%; HEIGHT: 22px" type="file"
																			size="43" name="txtImageFile" runat="server">&nbsp;
																		<asp:button id="btnPDFUpload" runat="server" Font-Size="9pt" Text="첨부"></asp:button><BR>
																		현재 올려진 파일 :
																		<asp:Label id="lblFileName" runat="server" ForeColor="Olive">없음</asp:Label></P>
																</TD>
															</TR>
															<TR>
																<TD class="text" bgColor="#f2f2f2">
																	<DIV align="right"><STRONG><FONT color="#003399"><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">&nbsp;파일크기</FONT></STRONG></DIV>
																</TD>
																<TD>
																	<asp:Label id="lblFileSize" runat="server"></asp:Label>&nbsp;Byte</TD>
															</TR>
														</asp:panel>
														<asp:panel id="pnlSetText" Runat="server">
															<TR>
																<TD class="text" style="HEIGHT: 96px" bgColor="#f2f2f2">
																	<DIV align="right"><STRONG><FONT color="#003399"><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">&nbsp;본문입력</FONT></STRONG></DIV>
																</TD>
																<TD style="HEIGHT: 96px">
																	<asp:textbox id="txtNayong" runat="server" Font-Size="9pt" Width="491px" Height="179px" TextMode="MultiLine"></asp:textbox></TD>
															</TR>
														</asp:panel>
														<TR>
															<TD><IMG height="4" src="../images/00.gif" width="1"></TD>
														</TR>
														<TR>
															<TD class="text" bgColor="#f2f2f2">
																<DIV align="right"><STRONG><FONT color="#003399"><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">
																			입력일</FONT></STRONG></DIV>
															</TD>
															<TD>
																<asp:textbox id="txtInputDateTime" runat="server" Font-Size="9pt" Width="252px" Enabled="False"></asp:textbox>
																<asp:Label id="lblErrInput" runat="server" Font-Size="9pt" Width="242px" ForeColor="Red"></asp:Label></TD>
														</TR>
														<TR>
															<TD>
																<DIV align="right"><FONT color="#003399"><STRONG></STRONG></FONT></DIV>
															</TD>
															<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																<asp:button id="btnJunsong" runat="server" Font-Size="8pt" Text="저장"></asp:button>&nbsp;&nbsp;&nbsp;
																<asp:checkbox id="chkPreviewAfterSave" runat="server" Font-Size="9pt" Text="미리보기" Checked="true"></asp:checkbox>
																<asp:Button id="btnDelete" Font-Size="8pt" Text="삭제" Runat="server"></asp:Button></TD>
														</TR>
													</TABLE>
													<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" Font-Size="9pt" Visible="False" ErrorMessage="제목을 입력하세요"
														Display="Dynamic" ControlToValidate="txtTitle" EnableClientScript="False"></asp:RequiredFieldValidator>
													<asp:ValidationSummary id="ValidationSummary1" runat="server" Font-Size="9pt" ShowSummary="False" ShowMessageBox="True"
														DisplayMode="List"></asp:ValidationSummary>
												</asp:panel></td>
										</tr>
										<tr>
											<td>&nbsp;</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td background="../images/bg_table_big.gif"><uc1:bottom id="Bottom1" runat="server"></uc1:bottom></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
