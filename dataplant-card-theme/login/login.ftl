<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('username','password') displayInfo=realm.password && realm.registrationAllowed && !registrationDisabled??; section>


<#if section = "header">
<!--
        ${msg("loginAccountTitle")}
    -->
<#elseif section = "form">
<section class="section">
    <div class="container p-4 has-rounded-border has-bg-split-20-darkblue registercard">
        <!--card ui-->
        <div id="msform">
            <!--
    <form id="msform" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
    -->
            <!-- changed line above form to div -->
            <div class="columns">
                <div class="column align-items-top pb-5">
                    <div class="container box has-bg-white m-4 p-0">

                        <!-- here -->
                        <form onsubmit="login.disabled = true; return true;" action="${url.loginAction}"
                              method="post">

                            <div class="container p-4">
                                <h1 class="title is-4 is-darkblue is-uppercase">
                                    ${msg("loginAccountTitle")}
                                </h1>
                                <h1 class="title is-4 is-darkblue-lighter-20">
                                    Log in with your DataPLANT account
                                </h1>
                                <div class="spacer"></div>
                                <!--input fields-->
                                <div class="field">


                                    <input class="input is-rounded" type="text" placeholder="${msg("username")}"
                                           tabindex="1" name="username" value="${(login.username!'')}" autofocus
                                           autocomplete="off"
                                           aria-invalid="<#if messagesPerField.existsError('username','password')>true</#if>"/>
                                </div>
                                <div class="field">
                                    <input class="input is-rounded" placeholder="${msg("password")}"
                                           title="Department" formControlName="department" tabindex="2"
                                           name="password" type="password" autocomplete="off"
                                           aria-invalid="<#if messagesPerField.existsError('username','password')>true</#if>"
                                    />

                                    <#if messagesPerField.existsError('username','password')>
                                        <span class="help is-danger"
                                              class="${properties.kcInputErrorMessageClass!}"
                                              aria-live="polite">
                                    ${kcSanitize(messagesPerField.getFirstError('username','password'))?no_esc}
                            </span>
                                    </#if>
                                </div>

                                <#if realm.resetPasswordAllowed>
                                    <div style="display:flex; justify-content:flex-end">
                                                <span><a style="font-size:1.0em"
                                                         href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a></span>
                                    </div>
                                </#if>


                                <!--next button-->
                                <div class="field" style="margin-top: 2rem; margin-bottom: 1rem">
                                    <nav class="level">
                                        <!--button next-->
                                        <div class="level-right">
                                            <div class="level-item">
                                                <button class="button is-rounded is-link is-fullwidth"
                                                        style="padding-left: 2rem" value="${msg("doLogIn")}">
                                                    <span>Log in</span>
                                                    <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
                                                         focusable="false" viewBox="0 0 256 512"
                                                         style="width: 1em; height: 1em; vertical-align: -.125em; margin-left: 1rem">
                                                        <path fill="currentColor"
                                                              d="M118.6 105.4l128 127.1C252.9 239.6 256 247.8 256 255.1s-3.125 16.38-9.375 22.63l-128 127.1c-9.156 9.156-22.91 11.9-34.88 6.943S64 396.9 64 383.1V128c0-12.94 7.781-24.62 19.75-29.58S109.5 96.23 118.6 105.4z"/>
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </nav>
                                </div>
                            </div>

                            <!-- until here-->
                        </form>
                    </div>
                </div>
                <!--text box-->
                <div class="column align-items-center">
                    <div class="container m-4 is-white">
                        <div class="content has-text-justified">
                            <h3 style="color:white; padding-top:1.9em">
                                Log in with your scientific account ​
                            </h3>
                            <div style="height:10px; text-align:left"></div>


                            <#if realm.password && social.providers??>
                                <div class="${properties.kcFormSocialAccountSectionClass!}">
                                    <!--
                <h4>${msg("identity-provider-login-label")}</h4>
            -->

                                    <div class="${properties.kcFormSocialAccountListClass!} <#if social.providers?size gt 3>${properties.kcFormSocialAccountListGridClass!}</#if>"
                                         style="text-align:left">
                                        <#list social.providers as p>
                                            <button class="provider-button"
                                                    onclick="location.href='${p.loginUrl}'">
                                                <figure><img class="pbutton-img"
                                                             src="${url.resourcesPath}/img/${p.displayName!}.svg"/>
                                                </figure>
                                                <p class="pbutton-text">${p.displayName!}</p>
                                            </button>
                                        </#list>
                                    </div>
                                </div>
                            </#if>


                            <div style="height:10px"></div>

                            <p>
                                If you have linked your scientific account to DataPLANT, you can use it to login
                                to all services seamlessly.
                                <!--
               <a href="${msg("registration_site")}" style="color:green">Link my account.​​</a>
               -->
                            <p>
                                        <span>${msg("noAccount")} <a tabindex="6"
                                                                     href="${url.registrationUrl}" class="is-lightblue">
                                                ${msg("doRegister")}</a></span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--END card ui-->
    </div>


