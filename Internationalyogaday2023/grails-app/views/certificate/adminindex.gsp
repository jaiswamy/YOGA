
<%@ page import="com.hiideals.form.Certificate"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'certificate.label', default: 'Certificate')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#list-certificate" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="list-certificate" class="content scaffold-list" role="main">
		<h1>
			<g:message code="default.list.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<table>
			<thead>
				<tr>

					<g:sortableColumn property="firstName"
						title="${message(code: 'certificate.firstName.label', default: 'First Name')}" />

					<g:sortableColumn property="lastName"
						title="${message(code: 'certificate.lastName.label', default: 'Last Name')}" />

					<g:sortableColumn property="phoneNo"
						title="${message(code: 'certificate.phoneNo.label', default: 'Phone No')}" />

					<g:sortableColumn property="dob"
						title="${message(code: 'certificate.dob.label', default: 'Dob')}" />

					<g:sortableColumn property="gender"
						title="${message(code: 'certificate.gender.label', default: 'Gender')}" />
						
						<g:sortableColumn property="Certificates"
						title="${message(code: 'certificate.Certificates.label', default: 'Certificates')}" />

				</tr>
			</thead>
			<tbody>
				<g:each in="${formdet}" status="i"
					var="certificateInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${certificateInstance.id}">
								${fieldValue(bean: certificateInstance, field: "firstName")}
							</g:link></td>

						<td>
							${fieldValue(bean: certificateInstance, field: "lastName")}
						</td>

						<td>
							${fieldValue(bean: certificateInstance, field: "phoneNo")}
						</td>

						<td>
							${fieldValue(bean: certificateInstance, field: "dob")}
						</td>

						<td>
							${fieldValue(bean: certificateInstance, field: "gender")}
						</td>

						<td><g:link action="report" resource="${certificateInstance}">
								<span class="label label-sm label-success"><b>Certificates</b></span>
																								</g:link></td>
						
						
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${certificateInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
