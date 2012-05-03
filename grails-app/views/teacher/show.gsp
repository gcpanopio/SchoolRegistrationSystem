
<%@ page import="com.onb.registrationsystem.Teacher" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'teacher.label', default: 'Teacher')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-teacher" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-teacher" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list teacher">
			
				<g:if test="${teacherInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="name.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${teacherInstance.name}" field="firstName"/></span>
					
				</li>
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="name.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${teacherInstance.name}" field="lastName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${teacherInstance?.id}" />
					<g:link class="edit" action="edit" id="${teacherInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
