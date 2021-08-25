<%@ page import="com.acme.h6d2.model.H6D2" %><%@
page import="com.acme.h6d2.service.H6D2LocalServiceUtil" %>

<%@ page import="java.util.List" %>

<%@ include file="/init.jsp" %>

<p>
	<b><liferay-ui:message key="h6d2-portlet-welcome" /></b>
</p>

<div class="container">
	<portlet:actionURL name="addH6D2" var="addH6D2Url">
	</portlet:actionURL>

	<aui:form action="<%= addH6D2Url %>">
		<aui:input name="item" style="width: 50%;" type="text" />

		<aui:button type="submit" value="submit" />
	</aui:form>
</div>

<%
List<H6D2> H6D2List = H6D2LocalServiceUtil.getH6D2s(-1, -1);
%>

<h4>Todo List</h4>
<c:choose>
	<c:when test="<%= H6D2List != null && H6D2List.size() > 0 %>">
		<table>
			<tbody>
				<c:forEach items="<%= H6D2List %>" var="H6D2">
					<tr>
						<td>${H6D2.todo }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:when>
	<c:otherwise>
		List is empty
	</c:otherwise>
</c:choose>