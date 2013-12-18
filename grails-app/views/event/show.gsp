
<%@ page import="eventlerdemo.Event" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-event" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-event" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list event">
			
				<g:if test="${eventInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="event.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${eventInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.details}">
				<li class="fieldcontain">
					<span id="details-label" class="property-label"><g:message code="event.details.label" default="Details" /></span>
					
						<span class="property-value" aria-labelledby="details-label"><g:fieldValue bean="${eventInstance}" field="details"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.start}">
				<li class="fieldcontain">
					<span id="start-label" class="property-label"><g:message code="event.start.label" default="Start" /></span>
					
						<span class="property-value" aria-labelledby="start-label"><g:formatDate date="${eventInstance?.start}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.end}">
				<li class="fieldcontain">
					<span id="end-label" class="property-label"><g:message code="event.end.label" default="End" /></span>
					
						<span class="property-value" aria-labelledby="end-label"><g:formatDate date="${eventInstance?.end}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.eventHomepage}">
				<li class="fieldcontain">
					<span id="eventHomepage-label" class="property-label"><g:message code="event.eventHomepage.label" default="Event Homepage" /></span>
					
						<span class="property-value" aria-labelledby="eventHomepage-label"><g:fieldValue bean="${eventInstance}" field="eventHomepage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.eventSocialmedia}">
				<li class="fieldcontain">
					<span id="eventSocialmedia-label" class="property-label"><g:message code="event.eventSocialmedia.label" default="Event Socialmedia" /></span>
					
						<span class="property-value" aria-labelledby="eventSocialmedia-label"><g:fieldValue bean="${eventInstance}" field="eventSocialmedia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="event.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:link controller="category" action="show" id="${eventInstance?.category?.id}">${eventInstance?.category?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.forAdultsOnly}">
				<li class="fieldcontain">
					<span id="forAdultsOnly-label" class="property-label"><g:message code="event.forAdultsOnly.label" default="For Adults Only" /></span>
					
						<span class="property-value" aria-labelledby="forAdultsOnly-label"><g:formatBoolean boolean="${eventInstance?.forAdultsOnly}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.organizer}">
				<li class="fieldcontain">
					<span id="organizer-label" class="property-label"><g:message code="event.organizer.label" default="Organizer" /></span>
					
						<span class="property-value" aria-labelledby="organizer-label"><g:link controller="organizer" action="show" id="${eventInstance?.organizer?.id}">${eventInstance?.organizer?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.venue}">
				<li class="fieldcontain">
					<span id="venue-label" class="property-label"><g:message code="event.venue.label" default="Venue" /></span>
					
						<span class="property-value" aria-labelledby="venue-label"><g:link controller="venue" action="show" id="${eventInstance?.venue?.id}">${eventInstance?.venue?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${eventInstance?.id}" />
					<g:link class="edit" action="edit" id="${eventInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
