<%@ page import="com.onb.registrationsystem.Student" %>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentNumber', 'error')} required">
	<label for="studentNumber">
		<g:message code="student.studentNumber.label" default="Student Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="studentNumber" maxlength="10" required="" value="${studentInstance?.studentNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'enrollments', 'error')} ">
	<label for="enrollments">
		<g:message code="student.enrollments.label" default="Enrollments" />
		
	</label>
	<g:textField name="username" required="" value="${studentInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="student.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${studentInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="student.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${studentInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="student.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${studentInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="student.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${studentInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'level', 'error')} required">
	<label for="level">
		<g:message code="student.level.label" default="Level" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="level" required="" value="${fieldValue(bean: studentInstance, field: 'level')}"/>
</div>
<fieldset class="embedded"><legend><g:message code="student.name.label" default="Name" /></legend>
<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'name.firstName', 'error')} required">
	<label for="name.firstName">
		<g:message code="student.name.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${nameInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'name.id', 'error')} required">
	<label for="name.id">
		<g:message code="student.name.id.label" default="Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="id" required="" value="${fieldValue(bean: nameInstance, field: 'id')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'name.lastName', 'error')} required">
	<label for="name.lastName">
		<g:message code="student.name.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${nameInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'name.version', 'error')} required">
	<label for="name.version">
		<g:message code="student.name.version.label" default="Version" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="version" required="" value="${fieldValue(bean: nameInstance, field: 'version')}"/>
</div>
</fieldset>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="student.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${studentInstance?.passwordExpired}" />
</div>

