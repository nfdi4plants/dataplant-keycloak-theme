<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
<!--
    <#if section = "header">
        ${msg("errorTitle")}
    <#elseif section = "form">
-->
    <section class="section">
    <div class="column is-half is-offset-one-quarter">
        <div class="notification is-half is-offset-one-quarter" style="background-color:#2D3E50; text-align:center">
        <h1 class="title is-5 is-white is-uppercase">Error</h1>
                <p class="instruction">${message.summary?no_esc}</p>
                <#if client?? && client.baseUrl?has_content>
                <button class="button is-danger is-outlined is-inverted is-fullwidth">
                    <a href="${kcSanitize(msg("registration_site"))}">${kcSanitize(msg("backToApplication"))?no_esc}</a>
                </button>
                </#if>
        </div>
    </div>
    </section>
</@layout.registrationLayout>
