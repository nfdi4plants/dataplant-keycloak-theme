<#import "template.ftl" as layout>
<@layout.mainLayout active='totp' bodyClass='totp'; section>

<#--    <div class="row">-->
<#--        <div class="col-md-10">-->
<#--            <h2>${msg("authenticatorTitle")}</h2>-->
<#--        </div>-->
<#--        <#if totp.otpCredentials?size == 0>-->
<#--            <div class="col-md-2 subtitle">-->
<#--                <span class="subtitle"><span class="required">*</span> ${msg("requiredFields")}</span>-->
<#--            </div>-->
<#--        </#if>-->
<#--    </div>-->

<#--    <#if totp.enabled>-->
<#--        <table class="table table-bordered table-striped">-->
<#--            <thead>-->
<#--            <#if totp.otpCredentials?size gt 1>-->
<#--                <tr>-->
<#--                    <th colspan="4">${msg("configureAuthenticators")}</th>-->
<#--                </tr>-->
<#--            <#else>-->
<#--                <tr>-->
<#--                    <th colspan="3">${msg("configureAuthenticators")}</th>-->
<#--                </tr>-->
<#--            </#if>-->
<#--            </thead>-->
<#--            <tbody>-->
<#--            <#list totp.otpCredentials as credential>-->
<#--                <tr>-->
<#--                    <td class="provider">${msg("mobile")}</td>-->
<#--                    <#if totp.otpCredentials?size gt 1>-->
<#--                        <td class="provider">${credential.id}</td>-->
<#--                    </#if>-->
<#--                    <td class="provider">${credential.userLabel!}</td>-->
<#--                    <td class="action">-->
<#--                        <form action="${url.totpUrl}" method="post" class="form-inline">-->
<#--                            <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">-->
<#--                            <input type="hidden" id="submitAction" name="submitAction" value="Delete">-->
<#--                            <input type="hidden" id="credentialId" name="credentialId" value="${credential.id}">-->
<#--                            <button id="remove-mobile" class="btn btn-default">-->
<#--                                <i class="pficon pficon-delete"></i>-->
<#--                            </button>-->
<#--                        </form>-->
<#--                    </td>-->
<#--                </tr>-->
<#--            </#list>-->
<#--            </tbody>-->
<#--        </table>-->
<#--    <#else>-->

<#--        <hr/>-->

<#--        <ol>-->
<#--            <li>-->
<#--                <p>${msg("totpStep1")}</p>-->

<#--                <ul>-->
<#--                    <#list totp.policy.supportedApplications as app>-->
<#--                        <li>${app}</li>-->
<#--                    </#list>-->
<#--                </ul>-->
<#--            </li>-->

<#--            <#if mode?? && mode = "manual">-->
<#--                <li>-->
<#--                    <p>${msg("totpManualStep2")}</p>-->
<#--                    <p><span id="kc-totp-secret-key">${totp.totpSecretEncoded}</span></p>-->
<#--                    <p><a href="${totp.qrUrl}" id="mode-barcode">${msg("totpScanBarcode")}</a></p>-->
<#--                </li>-->
<#--                <li>-->
<#--                    <p>${msg("totpManualStep3")}</p>-->
<#--                    <ul>-->
<#--                        <li id="kc-totp-type">${msg("totpType")}: ${msg("totp." + totp.policy.type)}</li>-->
<#--                        <li id="kc-totp-algorithm">${msg("totpAlgorithm")}: ${totp.policy.getAlgorithmKey()}</li>-->
<#--                        <li id="kc-totp-digits">${msg("totpDigits")}: ${totp.policy.digits}</li>-->
<#--                        <#if totp.policy.type = "totp">-->
<#--                            <li id="kc-totp-period">${msg("totpInterval")}: ${totp.policy.period}</li>-->
<#--                        <#elseif totp.policy.type = "hotp">-->
<#--                            <li id="kc-totp-counter">${msg("totpCounter")}: ${totp.policy.initialCounter}</li>-->
<#--                        </#if>-->
<#--                    </ul>-->
<#--                </li>-->
<#--            <#else>-->
<#--                <li>-->
<#--                    <p>${msg("totpStep2")}</p>-->
<#--                    <p><img src="data:image/png;base64, ${totp.totpSecretQrCode}" alt="Figure: Barcode"></p>-->
<#--                    <p><a href="${totp.manualUrl}" id="mode-manual">${msg("totpUnableToScan")}</a></p>-->
<#--                </li>-->
<#--            </#if>-->
<#--            <li>-->
<#--                <p>${msg("totpStep3")}</p>-->
<#--                <p>${msg("totpStep3DeviceName")}</p>-->
<#--            </li>-->
<#--        </ol>-->

