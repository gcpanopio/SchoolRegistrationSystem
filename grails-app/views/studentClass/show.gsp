
<%@ page import="com.onb.registrationsystem.StudentClass" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'studentClass.label', default: 'StudentClass')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-studentClass" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-studentClass" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list studentClass">
			
				<g:if test="${studentClassInstance?.subject}">
				<li class="fieldcontain">
					<span id="subject-label" class="property-label"><g:message code="studentClass.subject.label" default="Subject" /></span>
					
						<span class="property-value" aria-labelledby="subject-label"><g:fieldValue bean="${studentClassInstance}" field="subject"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentClassInstance?.teacher}">
				<li class="fieldcontain">
					<span id="teacher-label" class="property-label"><g:message code="studentClass.teacher.label" default="Teacher" /></span>
					
						<span class="property-value" aria-labelledby="teacher-label"><g:fieldValue bean="${studentClassInstance}" field="teacher"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentClassInstance?.room}">
				<li class="fieldcontain">
					<span id="room-label" class="property-label"><g:message code="studentClass.room.label" default="Room" /></span>
					
						<span class="property-value" aria-labelledby="room-label"><g:fieldValue bean="${studentClassInstance}" field="room"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentClassInstance?.timeslot}">
				<li class="fieldcontain">
					<span id="timeslot-label" class="property-label"><g:message code="studentClass.timeslot.label" default="Timeslot" /></span>
					
						<span class="property-value" aria-labelledby="timeslot-label"><g:fieldValue bean="${studentClassInstance}" field="timeslot"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentClassInstance?.maxStudents}">
				<li class="fieldcontain">
					<span id="maxStudents-label" class="property-label"><g:message code="studentClass.maxStudents.label" default="Max Students" /></span>
					
						<span class="property-value" aria-labelledby="maxStudents-label"><g:fieldValue bean="${studentClassInstance}" field="maxStudents"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${studentClassInstance?.id}" />
					<g:link class="edit" action="edit" id="${studentClassInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
