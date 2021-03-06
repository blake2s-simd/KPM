<%@ Page Language="vb" AutoEventWireup="false" Codebehind="JournalEditorSub.aspx.vb" Inherits="KPPress.JournalEditorSub"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>JournalEditorSub</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="/include/style.css" rel="stylesheet">
	</HEAD>
	<body leftmargin="0" topmargin="0">
		<form id="Form1" method="post" runat="server">
			<TABLE cellSpacing="10" cellPadding="0" border="0">
				<TBODY>
					<TR>
						<td>
							<TABLE cellSpacing="1" cellPadding="0" border="0">
								<TR>
									<TD style="WIDTH: 66px" width="66">
										<DIV align="right"><STRONG><FONT color="#003399"><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">&nbsp;학술지명</FONT></STRONG></DIV>
									</TD>
									<TD>
										<asp:dropdownlist id="ddlJournal" runat="server" Font-Size="9pt" AutoPostBack="True" Width="135px"></asp:dropdownlist>
										<asp:TextBox id="txtJournalName" runat="server" Width="136px" Visible="False"></asp:TextBox></TD>
									<TD>
										<asp:Button id="btnAdd" runat="server" Text="추가"></asp:Button>
										<asp:Button id="btnDelete" runat="server" Text="삭제"></asp:Button></TD>
								</TR>
							</TABLE>
						</td>
					</TR>
					<tr>
						<td>
							<TABLE cellSpacing="1" cellPadding="0" bgColor="#e2e2e2" border="0">
								<TR>
									<TD colSpan="2">&nbsp;<FONT color="#003399"><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle">&nbsp;정기간행물번호</FONT>
										<asp:TextBox id="txtGanHengMulNo" runat="server" Width="132px"></asp:TextBox></TD>
									<TD><FONT color="#003399">&nbsp; </FONT><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle"><FONT color="#003399">&nbsp;ISSN
											<asp:TextBox id="txtISSN" runat="server" Width="80px"></asp:TextBox></FONT></TD>
								</TR>
								<TR>
									<TD colSpan="2">&nbsp;<IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle"><FONT color="#003399">&nbsp;발행지</FONT>
										<asp:TextBox id="txtBalHengJi" runat="server" Width="180px"></asp:TextBox></TD>
									<TD><FONT color="#003399">&nbsp; </FONT><IMG height="3" src="../images/point_blue.gif" width="3" align="absMiddle"><FONT color="#003399">&nbsp;발행처
											<asp:TextBox id="txtBalHengCher" runat="server" Width="180px"></asp:TextBox></FONT></TD>
								</TR>
							</TABLE>
							<asp:Label id="lblJournalID" runat="server" Visible="False"></asp:Label>
						</td>
					</tr>
					<tr>
						<td align="center">
							<TABLE cellSpacing="1" cellPadding="0" border="0">
								<tr>
									<td width="50">
										<asp:Button id="btnSave" runat="server" Text="저장"></asp:Button>
									</td>
									<td width="50" align="center"><INPUT style="FONT-SIZE: 9pt" onclick="window.close();" type="button" value="닫기"></td>
								</tr>
							</TABLE>
						</td>
					</tr>
		</form>
		</TBODY></TABLE>
	</body>
</HTML>
