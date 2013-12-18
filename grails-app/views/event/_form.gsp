<%@ page import="eventlerdemo.Event" %>



<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="event.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${eventInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'details', 'error')} ">
	<label for="details">
		<g:message code="event.details.label" default="Details" />
		
	</label>
	<g:textField name="details" value="${eventInstance?.details}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'start', 'error')} required">
	<label for="start">
		<g:message code="event.start.label" default="Start" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="start" precision="day"  value="${eventInstance?.start}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'end', 'error')} required">
	<label for="end">
		<g:message code="event.end.label" default="End" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="end" precision="day"  value="${eventInstance?.end}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'eventHomepage', 'error')} ">
	<label for="eventHomepage">
		<g:message code="event.eventHomepage.label" default="Event Homepage" />
		
	</label>
	<g:textField name="eventHomepage" value="${eventInstance?.eventHomepage}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'eventSocialmedia', 'error')} ">
	<label for="eventSocialmedia">
		<g:message code="event.eventSocialmedia.label" default="Event Socialmedia" />
		
	</label>
	<g:textField name="eventSocialmedia" value="${eventInstance?.eventSocialmedia}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="event.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${eventlerdemo.Category.list()}" optionKey="id" required="" value="${eventInstance?.category?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'forAdultsOnly', 'error')} ">
	<label for="forAdultsOnly">
		<g:message code="event.forAdultsOnly.label" default="For Adults Only" />
		
	</label>
	<g:checkBox name="forAdultsOnly" value="${eventInstance?.forAdultsOnly}" />
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'organizer', 'error')} required">
	<label for="organizer">
		<g:message code="event.organizer.label" default="Organizer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="organizer" name="organizer.id" from="${eventlerdemo.Organizer.list()}" optionKey="id" required="" value="${eventInstance?.organizer?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'venue', 'error')} required">
	<label for="venue">
		<g:message code="event.venue.label" default="Venue" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="venue" name="venue.id" from="${eventlerdemo.Venue.list()}" optionKey="id" required="" value="${eventInstance?.venue?.id}" class="many-to-one"/>
</div>

