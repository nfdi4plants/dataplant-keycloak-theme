
<#--<#import "template.ftl" as layout>-->
<#--<@layout.registrationLayout displayInfo=true; section>-->
<#--    <#if section = "header">-->
<#--        ${msg("emailVerifyTitle")}-->
<#--    <#elseif section = "form">-->
<#--        <p class="instruction">${msg("emailVerifyInstruction1",user.email)}</p>-->
<#--    <#elseif section = "info">-->
<#--        <p class="instruction">-->
<#--            ${msg("emailVerifyInstruction2")}-->
<#--            <br/>-->
<#--            <a href="${url.loginAction}">${msg("doClickHere")}</a> ${msg("emailVerifyInstruction3")}-->
<#--        </p>-->
<#--    </#if>-->
<#--</@layout.registrationLayout>-->


<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "header">
        ${msg("updatePasswordTitle")}
    <#elseif section = "form">
        <section class="section" >
            <div class="container p-4 has-rounded-border has-bg-split-20-darkblue registercard">
                <!--card ui-->
                <div id="msform">

                    <div class="columns">
                        <div class="column align-items-top pb-5">
                            <div class="container box has-bg-white m-4 p-0">

                                <!-- here -->
                                <form onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">

                                    <div class="container p-4">
                                        <h1 class="title is-4 is-darkblue is-uppercase">
                                            ${msg("emailForgotTitle")}
                                        </h1>
                                        <h1 class="title is-4 is-darkblue-lighter-20">
                                            Reset your DataPLANT account password
                                        </h1>
<#--                                        <div class="spacer"></div>-->
                                        <!--input fields-->
                                        <div class="field">

                                            <p class="instruction">
                                                ${msg("emailVerifyInstruction2")}
                                                <br/>
                                                <a href="${url.loginAction}">${msg("doClickHere")}</a> ${msg("emailVerifyInstruction3")}
                                            </p>




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
                                                        <button class="button is-rounded is-link is-fullwidth" style="padding-left: 2rem"
                                                                value="${msg("doClickHere")}"  onclick="location.href='${url.loginUrl}'" type="button">
                                                            <span>Send password</span>
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
    </div>
</@layout.registrationLayout>
