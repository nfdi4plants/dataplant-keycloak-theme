<#macro mainLayout active bodyClass>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>${msg("accountManagementTitle")}</title>
    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico">
    <#if properties.stylesCommon?has_content>
        <#list properties.stylesCommon?split(' ') as style>
            <link href="${url.resourcesCommonPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script type="text/javascript" src="${url.resourcesPath}/${script}"></script>
        </#list>
    </#if>
</head>
<body class="admin-console user ${bodyClass}">

<div class="spacer"></div>
<#--    <header class="navbar navbar-default navbar-pf navbar-main header">-->
<#--        <nav class="navbar" role="navigation">-->
<#--            <div class="navbar-header">-->
<#--                <div class="container">-->
<#--                    <h1 class="navbar-title">Keycloak</h1>-->
<#--                </div>-->
<#--            </div>-->
<#--            <div class="navbar-collapse navbar-collapse-1">-->
<#--                <div class="container">-->
<#--                    <ul class="nav navbar-nav navbar-utility">-->
<#--                        <#if realm.internationalizationEnabled>-->
<#--                            <li>-->
<#--                                <div class="kc-dropdown" id="kc-locale-dropdown">-->
<#--                                    <a href="#" id="kc-current-locale-link">${locale.current}</a>-->
<#--                                    <ul>-->
<#--                                        <#list locale.supported as l>-->
<#--                                            <li class="kc-dropdown-item"><a href="${l.url}">${l.label}</a></li>-->
<#--                                        </#list>-->
<#--                                    </ul>-->
<#--                                </div>-->
<#--                            <li>-->
<#--                        </#if>-->
<#--                        <#if referrer?has_content && referrer.url?has_content><li><a href="${referrer.url}" id="referrer">${msg("backTo",referrer.name)}</a></li></#if>-->
<#--                        <li><a href="${url.getLogoutUrl()}">${msg("doSignOut")}</a></li>-->
<#--                    </ul>-->
<#--                </div>-->
<#--            </div>-->
<#--        </nav>-->
<#--    </header>-->
    <nfdi-navbar></nfdi-navbar>

<#--    <div class="container mgmnt-area">-->
<#--        <div class="bs-sidebar col-sm-3">-->
<#--            <ul>-->
<#--                <li class="<#if active=='account'>active</#if>"><a href="${url.accountUrl}">${msg("account")}</a></li>-->
<#--                <#if features.passwordUpdateSupported><li class="<#if active=='password'>active</#if>"><a href="${url.passwordUrl}">${msg("password")}</a></li></#if>-->
<#--                <li class="<#if active=='totp'>active</#if>"><a href="${url.totpUrl}">${msg("authenticator")}</a></li>-->
<#--                <#if features.identityFederation><li class="<#if active=='social'>active</#if>"><a href="${url.socialUrl}">${msg("federatedIdentity")}</a></li></#if>-->
<#--                <li class="<#if active=='sessions'>active</#if>"><a href="${url.sessionsUrl}">${msg("sessions")}</a></li>-->
<#--                <li class="<#if active=='applications'>active</#if>"><a href="${url.applicationsUrl}">${msg("applications")}</a></li>-->
<#--                <#if features.log><li class="<#if active=='log'>active</#if>"><a href="${url.logUrl}">${msg("log")}</a></li></#if>-->
<#--                <#if realm.userManagedAccessAllowed && features.authorization><li class="<#if active=='authorization'>active</#if>"><a href="${url.resourceUrl}">${msg("myResources")}</a></li></#if>-->
<#--            </ul>-->
<#--        </div>-->

<#--        <div class="col-sm-9 content-area">-->
<#--            <#if message?has_content>-->
<#--                <div class="alert alert-${message.type}">-->
<#--                    <#if message.type=='success' ><span class="pficon pficon-ok"></span></#if>-->
<#--                    <#if message.type=='error' ><span class="pficon pficon-error-circle-o"></span></#if>-->
<#--                    <span class="kc-feedback-text">${kcSanitize(message.summary)?no_esc}</span>-->
<#--                </div>-->
<#--            </#if>-->

<#--            <#nested "content">-->
<#--        </div>-->
<#--    </div>-->



<div class="container mgmnt-area">
    <div class="tabs is-centered  is-toggle is-fullwidth">
<#--        <p class="menu-label">-->
<#--            General-->
<#--        </p>-->
        <ul class="menu-list">
            <li id="account-tab" class="tab" <#if active=='account'>active</#if>"><a href="${url.accountUrl}">${msg("account")}</a></li>
            <#if features.passwordUpdateSupported><li id="password-tab" class="tab <#if active=='password'>active</#if>"><a href="${url.passwordUrl}">${msg("password")}</a></li></#if>
            <li id="totp-tab" class="tab <#if active=='totp'>active</#if>"><a href="${url.totpUrl}">${msg("authenticator")}</a></li>
            <#if features.identityFederation><li id="identity-tab" class="tab <#if active=='social'>active</#if>"><a href="${url.socialUrl}">${msg("federatedIdentity")}</a></li></#if>
            <li id="sessions-tab" class="tab <#if active=='sessions'>active</#if>"><a href="${url.sessionsUrl}">${msg("sessions")}</a></li>
            <li id="applications-tab" class="tab <#if active=='applications'>active</#if>"><a href="${url.applicationsUrl}">${msg("applications")}</a></li>
            <#if features.log><li  id="log-tab" class="tab <#if active=='log'>active</#if>"><a href="${url.logUrl}">${msg("log")}</a></li></#if>
            <#if realm.userManagedAccessAllowed && features.authorization><li  id="auth-tab" class="tab <#if active=='authorization'>active</#if>"><a href="${url.resourceUrl}">${msg("myResources")}</a></li></#if>
            <li><a href="${url.getLogoutUrl()}">${msg("doSignOut")}</a></li>
        </ul>
    </div>

<#--    <div class="container p-4 content-area">-->
        <div>
        <#if message?has_content>
            <div class="alert alert-${message.type}">
<#--                <#if message.type=='success' ><span class="pficon pficon-ok"></span></#if>-->
                <#if message.type=='success' >
                <div class="notification is-success">
<#--                    <button class="delete"></button>-->
                    <span class="kc-feedback-text">${kcSanitize(message.summary)?no_esc}</span>
                </div>
                </#if>
                <#if message.type=='error' >
                    <div class="notification is-danger">
                        <#--                    <button class="delete"></button>-->
                        <span class="kc-feedback-text">${kcSanitize(message.summary)?no_esc}</span>
                    </div>
                </#if>

<#--                <#if message.type=='error' ><span class="pficon pficon-error-circle-o"></span></#if>-->
<#--                <span class="kc-feedback-text">${kcSanitize(message.summary)?no_esc}</span>-->
            </div>
        </#if>

        <#nested "content">
    </div>
</div>

    <nfdi-footer></nfdi-footer>
</body>
</html>
</#macro>