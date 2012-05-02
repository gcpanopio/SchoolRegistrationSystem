<%@ page import="com.onb.registrationsystem.Student" %>



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

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'level', 'error')} required">
	<label for="level">
		<g:message code="student.level.label" default="Level" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="level" required="" value="${fieldValue(bean: studentInstance, field: 'level')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'registrationDate', 'error')} required">
	<label for="registrationDate">
		<g:message code="student.registrationDate.label" default="Registration Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="registrationDate" precision="day"  value="${studentInstance?.registrationDate}"  />
</div>

