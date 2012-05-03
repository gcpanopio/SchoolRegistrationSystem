<%@ page import="com.onb.registrationsystem.Student" %>



<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="student.username.label" default="Username" />
		<span class="required-indicator">*</span>
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

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentNumber', 'error')} required">
	<label for="studentNumber">
		<g:message code="student.studentNumber.label" default="Student Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="studentNumber" maxlength="10" required="" value="${studentInstance?.studentNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="student.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${studentInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="student.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${studentInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'enrollments', 'error')} ">
	<label for="enrollments">
		<g:message code="student.enrollments.label" default="Enrollments" />
		
	</label>
	<g:select name="enrollments" from="${com.onb.registrationsystem.Enrollment.list()}" multiple="multiple" optionKey="id" size="5" value="${studentInstance?.enrollments*.id}" class="many-to-many"/>
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

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="student.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${studentInstance?.passwordExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'registrationDate', 'error')} required">
	<label for="registrationDate">
		<g:message code="student.registrationDate.label" default="Registration Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="registrationDate" precision="day"  value="${studentInstance?.registrationDate}"  />
</div>

