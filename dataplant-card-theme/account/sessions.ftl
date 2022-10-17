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

    <art class="section">
        <div class="container has-rounded-border registercard">
            <article class="message is-info">
                <div class="message-header">
                    <p>Configured Authenticators</p>
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
                <div class="list-item-description">${msg("ip")}: ${session.ipAddress}</div>
                <div class="list-item-description">${msg("started")}: ${session.started?datetime}</div>
                <div class="list-item-description">${msg("lastAccess")}: ${session.lastAccess?datetime}</div>
                <div class="list-item-description">${msg("expires")}: ${session.expires?datetime}</div>
                <#list session.clients as client>
                <div class="list-item-description">${msg("clients")}: ${client}</div>
                </#list>
            </div>

        </div>
        </#list>
    </div>

    <form action="${url.sessionsUrl}" method="post">
        <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">
        <button id="logout-all-sessions" class="btn btn-default">${msg("doLogOutAllSessions")}</button>
    </form>

            </article>
    </div>
    </section>


</@layout.mainLayout>