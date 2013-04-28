<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="main" />
<title>Strivers Gardens Vote Summary Page</title>
</head>
<body>
	<div class="body">
		<table>
			<thead>
				<tr>
					<g:sortableColumn property="name"
						title="${message(code: 'candidate.firstName.label', default: 'Name')}" />

					<g:sortableColumn property="numVotes"
						title="${message(code: 'candidate.lastName.label', default: 'Number of Votes')}" />

					<g:sortableColumn property="percentVotes"
						title="${message(code: 'candidate.primaryCandidate.label', default: 'Vote Percent')}" />
				</tr>
			</thead>
			<tbody>
			<% votes = request.getAttribute("votesummary") %>
				<g:each in="${votes}" status="i"
					var="entry">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td>
							${entry.key}
						</td>
						
						<g:each in="${entry.value}" var="item" >
							<td>
								${item}
							</td>

						</g:each>
						
					</tr>
				</g:each>
			</tbody>
		</table>
	</div>
</body>
</html>