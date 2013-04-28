<%@ page import="com.striversgardens.election.domain.Owner" %>



<div class="fieldcontain ${hasErrors(bean: ownerInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="owner.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${ownerInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ownerInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="owner.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${ownerInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ownerInstance, field: 'unit', 'error')} required">
	<label for="unit">
		<g:message code="owner.unit.label" default="Unit" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="unit" required="" value="${ownerInstance?.unit}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ownerInstance, field: 'shares', 'error')} required">
	<label for="shares">
		<g:message code="owner.shares.label" default="Shares" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="shares" value="${ownerInstance?.shares}" required=""/>
<%--	<g:textField name="shares" value="<g:formatNumber number=--%>
<%--		"${ownerInstance?.shares}" format='\\#.####' />" required=""/>--%>
</div>

<div class="fieldcontain ${hasErrors(bean: ownerInstance, field: 'arrears', 'error')} ">
	<label for="arrears">
		<g:message code="owner.arrears.label" default="Arrears" />
		
	</label>
	<g:checkBox name="arrears" value="${ownerInstance?.arrears}" onClick="arrears_check();" />
</div>

<div class="fieldcontain ${hasErrors(bean: ownerInstance, field: 'proxy', 'error')} ">
	<label for="proxy">
		<g:message code="owner.proxy.label" default="Proxy" />
		
	</label>
	<g:checkBox name="proxy" value="${ownerInstance?.proxy}" />
</div>

<div class="fieldcontain ${hasErrors(bean: ownerInstance, field: 'resident', 'error')} ">
	<label for="resident">
		<g:message code="owner.resident.label" default="Resident" />
		
	</label>
	<g:checkBox name="resident" value="${ownerInstance?.resident}" />
</div>

<div class="fieldcontain ${hasErrors(bean: ownerInstance, field: 'votes', 'error')} ">
	<label for="votes">
		<g:message code="owner.votes.label" default="Votes" />
		
	</label>
	<g:if test="${ownerInstance?.arrears == false}">
		<g:select name="votes" from="${com.striversgardens.election.domain.Candidate.list()}" multiple="multiple" optionKey="id" size="6" value="${ownerInstance?.votes*.id}" class="many-to-many"/>
	</g:if>	
</div>