</section>

<!--
    <div id="kc-form">
      <div id="kc-form-wrapper">
        <#if realm.password>
            <form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                <div class="${properties.kcFormGroupClass!}">
                    <label for="username" class="placeholder ${properties.kcLabelClass!}"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>

                    <#if usernameEditDisabled??>
                        <input tabindex="1" id="username" class="${properties.kcInputClass!}" name="username" value="${(login.username!'')}" type="text" disabled />
                    <#else>
                        <input tabindex="1" id="username" class="${properties.kcInputClass!}" name="username" value="${(login.username!'')}"  type="text" autofocus autocomplete="off"
                               aria-invalid="<#if messagesPerField.existsError('username','password')>true</#if>"
                        />


                    </#if>
                </div>
                <div class="${properties.kcFormGroupClass!}">
                    <label for="password" class="placeholder ${properties.kcLabelClass!}">${msg("password")}</label>

                    <input tabindex="2" id="password" class="${properties.kcInputClass!}" name="password" type="password" autocomplete="off"
                           aria-invalid="<#if messagesPerField.existsError('username','password')>true</#if>"
                    />

                        <#if messagesPerField.existsError('username','password')>
                            <span id="input-error" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                    ${kcSanitize(messagesPerField.getFirstError('username','password'))?no_esc}
                            </span>
                        </#if>

                </div>

                <div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">
                    <div id="kc-form-options">
                        <#if realm.rememberMe && !usernameEditDisabled??>
                            <div class="checkbox">
                                <label>
                                    <#if login.rememberMe??>
                                        <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" checked> ${msg("rememberMe")}
                                    <#else>
                                        <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox"> ${msg("rememberMe")}
                                    </#if>
                                </label>
                            </div>
                        </#if>
                        </div>
                        <div class="${properties.kcFormOptionsWrapperClass!}">
                            <#if realm.resetPasswordAllowed>
                                <span><a style="font-size:.2em"tabindex="5" href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a></span>
                            </#if>
                        </div>

                  </div>

                  <div id="kc-form-buttons" class="${properties.kcFormGroupClass!}">
                      <input type="hidden" id="id-hidden-input" name="credentialId" <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if>/>
                      <input tabindex="4" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" name="login" id="kc-login" type="submit" value="${msg("doLogIn")}"/>
                  </div>
            </form>
        </#if>
        </div>

        <#if realm.password && social.providers??>
            <div id="kc-social-providers" class="${properties.kcFormSocialAccountSectionClass!}">
                <div class="separator"></div>
                <h4>${msg("identity-provider-login-label")}</h4>

                <div class="${properties.kcFormSocialAccountListClass!} <#if social.providers?size gt 3>${properties.kcFormSocialAccountListGridClass!}</#if>">
                    <#list social.providers as p>
                        <button class="btn btn-large register_button hero-button"  onclick="location.href='${p.loginUrl}'">
                            <figure><img class="button-img" src="${url.resourcesPath}/img/${p.displayName!}.svg" /></figure>
                            <p class="button-text">${p.displayName!}</p>
                        </button>

                    </#list>
                </div>
            </div>
        </#if>

    </div>
    <#elseif section = "info" >
        <#if realm.password && realm.registrationAllowed && !registrationDisabled??>
            <div id="kc-registration-container">
                <div id="kc-registration">
                    <span>${msg("noAccount")} <a tabindex="6"
                                                 href="${url.registrationUrl}">${msg("doRegister")}</a></span>
                </div>
            </div>
        </#if>
    </#if>
    

</@layout.registrationLayout>
