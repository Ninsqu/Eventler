
<%@ page import="eventlerdemo.Event" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-event" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><a href="${createLink(uri: '/about.gsp')}"><g:message code="About"/></a></li>
			</ul>
		</div>
		<div id="list-event" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<fieldset class="form">
				<g:form action="list" method="GET">
					<div class="fieldcontain">
						<label for="query">Search events:</label>
						<g:textField name="query" value="${params.query}" />
					</div>
				</g:form>
			</fieldset>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'event.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="details" title="${message(code: 'event.details.label', default: 'Details')}" />
					
						<g:sortableColumn property="start" title="${message(code: 'event.start.label', default: 'Start')}" />
											
					</tr>
				</thead>
				<tbody>
				<g:each in="${eventInstanceList}" status="i" var="eventInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${eventInstance.id}">${fieldValue(bean: eventInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: eventInstance, field: "details")}</td>
					
						<td><g:formatDate date="${eventInstance.start}" /></td>
										
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${eventInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
