<%@ page import="com.onb.registrationsystem.Enrollment" %>



<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'schoolYear', 'error')} required">
	<label for="schoolYear">
		<g:message code="enrollment.schoolYear.label" default="School Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="schoolYear" required="" value="${fieldValue(bean: enrollmentInstance, field: 'schoolYear')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'semester', 'error')} required">
	<label for="semester">
		<g:message code="enrollment.semester.label" default="Semester" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="semester" required="" value="${enrollmentInstance?.semester}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'classes', 'error')} ">
	<label for="classes">
		<g:message code="enrollment.classes.label" default="Classes" />
		
	</label>
	<g:select name="classes" from="${com.onb.registrationsystem.StudentClass.list()}" multiple="multiple" optionKey="id" size="5" value="${enrollmentInstance?.classes*.id}" class="many-to-many"/>
</div>
