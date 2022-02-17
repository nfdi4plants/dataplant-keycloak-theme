<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
<!--
    <#if section = "header">
        ${msg("pageExpiredTitle")}
    <#elseif section = "form">
-->
    <section class="section">
    <div class="column is-half is-offset-one-quarter">
    
        <div class="notification is-half is-offset-one-quarter" style="background-color:#2D3E50; text-align:center">
            <h1 class="title is-5 is-white is-uppercase">${msg("pageExpiredTitle")}</h1>
             <p class="instruction" style="color:white">${msg("pageExpiredDescription")}</p>
             <div class="spacer"></div>
            <p class="instruction" style="color:white">
                ${msg("pageExpiredMsg1")} <a id="loginRestartLink" href="${url.loginRestartFlowUrl}">${msg("doClickHere")}</a> .<br/>
                ${msg("pageExpiredMsg2")} <a id="loginContinueLink" href="${url.loginAction}">${msg("doClickHere")}</a> .
            </p>
            
        </div>
        
    </div>
        
    <div class="spacer"></div>
    
    </section>
    <!--
    </#if>
    -->
</@layout.registrationLayout>
