<#import "template.ftl" as layout>
<@layout.mainLayout active='log' bodyClass='log'; section>

<#--    <div class="row">-->
<#--        <div class="col-md-10">-->
<#--            <h2>${msg("accountLogHtmlTitle")}</h2>-->
<#--        </div>-->
<#--    </div>-->

<#--    <table class="table table-striped table-bordered">-->
<#--        <thead>-->
<#--        <tr>-->
<#--            <td>${msg("date")}</td>-->
<#--            <td>${msg("event")}</td>-->
<#--            <td>${msg("ip")}</td>-->
<#--            <td>${msg("client")}</td>-->
<#--            <td>${msg("details")}</td>-->
<#--        </tr>-->
<#--        </thead>-->

<#--        <tbody>-->
<#--        <#list log.events as event>-->
<#--            <tr>-->
<#--                <td>${event.date?datetime}</td>-->
<#--                <td>${event.event}</td>-->
<#--                <td>${event.ipAddress}</td>-->
<#--                <td>${event.client!}</td>-->
<#--                <td><#list event.details as detail>${detail.key} = ${detail.value} <#if detail_has_next>, </#if></#list></td>-->
<#--            </tr>-->
<#--        </#list>-->
<#--        </tbody>-->

<#--    </table>-->


    <section class="container p-4 content-area">
        <div class="container has-rounded-border registercard">
            <article class="message is-info">
                <div class="message-header">
                    <p>${msg("accountLogHtmlTitle")}</p>
                </div>
                <div class="list has-visible-pointer-controls">

                    <#if log.events?size lt 1>

                        <p>There are currently no logs available</p>

                    </#if>

                    <#list log.events as event>

                        <div class="list-item">
                            <div class="list-item-image">
                                <figure class="image is-32x32">

                                    <img src="${url.resourcesPath}/img/pencil-solid.svg"
                                         alt="Info" width="32" height="32"/>
                                </figure>
                            </div>

                            <div class="list-item-content">
                                <div class="list-item-title">Client</div>
                                <div class="list-item-description"><strong>${msg("date")}: </strong>${event.date?datetime}</div>
                                <div class="list-item-description"><strong>${msg("event")}:</strong> ${event.event}</div>
                                <div class="list-item-description"><strong>${msg("ip")}: </strong>${event.ipAddress}</div>
                                <div class="list-item-description"><strong>${msg("client")}:</strong> ${event.client!}</div>
                                <div class="list-item-description">
                               <#list event.details as detail>${detail.key} : ${detail.value} <#if detail_has_next>, </#if></#list>
                                </div>
                            </div>

                        </div>
                    </#list>
                </div>
            </article>
        </div>
    </section>


</@layout.mainLayout>