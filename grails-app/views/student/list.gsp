
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
					
						<g:sortableColumn property="name.firstName" title="${message(code: 'student.name.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="name.lastName" title="${message(code: 'student.name.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="enrollment" title="${message(code: 'student.enrollment.label', default: 'Enrollment')}" />

					
					</tr>
				</thead>
				<tbody>
				<g:each in="${studentInstanceList}" status="i" var="studentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${studentInstance.id}">${fieldValue(bean: studentInstance, field: "studentNumber")}</g:link></td>
					
					
						<td>${fieldValue(bean: studentInstance.name, field: "firstName")}</td>
					
						<td>${fieldValue(bean: studentInstance.name, field: "lastName")}</td>
				
						<td>${fieldValue(bean: studentInstance, field: "enrollment")}</td>
					
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
