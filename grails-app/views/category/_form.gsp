<%@ page import="eventlerdemo.Category" %>



<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'categoryName', 'error')} required">
	<label for="categoryName">
		<g:message code="category.categoryName.label" default="Category Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="categoryName" required="" value="${categoryInstance?.categoryName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'events', 'error')} ">
	<label for="events">
		<g:message code="category.events.label" default="Events" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${categoryInstance?.events?}" var="e">
    <li><g:link controller="event" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="event" action="create" params="['category.id': categoryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'event.label', default: 'Event')])}</g:link>
</li>
</ul>

</div>

