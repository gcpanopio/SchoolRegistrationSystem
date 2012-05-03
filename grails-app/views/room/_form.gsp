<%@ page import="com.onb.registrationsystem.Room" %>



<div class="fieldcontain ${hasErrors(bean: roomInstance, field: 'roomNumber', 'error')} required">
	<label for="roomNumber">
		<g:message code="room.roomNumber.label" default="Room Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="roomNumber" required="" value="${roomInstance?.roomNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roomInstance, field: 'building', 'error')} required">
	<label for="building">
		<g:message code="room.building.label" default="Building" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="building" required="" value="${roomInstance?.building}"/>
</div>

