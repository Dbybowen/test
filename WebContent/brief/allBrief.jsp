<%@ page language="java"
	import="java.util.*,com.brief.po.*,com.brief.dao.*,com.brief.db.*,java.sql.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Allbrief</title>  

</head>
<body>
	<table cellSpacing=0 cellPadding=5 width="100%" border=0>
		<tr>
			<td><h3 align="center">所有简介</h3></td>
		</tr>
		<tr>
			<td height=2></td>
		</tr>
	</table>
	<div>
		<font color="red"><%=request.getAttribute("msg") != null ? request.getAttribute("msg") : ""%></font>
	</div>
	<table borderColor=#cccccc cellSpacing=0 width="100%" align=center
		border=0>
		<tr>
			<td>
				<table id=grd
					style="border-top-width: 0px; font-weight: normal; border-left-width: 0px; border-left-color: #cccccc; border-right-width: 0px; border-right-color: #cccccc;"
					cellSpacing=1 cellPadding=2 rules=all border=0>
					<tr
						style="font-style: normal; background-color: #eeeeee; text-decoratton: none">
						<td width=15%>表号</td>
						<td width=25%>姓名</td>
						<td width=30%>求职目标</td>
						<td width=30%>操作</td>
					</tr>
					<%
						List<Brief> list = (List<Brief>) request.getAttribute("list");
						if (list == null) {
							response.sendRedirect("BriefServlet?op=Allbrief");
							return;
						}
						System.out.println("--------------list=" + list.size());
						if (list.size() == 0) {
							out.println("<tr><td colspan=4>暂时没有消息</td><tr>");
						} else {
							String p = (String) request.getParameter("page");
							if (p == null || p == "") {
								p = "1";
							}
							int currentPage = Integer.parseInt(p);
							int pagesize = 5;
							int recordCount = list.size();
							int maxPage = 0;
							maxPage = (recordCount % pagesize == 0) ? (recordCount / pagesize) : (recordCount / pagesize + 1);

							if (currentPage < 1) {
								currentPage = 1;
							} else {
								if (currentPage > maxPage) {
									currentPage = maxPage;
								}
							}
							int index = (currentPage - 1) * pagesize;
							for (int i = index; i < index + pagesize; i++) {
								try {
									if (i > recordCount - 1) {
										break;
									}
								} catch (Exception e) {
								}
								Brief brief = list.get(i);
					%>
					<tr
						style="font-weight: normal; font-style: normal; background-color: while; text-decoratton: none">
						<td><%=brief.getBid()%></a></td>
						<td><%=brief.getName()%></td>
						<td><%=brief.getTarget()%></td>
						<td><a href="brief2.jsp?id=<%=brief.getBid()%>">修改</a>&nbsp;&nbsp;
							<a href="delete.jsp?id=<%=brief.getBid()%>"
							onclick="javascript:if(!confirm('确认要删除吗')){return true;}">删除</a></td>
					</tr>
					<%
						}
					%>
					<tr
						style="font-weight: normal; font-style: normal; backround-color: white; text-decoratton: none">
						<td colspan="4">
							<form name="fenye" method="get" action="">
								<p align="center">
									<font size=2> <a
										href="BriefServlet?op=Allbrief&page=<%=currentPage - 1%>">上一页</a>&nbsp;&nbsp;
										<%=currentPage%>/<%=maxPage%>&nbsp;&nbsp; <a
										href="BriefServlet?op=Allbrief&page=<%=currentPage + 1%>">下一页</a>
									</font>
								</p>
							</form>
						</td>
					</tr>
					<%
						}
					%>

				</table>
			</td>
		</tr>
	</table>

	</table>

</body>
</html>