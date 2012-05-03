
<%@ page import="com.onb.registrationsystem.Student" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-student" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-student" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="studentNumber" title="${message(code: 'student.studentNumber.label', default: 'Student Number')}" />
					
						<g:sortableColumn property="accountExpired" title="${message(code: 'student.accountExpired.label', default: 'Account Expired')}" />
					
						<g:sortableColumn property="accountLocked" title="${message(code: 'student.accountLocked.label', default: 'Account Locked')}" />
					
						<g:sortableColumn property="enabled" title="${message(code: 'student.enabled.label', default: 'Enabled')}" />

					
					</tr>
				</thead>
				<tbody>
				<g:each in="${studentInstanceList}" status="i" var="studentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${studentInstance.id}">${fieldValue(bean: studentInstance, field: "studentNumber")}</g:link></td>
					
					
						<td><g:formatBoolean boolean="${studentInstance.accountExpired}" /></td>
					
						<td><g:formatBoolean boolean="${studentInstance.accountLocked}" /></td>
				
						<td><g:formatBoolean boolean="${studentInstance.enabled}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${studentInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
