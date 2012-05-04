
<%@ page import="com.onb.registrationsystem.Student" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-student" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="show-student" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list student">
			
				<g:if test="${studentInstance?.studentNumber}">
				<li class="fieldcontain">
					<span id="studentNumber-label" class="property-label"><g:message code="student.studentNumber.label" default="Student Number" /></span>
					
						<span class="property-value" aria-labelledby="studentNumber-label"><g:fieldValue bean="${studentInstance}" field="studentNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.name.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="student.name.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${studentInstance.name}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.name.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="student.name.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${studentInstance.name}" field="lastName"/></span>
					
				</li>
				</g:if>

				<g:if test="${studentInstance?.level}">
				<li class="fieldcontain">
					<span id="level-label" class="property-label"><g:message code="student.level.label" default="Level" /></span>
					
						<span class="property-value" aria-labelledby="level-label"><g:fieldValue bean="${studentInstance}" field="level"/></span>
					
				</li>
				</g:if>

				<g:if test="${studentInstance?.registrationDate}">
				<li class="fieldcontain">
					<span id="registrationDate-label" class="property-label"><g:message code="student.registrationDate.label" default="Registration Date" /></span>
					
						<span class="property-value" aria-labelledby="registrationDate-label"><g:formatDate date="${studentInstance?.registrationDate}" /></span>
					
				</li>
				</g:if>
			

				<g:if test="${studentInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="student.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${studentInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="student.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${studentInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.enrollment}">

				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="student.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${studentInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="student.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${studentInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="student.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${studentInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="student.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${studentInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="student.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${studentInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
		
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${studentInstance?.id}" />
					<g:link class="edit" action="edit" id="${studentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
