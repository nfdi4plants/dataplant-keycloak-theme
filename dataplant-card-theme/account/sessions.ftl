<#import "template.ftl" as layout>
<@layout.mainLayout active='sessions' bodyClass='sessions'; section>

<#--    <div class="row">-->
<#--        <div class="col-md-10">-->
<#--            <h2>${msg("sessionsHtmlTitle")}</h2>-->
<#--        </div>-->
<#--    </div>-->

<#--    <table class="table table-striped table-bordered">-->
<#--        <thead>-->
<#--        <tr>-->
<#--            <td>${msg("ip")}</td>-->
<#--            <td>${msg("started")}</td>-->
<#--            <td>${msg("lastAccess")}</td>-->
<#--            <td>${msg("expires")}</td>-->
<#--            <td>${msg("clients")}</td>-->
<#--        </tr>-->
<#--        </thead>-->

<#--        <tbody>-->
<#--        <#list sessions.sessions as session>-->
<#--            <tr>-->
<#--                <td>${session.ipAddress}</td>-->
<#--                <td>${session.started?datetime}</td>-->
<#--                <td>${session.lastAccess?datetime}</td>-->
<#--                <td>${session.expires?datetime}</td>-->
<#--                <td>-->
<#--                    <#list session.clients as client>-->
<#--                        ${client}<br/>-->
<#--                    </#list>-->
<#--                </td>-->
<#--            </tr>-->
<#--        </#list>-->
<#--        </tbody>-->

<#--    </table>-->

    <section class="container p-4 content-area">
        <div class="container has-rounded-border registercard">
            <article class="message is-info">
                <div class="message-header">
                    <p>Active Sessions</p>
                </div>
                <div class="list has-visible-pointer-controls">
                    <#list sessions.sessions as session>
                        <div class="list-item">
                            <div class="list-item-image">
                                <figure class="image is-32x32">

                                    <img src="${url.resourcesPath}/img/computer-solid.svg"
                                         alt="delete" width="32" height="32"/>
                                </figure>
                            </div>

                            <div class="list-item-content">
                                <div class="list-item-title">Client</div>
                                <div class="list-item-description"><strong>${msg("ip")}:</strong> ${session.ipAddress}</div>
                                <div class="list-item-description"><strong>${msg("started")}:</strong> ${session.started?datetime}</div>
                                <div class="list-item-description"><strong>${msg("lastAccess")}
                                    :</strong> ${session.lastAccess?datetime}</div>
                                <div class="list-item-description"><strong>${msg("expires")}:</strong> ${session.expires?datetime}</div>
                                <#list session.clients as client>
                                    <div class="list-item-description"><strong>${msg("clients")}: </strong>${client}</div>
                                </#list>
                            </div>

                        </div>
                    </#list>
                </div>

                <form action="${url.sessionsUrl}" method="post" style="padding-left:10px; padding-bottom:10px">
                    <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">
                    <#--        <button id="logout-all-sessions" class="btn btn-default">${msg("doLogOutAllSessions")}</button>-->
                    <button class="button is-rounded is-link" id="logout-all-sessions"
                            style="padding-left: 2rem">
                        <#--            <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true"-->
                        <#--                 focusable="false" viewBox="0 0 512 512"-->
                        <#--                 style="width: 1em; height: 1em; vertical-align: -.125em; margin-right: 0.3rem">-->
                        <#--                <path fill="currentColor" d="M256 512c141.4 0 256-114.6 256-256S397.4 0 256 0S0 114.6 0 256S114.6 512 256 512zM175 175c9.4-9.4 24.6-9.4 33.9 0l47 47 47-47c9.4-9.4 24.6-9.4 33.9 0s9.4 24.6 0 33.9l-47 47 47 47c9.4 9.4 9.4 24.6 0 33.9s-24.6 9.4-33.9 0l-47-47-47 47c-9.4 9.4-24.6 9.4-33.9 0s-9.4-24.6 0-33.9l47-47-47-47c-9.4-9.4-9.4-24.6 0-33.9z"/> ></path>-->
                        <#--            </svg>-->
                        <span>${msg("doLogOutAllSessions")}</span>
                    </button>
                </form>

            </article>
        </div>
    </section>

    <div class="spacer"></div>


</@layout.mainLayout>