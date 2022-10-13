<#import "template.ftl" as layout>
<@layout.mainLayout active='account' bodyClass='user'; section>

<#--    <div class="row">-->
<#--        <div class="col-md-10">-->
<#--            <h2>${msg("editAccountHtmlTitle")}</h2>-->
<#--        </div>-->
<#--        <div class="col-md-2 subtitle">-->
<#--            <span class="subtitle"><span class="required">*</span> ${msg("requiredFields")}</span>-->
<#--        </div>-->
<#--    </div>-->

<#--    <form action="${url.accountUrl}" class="form-horizontal" method="post">-->

<#--        <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">-->

<#--        <#if !realm.registrationEmailAsUsername>-->
<#--            <div class="form-group ${messagesPerField.printIfExists('username','has-error')}">-->
<#--                <div class="col-sm-2 col-md-2">-->
<#--                    <label for="username"-->
<#--                           class="control-label">${msg("username")}</label> <#if realm.editUsernameAllowed><span-->
<#--                            class="required">*</span></#if>-->
<#--                </div>-->

<#--                <div class="col-sm-10 col-md-10">-->
<#--                    <input type="text" class="form-control" id="username" name="username"-->
<#--                           <#if !realm.editUsernameAllowed>disabled="disabled"</#if> value="${(account.username!'')}"/>-->
<#--                </div>-->
<#--            </div>-->
<#--        </#if>-->

<#--        <div class="form-group ${messagesPerField.printIfExists('email','has-error')}">-->
<#--            <div class="col-sm-2 col-md-2">-->
<#--                <label for="email" class="control-label">${msg("email")}</label> <span class="required">*</span>-->
<#--            </div>-->

<#--            <div class="col-sm-10 col-md-10">-->
<#--                <input type="text" class="form-control" id="email" name="email" autofocus-->
<#--                       value="${(account.email!'')}"/>-->
<#--            </div>-->
<#--        </div>-->

<#--        <div class="form-group ${messagesPerField.printIfExists('firstName','has-error')}">-->
<#--            <div class="col-sm-2 col-md-2">-->
<#--                <label for="firstName" class="control-label">${msg("firstName")}</label> <span class="required">*</span>-->
<#--            </div>-->

<#--            <div class="col-sm-10 col-md-10">-->
<#--                <input type="text" class="form-control" id="firstName" name="firstName"-->
<#--                       value="${(account.firstName!'')}"/>-->
<#--            </div>-->
<#--        </div>-->

<#--        <div class="form-group ${messagesPerField.printIfExists('lastName','has-error')}">-->
<#--            <div class="col-sm-2 col-md-2">-->
<#--                <label for="lastName" class="control-label">${msg("lastName")}</label> <span class="required">*</span>-->
<#--            </div>-->

<#--            <div class="col-sm-10 col-md-10">-->
<#--                <input type="text" class="form-control" id="lastName" name="lastName" value="${(account.lastName!'')}"/>-->
<#--            </div>-->
<#--        </div>-->

<#--        <div class="form-group">-->
<#--            <div id="kc-form-buttons" class="col-md-offset-2 col-md-10 submit">-->
<#--                <div class="">-->
<#--                    <#if url.referrerURI??><a-->
<#--                        href="${url.referrerURI}">${kcSanitize(msg("backToApplication")?no_esc)}</a></#if>-->
<#--                    <button type="submit"-->
<#--                            class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}"-->
<#--                            name="submitAction" value="Save">${msg("doSave")}</button>-->
<#--                    <button type="submit"-->
<#--                            class="${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonLargeClass!}"-->
<#--                            name="submitAction" value="Cancel">${msg("doCancel")}</button>-->
<#--                </div>-->
<#--            </div>-->
<#--        </div>-->
<#--    </form>-->


    <section class="section">
        <div class="container p-4 has-rounded-border has-bg-split-20-darkblue registercard">
            <div id="msform">
                <div class="columns">
                    <div class="column align-items-top pb-5">
                        <div class="container box has-bg-white m-4 p-0">
                            <form action="${url.accountUrl}" method="post">

                                <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">

                                <div class="container p-4">
                                    <h1 class="title is-4 is-darkblue is-uppercase"></h1>
                                    <h1 class="title is-4 is-darkblue-lighter-20">
                                        Edit Account
                                    </h1>
                                    <div class="spacer"></div>
                                    <!--input fields-->
                                    <div class="field">
                                        <div class="col-sm-2 col-md-2">
                                            <label for="email" class="control-label">${msg("email")}</label> <span
                                                    class="required">*</span>
                                        </div>
                                        <input class="form-control input is-rounded" type="text" placeholder="email"
                                               id="email" name="email"
                                               value="${(account.email!'')}" />

                                    </div>
                                    <div class="field">

                                        <div class="col-sm-2 col-md-2">
                                            <label for="firstName" class="control-label">${msg("firstName")}</label>
                                            <span class="required">*</span>
                                        </div>

                                        <input class="form-control input is-rounded" type="text" placeholder="firstName"
                                               id="firstName" name="firstName"
                                               value="${(account.firstName!'')}"/>

                                    </div>
                                    <div class="field">

                                        <div class="col-sm-2 col-md-2">
                                            <label for="lastName" class="control-label">${msg("lastName")}</label> <span
                                                    class="required">*</span>
                                        </div>
                                        <input class="form-control input is-rounded" type="text" placeholder="lastName"
                                               id="lastName" name="lastName"
                                               value="${(account.lastName!'')}"/>
                                    </div>

                                    <!--buttons-->
                                    <div class="field" style="margin-top: 2rem; margin-bottom: 1rem">
                                        <nav class="level">
                                            <div class="level-left">
                                                <div class="level-item">
                                                    <button class="button is-rounded is-link is-fullwidth"
                                                            value="Cancel" type="submit" name="submitAction"
                                                            style="padding-right: 2rem">
                                                        <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
                                                             focusable="false" viewBox="0 0 256 512"
                                                             style="width: 1em; height: 1em; vertical-align: -.125em; margin-right: 1rem">
                                                            <path fill="currentColor"
                                                                  d="M137.4 406.6l-128-127.1C3.125 272.4 0 264.2 0 255.1s3.125-16.38 9.375-22.63l128-127.1c9.156-9.156 22.91-11.9 34.88-6.943S192 115.1 192 128v255.1c0 12.94-7.781 24.62-19.75 29.58S146.5 415.8 137.4 406.6z"/>
                                                        </svg>
                                                        <span>${msg("doCancel")}</span>
                                                    </button>
                                                </div>
                                            </div>
                                            <!--button next-->
                                            <div class="level-right">
                                                <div class="level-item">
                                                    <button class="button is-rounded is-link is-fullwidth" value="Save"
                                                            type="submit" name="submitAction"
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
                                    Edit your account details
                                </h3>
                                <div style="height:10px; text-align:left"></div>

                                <div style="height:10px"></div>

                                <p>
                                    Edit your Account details. Here you can change your first name, last name and if
                                    enabled, your email address.
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


</@layout.mainLayout>