<#--        <hr/>-->

<#--        <form action="${url.totpUrl}" class="form-horizontal" method="post">-->
<#--            <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">-->
<#--            <div class="form-group">-->
<#--                <div class="col-sm-2 col-md-2">-->
<#--                    <label for="totp" class="control-label">${msg("authenticatorCode")}</label> <span-->
<#--                            class="required">*</span>-->
<#--                </div>-->

<#--                <div class="col-sm-10 col-md-10">-->
<#--                    <input type="text" class="form-control" id="totp" name="totp" autocomplete="off" autofocus>-->
<#--                    <input type="hidden" id="totpSecret" name="totpSecret" value="${totp.totpSecret}"/>-->
<#--                </div>-->


<#--            </div>-->

<#--            <div class="form-group" ${messagesPerField.printIfExists('userLabel',properties.kcFormGroupErrorClass!)}">-->
<#--            <div class="col-sm-2 col-md-2">-->
<#--                <label for="userLabel"-->
<#--                       class="control-label">${msg("totpDeviceName")}</label> <#if totp.otpCredentials?size gte 1><span-->
<#--                        class="required">*</span></#if>-->
<#--            </div>-->
<#--            <div class="col-sm-10 col-md-10">-->
<#--                <input type="text" class="form-control" id="userLabel" name="userLabel" autocomplete="off">-->
<#--            </div>-->
<#--            </div>-->
<#--            <div class="form-group">-->
<#--                <div id="kc-form-buttons" class="col-md-offset-2 col-md-10 submit">-->
<#--                    <div class="">-->
<#--                        <button type="submit"-->
<#--                                class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}"-->
<#--                                id="saveTOTPBtn" name="submitAction" value="Save">${msg("doSave")}-->
<#--                        </button>-->
<#--                        <button type="submit"-->
<#--                                class="${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonLargeClass!}"-->
<#--                                id="cancelTOTPBtn" name="submitAction" value="Cancel">${msg("doCancel")}-->
<#--                        </button>-->
<#--                    </div>-->
<#--                </div>-->
<#--            </div>-->
<#--        </form>-->
<#--    </#if>-->

<#--    <section>-->
<#--        <#if totp.enabled>-->

<#--            <table class="table table-bordered table-striped">-->
<#--                <thead>-->
<#--                <#if totp.otpCredentials?size gt 1>-->
<#--                    <tr>-->
<#--                        <th colspan="4">${msg("configureAuthenticators")}</th>-->
<#--                    </tr>-->
<#--                <#else>-->
<#--                    <tr>-->
<#--                        <th colspan="3">${msg("configureAuthenticators")}</th>-->
<#--                    </tr>-->
<#--                </#if>-->
<#--                </thead>-->
<#--                <tbody>-->
<#--                <#list totp.otpCredentials as credential>-->
<#--                    <tr>-->
<#--                        <td class="provider">${msg("mobile")}</td>-->
<#--                        <#if totp.otpCredentials?size gt 1>-->
<#--                            <td class="provider">${credential.id}</td>-->
<#--                        </#if>-->
<#--                        <td class="provider">${credential.userLabel!}</td>-->
<#--                        <td class="action">-->
<#--                            <form action="${url.totpUrl}" method="post" class="form-inline">-->
<#--                                <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">-->
<#--                                <input type="hidden" id="submitAction" name="submitAction" value="Delete">-->
<#--                                <input type="hidden" id="credentialId" name="credentialId" value="${credential.id}">-->
<#--                                <button id="remove-mobile" class="btn btn-default">-->
<#--                                    <i class="pficon pficon-delete"></i>-->
<#--                                </button>-->
<#--                            </form>-->
<#--                        </td>-->
<#--                    </tr>-->
<#--                </#list>-->
<#--                </tbody>-->
<#--            </table>-->
<#--        </#if>-->


