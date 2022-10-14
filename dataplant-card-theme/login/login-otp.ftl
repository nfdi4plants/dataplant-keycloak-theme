<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('totp'); section>
    <#if section="header">
        ${msg("doLogIn")}
    <#elseif section="form">
    <#--    <div id="kc-form-wrapper">-->
    <#--        <form id="kc-otp-login-form" class="${properties.kcFormClass!}" action="${url.loginAction}"-->
    <#--            method="post">-->
    <#--            <#if otpLogin.userOtpCredentials?size gt 1>-->
    <#--                <div class="${properties.kcFormGroupClass!}">-->
    <#--                    <div class="${properties.kcInputWrapperClass!}">-->
    <#--                        <#list otpLogin.userOtpCredentials as otpCredential>-->
    <#--                            <input id="kc-otp-credential-${otpCredential?index}" class="${properties.kcLoginOTPListInputClass!}" type="radio" name="selectedCredentialId" value="${otpCredential.id}" <#if otpCredential.id == otpLogin.selectedCredentialId>checked="checked"</#if>>-->
    <#--                            <label for="kc-otp-credential-${otpCredential?index}" class="${properties.kcLoginOTPListClass!}" tabindex="${otpCredential?index}">-->
    <#--                                <span class="${properties.kcLoginOTPListItemHeaderClass!}">-->
    <#--                                    <span class="${properties.kcLoginOTPListItemIconBodyClass!}">-->
    <#--                                      <i class="${properties.kcLoginOTPListItemIconClass!}" aria-hidden="true"></i>-->
    <#--                                    </span>-->
    <#--                                    <span class="${properties.kcLoginOTPListItemTitleClass!}">${otpCredential.userLabel}</span>-->
    <#--                                </span>-->
    <#--                            </label>-->
    <#--                        </#list>-->
    <#--                    </div>-->
    <#--                </div>-->
    <#--            </#if>-->

    <#--            <div class="${properties.kcFormGroupClass!}">-->
    <#--                <div class="${properties.kcLabelWrapperClass!}">-->
    <#--                    <label for="otp" class="box-title ${properties.kcLabelClass!}">${msg("loginOtpOneTime")}</label>-->
    <#--                </div>-->

    <#--            <div class="${properties.kcInputWrapperClass!}">-->
    <#--                <input id="otp" name="otp" autocomplete="off" type="text" class="${properties.kcInputClass!}"-->
    <#--                       autofocus aria-invalid="<#if messagesPerField.existsError('totp')>true</#if>"/>-->

    <#--                <#if messagesPerField.existsError('totp')>-->
    <#--                    <span id="input-error-otp-code" class="${properties.kcInputErrorMessageClass!}"-->
    <#--                          aria-live="polite">-->
    <#--                        ${kcSanitize(messagesPerField.get('totp'))?no_esc}-->
    <#--                    </span>-->
    <#--                </#if>-->
    <#--            </div>-->
    <#--        </div>-->

    <#--            <div class="${properties.kcFormGroupClass!}">-->
    <#--                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">-->
    <#--                    <div class="${properties.kcFormOptionsWrapperClass!}">-->
    <#--                    </div>-->
    <#--                </div>-->

    <#--                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">-->
    <#--                    <input-->
    <#--                        class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}"-->
    <#--                        name="login" id="kc-login" type="submit" value="${msg("doLogIn")}" />-->
    <#--                </div>-->
    <#--            </div>-->
    <#--        </form>-->
    <#--    </#if>-->
    <#--    </div>-->


        <section class="section">
            <div class="container p-4 has-rounded-border has-bg-split-20-darkblue registercard">
                <div id="msform">
                    <div class="columns">
                        <div class="column align-items-top pb-5">
                            <div class="container box has-bg-white m-4 p-0">
                                <form id="kc-otp-login-form" class="${properties.kcFormClass!}"
                                      action="${url.loginAction}"
                                      method="post">

                                    <#--                                <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">-->

                                    <div class="container p-4">
                                        <h1 class="title is-4 is-darkblue is-uppercase"></h1>
                                        <h1 class="title is-4 is-darkblue-lighter-20">
                                            Please enter your OTP Code
                                        </h1>
                                        <#--                                    <div class="spacer"></div>-->


                                        <#if otpLogin.userOtpCredentials?size gt 1>
                                            <div class="${properties.kcFormGroupClass!}">
                                                <div class="${properties.kcInputWrapperClass!}">
                                                    <#list otpLogin.userOtpCredentials as otpCredential>
                                                        <input id="kc-otp-credential-${otpCredential?index}"
                                                               class="${properties.kcLoginOTPListInputClass!}"
                                                               type="radio" name="selectedCredentialId"
                                                               value="${otpCredential.id}"
                                                               <#if otpCredential.id == otpLogin.selectedCredentialId>checked="checked"</#if>>
                                                        <label for="kc-otp-credential-${otpCredential?index}"
                                                               class="${properties.kcLoginOTPListClass!}"
                                                               tabindex="${otpCredential?index}">
                                <span class="${properties.kcLoginOTPListItemHeaderClass!}">
                                    <span class="${properties.kcLoginOTPListItemIconBodyClass!}">
                                      <i class="${properties.kcLoginOTPListItemIconClass!}" aria-hidden="true"></i>
                                    </span>
                                    <span class="${properties.kcLoginOTPListItemTitleClass!}">${otpCredential.userLabel}</span>
                                </span>
                                                        </label>
                                                    </#list>
                                                </div>
                                            </div>
                                        </#if>
                                        <div class="spacer"></div>

                                        <!--input fields-->
                                        <div class="field">
                                            <div class="col-sm-2 col-md-2">
                                                <#--                                            <label for="email" class="control-label">${msg("email")}</label> <span-->
                                                <#--                                                    class="required">*</span>-->
                                                <label for="otp"
                                                       class="box-title ${properties.kcLabelClass!}">${msg("loginOtpOneTime")}</label>
                                            </div>
                                            <input id="otp" name="otp" autocomplete="off" type="text"
                                                   class="input is-rounded ${properties.kcInputClass!}"
                                                   autofocus
                                                   aria-invalid="<#if messagesPerField.existsError('totp')>true</#if>"/>

                                            <#if messagesPerField.existsError('totp')>
                                                <span id="input-error-otp-code"
                                                      class="${properties.kcInputErrorMessageClass!}"
                                                      aria-live="polite">
                        ${kcSanitize(messagesPerField.get('totp'))?no_esc}
                    </span>
                                            </#if>
                                            <#--                                        <input class="form-control input is-rounded" type="text" placeholder="email"-->
                                            <#--                                               id="email" name="email"-->
                                            <#--                                               value="${(account.email!'')}" />-->

                                        </div>


                                        <!--buttons-->
                                        <div class="field" style="margin-top: 2rem; margin-bottom: 1rem">
                                            <nav class="level">
                                                <div class="level-left">
                                                    <div class="level-item">

                                                    </div>
                                                </div>
                                                <!--button next-->
                                                <div class="level-right">
                                                    <div class="level-item">
                                                        <#--                                                    <input-->
                                                        <#--                                                            class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}"-->
                                                        <#--                                                            name="login" id="kc-login" type="submit" value="${msg("doLogIn")}" />-->
                                                        <button class="button is-rounded is-link is-fullwidth"
                                                                value="${msg("doLogIn")}"
                                                                type="submit" name="submitAction"
                                                                style="padding-left: 2rem">
                                                            <span>${msg("doLogIn")}</span>
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

                                </form>
                            </div>
                        </div>
                        <!--text box-->
                        <div class="column align-items-center">
                            <div class="container m-4 is-white">
                                <div class="content has-text-justified">
                                    <h3 style="color:white; padding-top:1.9em">
                                        Your account is protected
                                    </h3>
                                    <div style="height:10px; text-align:left"></div>

                                    <div style="height:10px"></div>

                                    <p>
                                        Your account is protected with an OTP authentication. To proceed, enter the
                                        one-time code from your authenticator app.
                                    </p>

                                    <p>

                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--END card ui-->
            </div>
        </section>
    </#if>


</@layout.registrationLayout>