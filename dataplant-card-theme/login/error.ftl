<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>

    <#if section = "header">
        ${msg("errorTitle")}
    <#elseif section = "form">

    <section class="section">
    <div class="column is-half is-offset-one-quarter">
            <div class="notification is-half is-offset-one-quarter" style="background-color:#2D3E50; text-align:center">
            <!--
            <h1 class="title is-5 is-white is-uppercase">Error</h1>
            <p class="instruction" style="color:white">${kcSanitize(msg(message.summary))?no_esc}</p>
            -->
            <#if url?? && url.hasAction()>
                <h1 class="title is-5 is-white is-uppercase">We couldn&acute;t find your Account</h1>
                <p class="instruction" style="color:white">${kcSanitize(msg(message.summary))?no_esc}</p>
                
                <!-- testing to force an error text link
                <p><a id="backToApplication" href="${url.loginAction}">${kcSanitize(msg("logOutAndGoBackToApplication"))?no_esc}</a></p>
                -->
                    
                <div class="spacer"></div>
                    <button class="button is-info is-outlined is-inverted is-fullwidth">
                        <a id="backToApplication" href="${msg("registration_site")}" style="text-decoration: none">Registration</a>
                    </button>
            <#elseif client?? && client.baseUrl?has_content>
            <!--
                <p><a id="backToApplication" href="${client.baseUrl}">${kcSanitize(msg("backToApplication"))?no_esc}</a></p>
            -->
                <h1 class="title is-5 is-white is-uppercase">Error</h1>
                <p class="instruction" style="color:white">${kcSanitize(msg(message.summary))?no_esc}</p>
                    <div class="spacer"></div>
                    <button class="button is-info is-outlined is-inverted is-fullwidth">
                        <a id="backToApplication" href="${client.baseUrl}" style="text-decoration: none">${kcSanitize(msg("backToApplication"))?no_esc}</a>
                    </button>
            </#if>
        </div>
        </div>
    </#if>
</@layout.registrationLayout>
