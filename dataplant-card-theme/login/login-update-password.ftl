<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('password','password-confirm'); section>
    <#if section = "header">
        ${msg("updatePasswordTitle")}
    <#elseif section = "form">
    <section class="section" >
  <div class="container p-4 has-rounded-border has-bg-split-20-darkblue registercard">
    <!--card ui-->
    <form id="msform" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
      <div class="columns">
        <div class="column align-items-top pb-5">
          <div class="container box has-bg-white m-4 p-0">
            <div class="container p-4">
              <h1 class="title is-4 is-darkblue is-uppercase">
                 ${msg("updatePasswordTitle")}
              </h1>
              <h1 class="title is-4 is-darkblue-lighter-20">
                Set your DataPLANT account password
              </h1>
              <div class="spacer"></div>
              <!--input fields-->
              <div class="field">
                <input class="input is-rounded" type="password" placeholder="${msg("updatePasswordTitle")}" tabindex="1" name="password-new" autofocus autocomplete="new-password" aria-invalid="<#if messagesPerField.existsError('password','password-confirm')>true</#if>"/>
              </div>
              <div class="field">
                <input class="input is-rounded" placeholder="${msg("updatePasswordTitle")}" tabindex="2" name="password-confirm" type="password" autofocus autocomplete="new-password" aria-invalid="<#if messagesPerField.existsError('password-confirm')>true</#if>"
                    />
                    
                    <#if messagesPerField.existsError('password')>
                        <span class="help is-danger" class="${properties.kcInputErrorMessageClass!}" aria-live="polite" style="font-size:.9em">
                            ${kcSanitize(messagesPerField.get('password'))?no_esc}
                        </span>
                    </#if>
                    <#if messagesPerField.existsError('password-confirm')>
                            <span class="help is-danger" class="${properties.kcInputErrorMessageClass!}" aria-live="polite" style="font-size:.9em">
                                    ${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
                            </span>
                    </#if>
              </div>
              

              <!--next button-->
              <div class="field" style="margin-top: 2rem; margin-bottom: 1rem">
                <nav class="level">
                  <!--button next-->
                  <div class="level-right">
                    <div class="level-item">
                      <button class="button is-rounded is-link is-fullwidth" style="padding-left: 2rem" type="submit">
                        <span>Set password</span>
                        <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" viewBox="0 0 256 512" style="width: 1em; height: 1em; vertical-align: -.125em; margin-left: 1rem">
                          <path fill="currentColor" d="M118.6 105.4l128 127.1C252.9 239.6 256 247.8 256 255.1s-3.125 16.38-9.375 22.63l-128 127.1c-9.156 9.156-22.91 11.9-34.88 6.943S64 396.9 64 383.1V128c0-12.94 7.781-24.62 19.75-29.58S109.5 96.23 118.6 105.4z" />
                        </svg>
                      </button>
                    </div>
                  </div>
                </nav>
              </div>
            </div>
          </div>
        </div>
        <!--text box-->
        <div class="column align-items-center">
          <div class="container m-4 is-white">
            <div class="content has-text-justified">
              <h3 style="color:white">
                Change your DataPLANT password ​
              </h3>
              <div style="height:10px; text-align:left"></div>
              
        
        <div style="height:10px"></div>
              
              <p>
               For security reasons, change your DataPLANT account password.
               <!--
               <a href="${msg("registration_site")}" style="color:green">Link my account.​​</a>
               -->
            </div>
          </div>
        
        
    
        </div>
      </div>
    </form>
    <!--END card ui-->
  </div>
</section>
<!--
    <div id="kc-form-wrapper">
        <form id="kc-passwd-update-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
            <input type="text" id="username" name="username" value="${username}" autocomplete="username"
                   readonly="readonly" style="display:none;"/>
            <input type="password" id="password" name="password" autocomplete="current-password" style="display:none;"/>

            <div class="${properties.kcFormGroupClass!}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="password-new" class="login-update-text ${properties.kcLabelClass!}">${msg("passwordNew")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="password" id="password-new" name="password-new" class="${properties.kcInputClass!}"
                           autofocus autocomplete="new-password"
                           aria-invalid="<#if messagesPerField.existsError('password','password-confirm')>true</#if>"
                    />

                    <#if messagesPerField.existsError('password')>
                        <span id="input-error-password" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('password'))?no_esc}
                        </span>
                    </#if>
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="password-confirm" class="login-update-text ${properties.kcLabelClass!}">${msg("passwordConfirm")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="password" id="password-confirm" name="password-confirm"
                           class="${properties.kcInputClass!}"
                           autocomplete="new-password"
                           aria-invalid="<#if messagesPerField.existsError('password-confirm')>true</#if>"
                    />

                    <#if messagesPerField.existsError('password-confirm')>
                        <span id="input-error-password-confirm" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
                        </span>
                    </#if>

                </div>
            </div>

            <div class="${properties.kcFormGroupClass!}">
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                        <#if isAppInitiatedAction??>
                            <div class="checkbox">
                                <label class="box-label"><input type="checkbox" id="logout-sessions" name="logout-sessions" value="on" checked> ${msg("logoutOtherSessions")}</label>
                            </div>
                        </#if>
                    </div>
                </div>

                <div id="kc-form-buttons-update" class="${properties.kcFormButtonsClass!}">
                    <#if isAppInitiatedAction??>
                        <input id="kc-update-button" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}" />
                        <button id="kc-update-button" class="${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonLargeClass!}" type="submit" name="cancel-aia" value="true" />${msg("doCancel")}</button>
                    <#else>
                        <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" id="kc-login" type="submit" value="${msg("doSubmit")}" />
                    </#if>
                </div>
            </div>
        </form>
    </#if>
    -->
    </div>
</@layout.registrationLayout>
