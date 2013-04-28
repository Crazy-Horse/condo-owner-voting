<%@ page import="com.striversgardens.election.domain.Candidate" %>



<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="candidate.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${candidateInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="candidate.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${candidateInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'owners', 'error')} ">
	<label for="owners">
		<g:message code="candidate.owners.label" default="Owners" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'primaryCandidate', 'error')} ">
	<label for="primaryCandidate">
		<g:message code="candidate.primaryCandidate.label" default="Primary Candidate" />
		
	</label>
	<g:checkBox name="primaryCandidate" value="${candidateInstance?.primaryCandidate}" />
</div>

