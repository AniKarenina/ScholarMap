<%@ page import="cssttheorybuilder.TheoryReferenceVote" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'theoryReferenceVote.label', default: 'TheoryReferenceVote')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-theoryReferenceVote" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                          default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-theoryReferenceVote" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list theoryReferenceVote">

        <g:if test="${theoryReferenceVoteInstance?.dateCreated}">
            <li class="fieldcontain">
                <span id="dateCreated-label" class="property-label"><g:message
                        code="theoryReferenceVote.dateCreated.label" default="Date Created"/></span>

                <span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate
                        date="${theoryReferenceVoteInstance?.dateCreated}"/></span>

            </li>
        </g:if>

        <g:if test="${theoryReferenceVoteInstance?.reference}">
            <li class="fieldcontain">
                <span id="reference-label" class="property-label"><g:message code="theoryReferenceVote.reference.label"
                                                                             default="Reference"/></span>

                <span class="property-value" aria-labelledby="reference-label"><g:link controller="reference"
                                                                                       action="show"
                                                                                       id="${theoryReferenceVoteInstance?.reference?.id}">${theoryReferenceVoteInstance?.reference?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${theoryReferenceVoteInstance?.theory}">
            <li class="fieldcontain">
                <span id="theory-label" class="property-label"><g:message code="theoryReferenceVote.theory.label"
                                                                          default="Theory"/></span>

                <span class="property-value" aria-labelledby="theory-label"><g:link controller="theory" action="show"
                                                                                    id="${theoryReferenceVoteInstance?.theory?.id}">${theoryReferenceVoteInstance?.theory?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${theoryReferenceVoteInstance?.user}">
            <li class="fieldcontain">
                <span id="user-label" class="property-label"><g:message code="theoryReferenceVote.user.label"
                                                                        default="User"/></span>

                <span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show"
                                                                                  id="${theoryReferenceVoteInstance?.user?.id}">${theoryReferenceVoteInstance?.user?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${theoryReferenceVoteInstance?.id}"/>
            <g:link class="edit" action="edit" id="${theoryReferenceVoteInstance?.id}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
