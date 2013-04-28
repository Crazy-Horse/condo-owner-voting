
<%@ page import="com.striversgardens.election.domain.Owner" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'owner.label', default: 'Owner')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-owner" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-owner" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<fieldset class="form">
    			<g:form action="list" method="GET">
        			<div class="fieldcontain">
            			<label for="query">Search for unit:</label>
            				<g:textField name="query" value="${params.query}"/>
        			</div>
    			</g:form>
			</fieldset>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="firstName" title="${message(code: 'owner.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'owner.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="unit" title="${message(code: 'owner.unit.label', default: 'Unit')}" />
					
						<g:sortableColumn property="shares" title="${message(code: 'owner.shares.label', default: 'Shares')}" />
					
						<g:sortableColumn property="arrears" title="${message(code: 'owner.arrears.label', default: 'Arrears')}" />
					
						<g:sortableColumn property="proxy" title="${message(code: 'owner.proxy.label', default: 'Proxy')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${ownerInstanceList}" status="i" var="ownerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${ownerInstance.id}">${fieldValue(bean: ownerInstance, field: "firstName")}</g:link></td>
					
						<td>${fieldValue(bean: ownerInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: ownerInstance, field: "unit")}</td>
					
						<td><g:formatNumber number="${ownerInstance.shares}" format="0.0000"/></td>
					
						<td><g:formatBoolean boolean="${ownerInstance.arrears}" /></td>
					
						<td><g:formatBoolean boolean="${ownerInstance.proxy}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${ownerInstanceTotal}" />
			</div>
		</div>
		<fieldset class="form">
    		Upload Form: <br />
    		<g:uploadForm action="upload">
        		<input type="file" name="myFile" />
        		<input type="submit" />
    		</g:uploadForm>
		</fieldset>
	</body>
</html>