<#--    </section>-->

    <section class="section">




        <div class="container p-4 has-rounded-border has-bg-split-20-darkblue registercard">
            <div id="msform">
                <div class="columns">
                    <div class="column align-items-top pb-5">
                        <div class="container box has-bg-white m-4 p-0">
                            <form action="${url.totpUrl}" method="post">

                                <#--                                <input type="text" id="username" name="username" value="${(account.username!'')}" autocomplete="username" readonly="readonly" style="display:none;">-->


                                <#--                                <#if password.passwordSet>-->
                                <#--                                    <div class="form-group">-->
                                <#--                                        <div class="col-sm-2 col-md-2">-->
                                <#--                                            <label for="password" class="control-label">${msg("password")}</label>-->
                                <#--                                        </div>-->

                                <#--                                        <div class="col-sm-10 col-md-10">-->
                                <#--                                            <input type="password" class="form-control" id="password" name="password" autofocus autocomplete="current-password">-->
                                <#--                                        </div>-->
                                <#--                                    </div>-->
                                <#--                                </#if>-->

                                <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">

                                <div class="container p-4">
                                    <h1 class="title is-4 is-darkblue is-uppercase"></h1>
                                    <h1 class="title is-4 is-darkblue-lighter-20">
                                        Link authenticator application
                                    </h1>
                                    <#--                                    <div class="spacer"></div>-->


                                    <#if mode?? && mode = "manual">
                                        <li>
                                            <p>${msg("totpManualStep2")}</p>
                                            <p><span id="kc-totp-secret-key">${totp.totpSecretEncoded}</span></p>
                                            <p><a href="${totp.qrUrl}" id="mode-barcode">${msg("totpScanBarcode")}</a>
                                            </p>
                                        </li>
                                        <li>
                                            <p>${msg("totpManualStep3")}</p>
                                            <ul>
                                                <li id="kc-totp-type">${msg("totpType")}
                                                    : ${msg("totp." + totp.policy.type)}</li>
                                                <li id="kc-totp-algorithm">${msg("totpAlgorithm")}
                                                    : ${totp.policy.getAlgorithmKey()}</li>
                                                <li id="kc-totp-digits">${msg("totpDigits")}: ${totp.policy.digits}</li>
                                                <#if totp.policy.type = "totp">
                                                    <li id="kc-totp-period">${msg("totpInterval")}
                                                        : ${totp.policy.period}</li>
                                                <#elseif totp.policy.type = "hotp">
                                                    <li id="kc-totp-counter">${msg("totpCounter")}
                                                        : ${totp.policy.initialCounter}</li>
                                                </#if>
                                            </ul>
                                        </li>
                                    <#else>
<#--                                        <li>-->
<#--                                            <p>${msg("totpStep2")}</p>-->
                                            <p>Scan this barcode:</p>
                                            <p class="text-centered"><img src="data:image/png;base64, ${totp.totpSecretQrCode}"
                                                    alt="Figure: Barcode"></p>
                                            <p><a href="${totp.manualUrl}"
                                                  id="mode-manual">${msg("totpUnableToScan")}</a></p>
