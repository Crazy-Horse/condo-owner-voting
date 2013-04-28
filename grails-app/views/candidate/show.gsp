
<%@ page import="com.striversgardens.election.domain.Candidate" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candidate.label', default: 'Candidate')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-candidate" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-candidate" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list candidate">
			
				<g:if test="${candidateInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="candidate.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${candidateInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="candidate.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${candidateInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.owners}">
				<li class="fieldcontain">
					<span id="owners-label" class="property-label"><g:message code="candidate.owners.label" default="Owners" /></span>
					
						<g:each in="${candidateInstance.owners}" var="o">
						<span class="property-value" aria-labelledby="owners-label"><g:link controller="owner" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.primaryCandidate}">
				<li class="fieldcontain">
					<span id="primaryCandidate-label" class="property-label"><g:message code="candidate.primaryCandidate.label" default="Primary Candidate" /></span>
					
						<span class="property-value" aria-labelledby="primaryCandidate-label"><g:formatBoolean boolean="${candidateInstance?.primaryCandidate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${candidateInstance?.id}" />
					<g:link class="edit" action="edit" id="${candidateInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
