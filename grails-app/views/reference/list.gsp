<%@ page import="scholarmap.Reference" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'reference.label', default: 'Reference')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-reference" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-reference" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="text" title="${message(code: 'reference.text.label', default: 'Text')}"/>

            <th><g:message code="reference.creator.label" default="Creator"/></th>

            <g:sortableColumn property="dateCreated"
                              title="${message(code: 'reference.dateCreated.label', default: 'Date Created')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${referenceInstanceList}" status="i" var="referenceInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${referenceInstance.id}">${fieldValue(bean: referenceInstance, field: "text")}</g:link></td>

                <td>${fieldValue(bean: referenceInstance, field: "creator")}</td>

                <td><g:formatDate date="${referenceInstance.dateCreated}"/></td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${referenceInstanceTotal}"/>
    </div>
</div>
</body>
</html>
