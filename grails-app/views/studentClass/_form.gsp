<%@ page import="com.onb.registrationsystem.StudentClass" %>



<div class="fieldcontain ${hasErrors(bean: studentClassInstance, field: 'subject', 'error')} required">
	<label for="subject">
		<g:message code="studentClass.subject.label" default="Subject" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="subject" name="subject.id" from="${com.onb.registrationsystem.Subject.list()}" optionKey="id" required="" value="${studentClassInstance?.subject?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentClassInstance, field: 'teacher', 'error')} required">
	<label for="teacher">
		<g:message code="studentClass.teacher.label" default="Teacher" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="teacher" name="teacher.id" from="${com.onb.registrationsystem.Teacher.list()}" optionKey="id" required="" value="${studentClassInstance?.teacher?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentClassInstance, field: 'room', 'error')} required">
	<label for="room">
		<g:message code="studentClass.room.label" default="Room" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="room" name="room.id" from="${com.onb.registrationsystem.Room.list()}" optionKey="id" required="" value="${studentClassInstance?.room?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentClassInstance, field: 'timeslot', 'error')} required">
	<label for="timeslot">
		<g:message code="studentClass.timeslot.label" default="Timeslot" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="timeslot" name="timeslot.id" from="${com.onb.registrationsystem.Timeslot.list()}" optionKey="id" required="" value="${studentClassInstance?.timeslot?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentClassInstance, field: 'maxStudents', 'error')} required">
	<label for="maxStudents">
		<g:message code="studentClass.maxStudents.label" default="Max Students" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="maxStudents" required="" value="${fieldValue(bean: studentClassInstance, field: 'maxStudents')}"/>
</div>

