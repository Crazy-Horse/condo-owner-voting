
<%@ page import="com.striversgardens.election.domain.Owner" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'owner.label', default: 'Owner')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-owner" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-owner" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list owner">
			
				<g:if test="${ownerInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="owner.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${ownerInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ownerInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="owner.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${ownerInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ownerInstance?.unit}">
				<li class="fieldcontain">
					<span id="unit-label" class="property-label"><g:message code="owner.unit.label" default="Unit" /></span>
					
						<span class="property-value" aria-labelledby="unit-label"><g:fieldValue bean="${ownerInstance}" field="unit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ownerInstance?.shares}">
				<li class="fieldcontain">
					<span id="shares-label" class="property-label"><g:message code="owner.shares.label" default="Shares" /></span>
					
						<span class="property-value" aria-labelledby="shares-label"><g:formatNumber number="${ownerInstance.shares}" format="0.0000"/></span>
				</li>
				</g:if>
			
				<g:if test="${ownerInstance?.arrears}">
				<li class="fieldcontain">
					<span id="arrears-label" class="property-label"><g:message code="owner.arrears.label" default="Arrears" /></span>
					
						<span class="property-value" aria-labelledby="arrears-label"><g:formatBoolean boolean="${ownerInstance?.arrears}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${ownerInstance?.proxy}">
				<li class="fieldcontain">
					<span id="proxy-label" class="property-label"><g:message code="owner.proxy.label" default="Proxy" /></span>
					
						<span class="property-value" aria-labelledby="proxy-label"><g:formatBoolean boolean="${ownerInstance?.proxy}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${ownerInstance?.resident}">
				<li class="fieldcontain">
					<span id="resident-label" class="property-label"><g:message code="owner.resident.label" default="Resident" /></span>
					
						<span class="property-value" aria-labelledby="resident-label"><g:formatBoolean boolean="${ownerInstance?.resident}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${ownerInstance?.votes}">
				<li class="fieldcontain">
					<span id="votes-label" class="property-label"><g:message code="owner.votes.label" default="Votes" /></span>
					
						<g:each in="${ownerInstance.votes}" var="v">
						<span class="property-value" aria-labelledby="votes-label"><g:link controller="candidate" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${ownerInstance?.id}" />
					<g:link class="edit" action="edit" id="${ownerInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
