<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true displayMessage=!messagesPerField.existsError('username'); section>



<#if section = "form">

<section class="section" >
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
          <form onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
          
            <div class="container p-4">
              <h1 class="title is-4 is-darkblue is-uppercase">
                 ${msg("loginAccountTitle")}
              </h1>
              <h1 class="title is-4 is-darkblue-lighter-20">
                Reset your DataPLANT account password
              </h1>
              <div class="spacer"></div>
              <!--input fields-->
              <div class="field">
              
              
                <input class="input is-rounded" type="text" placeholder="${msg("username")}" autofocus tabindex="1" name="username" value="${(auth.attemptedUsername!'')}" autofocus autocomplete="off"  aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"/>
                    <#if messagesPerField.existsError('username')>
                        <span class="help is-danger" id="input-error-username" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('username'))?no_esc}
                        </span>
                    </#if>

              </div>
              
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                        <span><a href="${url.loginUrl}">${kcSanitize(msg("backToLogin"))?no_esc}</a></span>
                    </div>
                </div>
            
              

              <!--next button-->
              <div class="field" style="margin-top: 2rem; margin-bottom: 1rem">
                <nav class="level">
                  <!--button next-->
                  <div class="level-right">
                    <div class="level-item">
                      <button class="button is-rounded is-link is-fullwidth" style="padding-left: 2rem" value="${msg("doSubmit")}">
                        <span>Recover your password</span>
                        <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" viewBox="0 0 256 512" style="width: 1em; height: 1em; vertical-align: -.125em; margin-left: 1rem">
                          <path fill="currentColor" d="M118.6 105.4l128 127.1C252.9 239.6 256 247.8 256 255.1s-3.125 16.38-9.375 22.63l-128 127.1c-9.156 9.156-22.91 11.9-34.88 6.943S64 396.9 64 383.1V128c0-12.94 7.781-24.62 19.75-29.58S109.5 96.23 118.6 105.4z" />
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
                Reset your password ​
              </h3>
              <div style="height:10px; text-align:left"></div>
                   
             
                
        <div style="height:10px"></div>
              
              <p>
              You can reset your password if you have forgotten it. Your DataPLANT account password is used to access the DataPLANT infrastructure.
              Please enter your email address so that we can send you an email.
             </p>
              <p>
               If you don’t get an email:
                <ul>
                <li>
                Check your Spam or Bulk Mail folders.
                </li>
                <li>
                Add noreply@nfdi4plants.org to your address book.
                </li>
                <li>
                Contact us at <a href ="https://support.nfdi4plants.org">support.nfdi4plants.org</a>
                </li>
                </ul>
               <!--
               <a href="${msg("registration_site")}" style="color:green">Link my account.​​</a>
               -->
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

<!--
    <#if section = "header">
        ${msg("emailForgotTitle")}
    <#elseif section = "form">
        <form id="kc-reset-password-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
            <div class="${properties.kcFormGroupClass!}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="username" class="${properties.kcLabelClass!}"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="username" name="username" class="${properties.kcInputClass!}" autofocus value="${(auth.attemptedUsername!'')}" aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"/>
                    <#if messagesPerField.existsError('username')>
                        <span id="input-error-username" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                    ${kcSanitize(messagesPerField.get('username'))?no_esc}
                        </span>
                    </#if>
                </div>
            </div>
            <div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                        <span><a href="${url.loginUrl}">${kcSanitize(msg("backToLogin"))?no_esc}</a></span>
                    </div>
                </div>

                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                    <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}"/>
                </div>
            </div>
        </form>
    <#elseif section = "info" >
        <#if realm.duplicateEmailsAllowed>
            ${msg("emailInstructionUsername")}
        <#else>
            ${msg("emailInstruction")}
        </#if>
    </#if>
    
    -->
</@layout.registrationLayout>
