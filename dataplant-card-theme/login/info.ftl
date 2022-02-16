<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>

<!--
    <#if section = "header">
        <#if messageHeader??>
        ${messageHeader}
        <#else>
        ${message.summary}
        </#if>
        
        <#elseif section = "form">
        
-->
    <section class="section">

    <div class="column is-half is-offset-one-quarter">
    
    <div class="notification is-half is-offset-one-quarter" style="background-color:#2D3E50; text-align:center">
        <h1 class="title is-5 is-white is-uppercase">${message.summary}<#if requiredActions??><#list requiredActions>: <b><#items as reqActionItem>${msg("requiredAction.${reqActionItem}")}<#sep>, </#items></b></#list><#else></#if></h1>
        <#if skipLink??>
        <#else>
            <#if pageRedirectUri?has_content>
            <button class="button is-danger is-outlined is-inverted is-fullwidth">
            <a href="${pageRedirectUri}">${kcSanitize(msg("backToApplication"))?no_esc}</a></button>
            <#elseif actionUri?has_content>
            
            <button class="button is-danger is-outlined is-inverted is-fullwidth">
            <a href="${actionUri}" style="text-decoration: none">${kcSanitize(msg("proceedWithAction"))?no_esc}</a></button>
            <#elseif (client.baseUrl)?has_content>
            <button class="button is-danger is-outlined is-inverted is-fullwidth">
                <a href="${client.baseUrl}">${kcSanitize(msg("backToApplication"))?no_esc}</a>
                </button>
            </#if>
        </#if>
        </div>
    </div>
    <!--
    </#if>
    -->
    <div class="spacer"></div>
    
    
</@layout.registrationLayout>
