<%@ page import="com.onb.registrationsystem.Subject" %>



<div class="fieldcontain ${hasErrors(bean: subjectInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="subject.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${subjectInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: subjectInstance, field: 'fee', 'error')} required">
	<label for="fee">
		<g:message code="subject.fee.label" default="Fee" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="fee" required="" value="${fieldValue(bean: subjectInstance, field: 'fee')}"/>
</div>

