
<%@ page import="com.onb.registrationsystem.StudentClass" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'studentClass.label', default: 'StudentClass')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-studentClass" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-studentClass" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="studentClass.subject.label" default="Subject" /></th>
					
						<th><g:message code="studentClass.teacher.label" default="Teacher" /></th>
					
						<th><g:message code="studentClass.room.label" default="Room" /></th>
					
						<th><g:message code="studentClass.timeslot.label" default="Timeslot" /></th>
					
						<g:sortableColumn property="maxStudents" title="${message(code: 'studentClass.maxStudents.label', default: 'Max Students')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${studentClassInstanceList}" status="i" var="studentClassInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${studentClassInstance.id}">${fieldValue(bean: studentClassInstance, field: "subject")}</g:link></td>
					
						<td>${fieldValue(bean: studentClassInstance, field: "teacher")}</td>
					
						<td>${fieldValue(bean: studentClassInstance, field: "room")}</td>
					
						<td>${fieldValue(bean: studentClassInstance, field: "timeslot")}</td>
					
						<td>${fieldValue(bean: studentClassInstance, field: "maxStudents")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${studentClassInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
