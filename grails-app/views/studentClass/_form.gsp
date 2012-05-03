<%@ page import="com.onb.registrationsystem.StudentClass" %>


<fieldset class="embedded"><legend><g:message code="studentClass.subject.label" default="Subject" /></legend>
<div class="fieldcontain ${hasErrors(bean: studentClassInstance, field: 'subject.fee', 'error')} required">
	<label for="subject.fee">
		<g:message code="studentClass.subject.fee.label" default="Fee" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="fee" required="" value="${fieldValue(bean: subjectInstance, field: 'fee')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentClassInstance, field: 'subject.id', 'error')} required">
	<label for="subject.id">
		<g:message code="studentClass.subject.id.label" default="Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="id" required="" value="${fieldValue(bean: subjectInstance, field: 'id')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentClassInstance, field: 'subject.name', 'error')} required">
	<label for="subject.name">
		<g:message code="studentClass.subject.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${subjectInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentClassInstance, field: 'subject.version', 'error')} required">
	<label for="subject.version">
		<g:message code="studentClass.subject.version.label" default="Version" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="version" required="" value="${fieldValue(bean: subjectInstance, field: 'version')}"/>
</div>
</fieldset><fieldset class="embedded"><legend><g:message code="studentClass.teacher.label" default="Teacher" /></legend>
<div class="fieldcontain ${hasErrors(bean: studentClassInstance, field: 'teacher.firstName', 'error')} required">
	<label for="teacher.firstName">
		<g:message code="studentClass.teacher.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${teacherInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentClassInstance, field: 'teacher.id', 'error')} required">
	<label for="teacher.id">
		<g:message code="studentClass.teacher.id.label" default="Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="id" required="" value="${fieldValue(bean: teacherInstance, field: 'id')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentClassInstance, field: 'teacher.lastName', 'error')} required">
	<label for="teacher.lastName">
		<g:message code="studentClass.teacher.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${teacherInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentClassInstance, field: 'teacher.version', 'error')} required">
	<label for="teacher.version">
		<g:message code="studentClass.teacher.version.label" default="Version" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="version" required="" value="${fieldValue(bean: teacherInstance, field: 'version')}"/>
</div>
</fieldset><fieldset class="embedded"><legend><g:message code="studentClass.room.label" default="Room" /></legend>
<div class="fieldcontain ${hasErrors(bean: studentClassInstance, field: 'room.building', 'error')} required">
	<label for="room.building">
		<g:message code="studentClass.room.building.label" default="Building" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="building" required="" value="${roomInstance?.building}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentClassInstance, field: 'room.id', 'error')} required">
	<label for="room.id">
		<g:message code="studentClass.room.id.label" default="Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="id" required="" value="${fieldValue(bean: roomInstance, field: 'id')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentClassInstance, field: 'room.roomNumber', 'error')} required">
	<label for="room.roomNumber">
		<g:message code="studentClass.room.roomNumber.label" default="Room Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="roomNumber" required="" value="${roomInstance?.roomNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentClassInstance, field: 'room.version', 'error')} required">
	<label for="room.version">
		<g:message code="studentClass.room.version.label" default="Version" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="version" required="" value="${fieldValue(bean: roomInstance, field: 'version')}"/>
</div>
</fieldset><fieldset class="embedded"><legend><g:message code="studentClass.timeslot.label" default="Timeslot" /></legend>
<div class="fieldcontain ${hasErrors(bean: studentClassInstance, field: 'timeslot.day', 'error')} required">
	<label for="timeslot.day">
		<g:message code="studentClass.timeslot.day.label" default="Day" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="day" required="" value="${timeslotInstance?.day}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentClassInstance, field: 'timeslot.end', 'error')} required">
	<label for="timeslot.end">
		<g:message code="studentClass.timeslot.end.label" default="End" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="end" required="" value="${fieldValue(bean: timeslotInstance, field: 'end')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentClassInstance, field: 'timeslot.id', 'error')} required">
	<label for="timeslot.id">
		<g:message code="studentClass.timeslot.id.label" default="Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="id" required="" value="${fieldValue(bean: timeslotInstance, field: 'id')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentClassInstance, field: 'timeslot.start', 'error')} required">
	<label for="timeslot.start">
		<g:message code="studentClass.timeslot.start.label" default="Start" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="start" required="" value="${fieldValue(bean: timeslotInstance, field: 'start')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentClassInstance, field: 'timeslot.version', 'error')} required">
	<label for="timeslot.version">
		<g:message code="studentClass.timeslot.version.label" default="Version" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="version" required="" value="${fieldValue(bean: timeslotInstance, field: 'version')}"/>
</div>
</fieldset>
<div class="fieldcontain ${hasErrors(bean: studentClassInstance, field: 'maxStudents', 'error')} required">
	<label for="maxStudents">
		<g:message code="studentClass.maxStudents.label" default="Max Students" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="maxStudents" required="" value="${fieldValue(bean: studentClassInstance, field: 'maxStudents')}"/>
</div>

