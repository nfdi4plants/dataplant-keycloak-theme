<#import "template.ftl" as layout>
<@layout.mainLayout active='password' bodyClass='password'; section>

    <div class="row">
        <div class="col-md-10">
            <h2>${msg("changePasswordHtmlTitle")}</h2>
        </div>
        <div class="col-md-2 subtitle">
            <span class="subtitle">${msg("allFieldsRequired")}</span>
        </div>
    </div>

    form

    <form action="${url.passwordUrl}" class="form-horizontal" method="post">
        input?
        <input type="text" id="username" name="username" value="${(account.username!'')}" autocomplete="username" readonly="readonly" style="display:none;">


            <div class="form-group">
                <div class="col-sm-2 col-md-2">
                    <label for="password" class="control-label">${msg("password")}</label>
                </div>

                <div class="col-sm-10 col-md-10">
                    <input type="password" class="form-control" id="password" name="password" autofocus autocomplete="current-password">
                </div>
            </div>
        </#if>

        <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">

        <div class="form-group">
            <div class="col-sm-2 col-md-2">
                <label for="password-new" class="control-label">${msg("passwordNew")}</label>
            </div>

            <div class="col-sm-10 col-md-10">
                <input type="password" class="form-control" id="password-new" name="password-new" autocomplete="new-password">
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-2 col-md-2">
                <label for="password-confirm" class="control-label" class="two-lines">${msg("passwordConfirm")}</label>
            </div>

            <div class="col-sm-10 col-md-10">
                <input type="password" class="form-control" id="password-confirm" name="password-confirm" autocomplete="new-password">
            </div>
        </div>

        <div class="form-group">
            <div id="kc-form-buttons" class="col-md-offset-2 col-md-10 submit">
                <div class="">
                    <button type="submit" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" name="submitAction" value="Save">${msg("doSave")}</button>
                </div>
            </div>
        </div>
    </form>


    <section class="section">
        <div class="container p-4 has-rounded-border has-bg-split-20-darkblue registercard">
            <div id="msform">
                <div class="columns">
                    <div class="column align-items-top pb-5">
                        <div class="container box has-bg-white m-4 p-0">
                            <form action="${url.accountUrl}" method="post">

                                <input type="text" id="username" name="username" value="${(account.username!'')}" autocomplete="username" readonly="readonly" style="display:none;">


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
                                        Change Password
                                    </h1>
                                    <div class="spacer"></div>
                                    <!--input fields-->

                                    <#if password.passwordSet>
                                    <div class="field">
                                        <div class="col-sm-2 col-md-2">
<#--                                            <label for="email" class="control-label">${msg("email")}</label> <span-->
<#--                                                    class="required">*</span>-->
                                            <label for="password" class="control-label">${msg("password")}</label>
                                        </div>
<#--                                        <input class="form-control input is-rounded" type="text" placeholder="email"-->
<#--                                               id="email" name="email"-->
<#--                                               value="${(account.email!'')}" disabled/>-->

                                        <input type="password" class="form-control input is-rounded" id="password" name="password"
                                               autofocus autocomplete="current-password">
                                    </div>

                                    </#if>

                                    <div class="field">

                                        <div class="col-sm-2 col-md-2">
                                            <label for="password-new" class="control-label">${msg("passwordNew")}</label>
                                        </div>

                                        <input type="password" class="form-control input is-rounded" id="password-new" name="password-new" autocomplete="new-password">

                                    </div>
                                    <div class="field">

                                        <div class="col-sm-2 col-md-2">
                                            <label for="password-confirm" class="control-label" class="two-lines">${msg("passwordConfirm")}</label>
                                        </div>
                                        <input type="password" class="form-control input is-rounded" id="password-confirm" name="password-confirm" autocomplete="new-password">
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
                                    Change your password
                                </h3>
                                <div style="height:10px; text-align:left"></div>

                                <div style="height:10px"></div>

                                <p>
                                    Change your current password here. To set a new password your current password has to be entered.
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