<#--                                        </li>-->
                                    </#if>

                                    <div class="spacer"></div>

                                    <div class="field">

                                        <div class="col-sm-2 col-md-2">
                                            <label for="totp" class="control-label">${msg("authenticatorCode")}</label>
                                            <span class="required">*</span>
                                        </div>

                                        <input type="text" class="form-control input is-rounded" id="totp" name="totp"
                                               autocomplete="off" autofocus>
                                        <input type="hidden" id="totpSecret" name="totpSecret"
                                               value="${totp.totpSecret}"/>

                                    </div>
                                    <div class="field">

                                        <div class="col-sm-2 col-md-2">
                                            <label for="userLabel"
                                                   class="control-label">${msg("totpDeviceName")}</label> <#if totp.otpCredentials?size gte 1>
                                                <span class="required">*</span></#if>
                                        </div>
                                        <input type="text" class="form-control input is-rounded" id="userLabel"
                                               name="userLabel" autocomplete="off">
                                    </div>

                                    <!--buttons-->
                                    <div class="field" style="margin-top: 2rem; margin-bottom: 1rem">
                                        <nav class="level">
                                            <div class="level-left">

                                            </div>
                                            <!--button next-->
                                            <div class="level-right">
                                                <div class="level-item">
                                                    <button class="button is-rounded is-link is-fullwidth" value="Save"
                                                            type="submit" name="submitAction" id="saveTOTPBtn"
                                                            style="padding-left: 2rem">
                                                        <span>${msg("doSave")}</span>
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
                                    Authenticator instructions
                                </h3>
                                <div style="height:10px; text-align:left"></div>

                                <div style="height:10px"></div>

                                <p>

                                <ol>
                                    <li>
                                        <p>${msg("totpStep1")}</p>

                                        <ul>
                                            <#list totp.policy.supportedApplications as app>
                                                <li>${app}</li>
                                            </#list>
                                        </ul>
                                    </li>


                                    <#if mode?? && mode = "manual">
                                        <li>
                                            <p>${msg("totpManualStep2")}</p>
                                            <p><span id="kc-totp-secret-key">${totp.totpSecretEncoded}</span></p>
                                            <p><a href="${totp.qrUrl}" id="mode-barcode">${msg("totpScanBarcode")}</a></p>
                                        </li>
                                        <li>
                                            <p>${msg("totpManualStep3")}
                                            <ul>
                                                <li id="kc-totp-type">${msg("totpType")}: ${msg("totp." + totp.policy.type)}</li>
                                                <li id="kc-totp-algorithm">${msg("totpAlgorithm")}: ${totp.policy.getAlgorithmKey()}</li>
                                                <li id="kc-totp-digits">${msg("totpDigits")}: ${totp.policy.digits}</li>
                                                <#if totp.policy.type = "totp">
                                                    <li id="kc-totp-period">${msg("totpInterval")}: ${totp.policy.period}</li>
                                                <#elseif totp.policy.type = "hotp">
                                                    <li id="kc-totp-counter">${msg("totpCounter")}: ${totp.policy.initialCounter}</li>
                                                </#if>
                                            </ul>
                                        </li>
                                    <#else>
                                        <li>
                                            <p>${msg("totpStep2")}</p>
<#--                                            <p><img src="data:image/png;base64, ${totp.totpSecretQrCode}" alt="Figure: Barcode"></p>-->
                                            <p><a href="${totp.manualUrl}" id="mode-manual">${msg("totpUnableToScan")}</a></p>
                                        </li>
                                    </#if>

                                </p>
                                    <p>
                                        <li>
                                    <p>${msg("totpStep3")}</p>
                                    <p>${msg("totpStep3DeviceName")}</p>
                                    </li></p>


                                    </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--END card ui-->
        </div>
    </section>




    <section>
        <div id="msform">
            <div class="columns">
                <div class="column align-items-top pb-5 is-centered">
                    <div class="container p-4 has-rounded-border has-bg-split-20-darkblue registercard">

                        <form action="${url.totpUrl}" method="post">


                            <div class="container p-4">
                                <h1 class="title is-4 is-darkblue is-uppercase"></h1>
                                <h1 class="title is-4 is-darkblue-lighter-20">
                                    Configured Authenticators
                                </h1>


                                <#if totp.enabled>

                                    <table class="table table-bordered table-striped">
                                        <thead>
                                        <#if totp.otpCredentials?size gt 1>
                                            <tr>
                                                <th colspan="4">${msg("configureAuthenticators")}</th>
                                            </tr>
                                        <#else>
                                            <tr>
                                                <th colspan="3">${msg("configureAuthenticators")}</th>
                                            </tr>
                                        </#if>
                                        </thead>
                                        <tbody>
                                        <#list totp.otpCredentials as credential>
                                            <tr>
                                                <td class="provider">${msg("mobile")}</td>
                                                <#if totp.otpCredentials?size gt 1>
                                                    <td class="provider">${credential.id}</td>
                                                </#if>
                                                <td class="provider">${credential.userLabel!}</td>
                                                <td class="action">
                                                    <form action="${url.totpUrl}" method="post" class="form-inline">
                                                        <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">
                                                        <input type="hidden" id="submitAction" name="submitAction" value="Delete">
                                                        <input type="hidden" id="credentialId" name="credentialId" value="${credential.id}">
                                                        <button id="remove-mobile" class="btn btn-default">
                                                            <i class="pficon pficon-delete"></i>
                                                        </button>
                                                    </form>
                                                </td>
                                            </tr>
                                        </#list>
                                        </tbody>
                                    </table>
                                </#if>



                            </div>


                        </form>
                    </div>

                </div>
            </div>
        </div>
    </section>

</@layout.mainLayout>