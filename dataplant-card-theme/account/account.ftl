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
        <div class="container p-4 has-rounded-border has-bg-split-20-lightblue registercard">
            <div id="msform">
                <div class="columns">
                    <div class="column align-items-top pb-5">
                        <div class="container box has-bg-white m-4 p-0">
                            <form action="${url.accountUrl}" method="post">

                                <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">

                                <div class="container p-4">
                                    <h1 class="title is-4 is-darkblue is-uppercase"></h1>
                                    <h1 class="title is-4 is-darkblue-lighter-20">
                                        Edit Account Details
                                    </h1>
                                    <div class="spacer"></div>
                                    <!--input fields-->
                                    <div class="field">
                                        <div class="col-sm-2 col-md-2">
                                            <label for="email" class="control-label">${msg("email")} (not modifiable)</label> <span
                                                    class="required">*</span>
                                        </div>
                                        <input class="form-control input is-rounded" type="text" placeholder="email"
                                               id="email" name="email"
                                               value="${(account.email!'')}" readonly/>

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
<#--                                                    <button class="button is-rounded is-link is-fullwidth"-->
<#--                                                            value="Cancel" type="submit" name="submitAction"-->
<#--                                                            style="padding-right: 2rem">-->
<#--                                                        <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true"-->
<#--                                                             focusable="false" viewBox="0 0 256 512"-->
<#--                                                             style="width: 1em; height: 1em; vertical-align: -.125em; margin-right: 1rem">-->
<#--                                                            <path fill="currentColor"-->
<#--                                                                  d="M137.4 406.6l-128-127.1C3.125 272.4 0 264.2 0 255.1s3.125-16.38 9.375-22.63l128-127.1c9.156-9.156 22.91-11.9 34.88-6.943S192 115.1 192 128v255.1c0 12.94-7.781 24.62-19.75 29.58S146.5 415.8 137.4 406.6z"/>-->
<#--                                                        </svg>-->
<#--                                                        <span>${msg("doCancel")}</span>-->
<#--                                                    </button>-->
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
                                    Edit your Account details. Here you can change your first name, last name and if enabled, your email address.

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


    <section class="section">
        <div class="container p-4 has-rounded-border has-bg-split-20-olive registercard">
            <div id="msform">
                <div class="columns">
                    <div class="column align-items-top pb-5">
                        <div class="container box has-bg-white m-4 p-0">
                            <form action="${url.accountUrl}" method="post">

                                <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">

                                <div class="container p-4">
                                    <h1 class="title is-4 is-darkblue is-uppercase"></h1>
                                    <h1 class="title is-4 is-darkblue-lighter-20">
                                        Edit Address Details
                                    </h1>
                                    <div class="spacer"></div>
                                    <!--input fields-->

                                    <input class="form-control input is-rounded" type="hidden" placeholder="email"
                                           id="email" name="email"
                                           value="${(account.email!'')}" hidden/>

                                    <div class="field">

                                        <div class="col-sm-2 col-md-2">
                                            <label for="user.attributes.institution" class="control-label">Institution</label> <span
                                                    class="required">*</span>
                                        </div>
                                        <input class="form-control input is-rounded" type="text" placeholder="Institution"
                                               id="user.attributes.institution" name="user.attributes.institution"
                                               value="${(account.attributes.institution!'')}"/>
                                    </div>

                                    <div class="field">

                                        <div class="col-sm-2 col-md-2">
                                            <label for="user.attributes.department" class="control-label">Department</label> <span
                                                    class="required">*</span>
                                        </div>
                                        <input class="form-control input is-rounded" type="text" placeholder="Department"
                                               id="user.attributes.department" name="user.attributes.department"
                                               value="${(account.attributes.department!'')}"/>
                                    </div>

                                    <div class="field">

                                        <div class="col-sm-2 col-md-2">
                                            <label for="user.attributes.country" class="control-label">Country</label> <span
                                                    class="required">*</span>
                                        </div>
                                        <input class="form-control input is-rounded" type="text" placeholder="Country"
                                               id="user.attributes.country" name="user.attributes.country"
                                               value="${(account.attributes.country!'')}"/>
                                    </div>

                                    <div class="field">

                                        <div class="col-sm-2 col-md-2">
                                            <label for="user.attributes.state" class="control-label">State</label> <span
                                                    class="required">*</span>
                                        </div>
                                        <input class="form-control input is-rounded" type="text" placeholder="State"
                                               id="user.attributes.state" name="user.attributes.state"
                                               value="${(account.attributes.state!'')}"/>
                                    </div>

                                    <div class="field">

                                        <div class="col-sm-2 col-md-2">
                                            <label for="user.attributes.zipcode" class="control-label">ZipCode</label> <span
                                                    class="required">*</span>
                                        </div>
                                        <input class="form-control input is-rounded" type="text" placeholder="Zipcode"
                                               id="user.attributes.zipcode" name="user.attributes.zipcode"
                                               value="${(account.attributes.zipcode!'')}"/>
                                    </div>

                                    <div class="field">

                                        <div class="col-sm-2 col-md-2">
                                            <label for="user.attributes.city" class="control-label">City</label> <span
                                                    class="required">*</span>
                                        </div>
                                        <input class="form-control input is-rounded" type="text" placeholder="City"
                                               id="user.attributes.city" name="user.attributes.city"
                                               value="${(account.attributes.city!'')}"/>
                                    </div>

                                    <div class="field">

                                        <div class="col-sm-2 col-md-2">
                                            <label for="user.attributes.address" class="control-label">Address</label> <span
                                                    class="required">*</span>
                                        </div>
                                        <input class="form-control input is-rounded" type="text" placeholder="Address"
                                               id="user.attributes.address" name="user.attributes.address"
                                               value="${(account.attributes.address!'')}"/>
                                    </div>

                                    <!--buttons-->
                                    <div class="field" style="margin-top: 2rem; margin-bottom: 1rem">
                                        <nav class="level">
                                            <div class="level-left">
                                                <div class="level-item">
<#--                                                    <button class="button is-rounded is-link is-fullwidth"-->
<#--                                                            value="Cancel" type="submit" name="submitAction"-->
<#--                                                            style="padding-right: 2rem">-->
<#--                                                        <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true"-->
<#--                                                             focusable="false" viewBox="0 0 256 512"-->
<#--                                                             style="width: 1em; height: 1em; vertical-align: -.125em; margin-right: 1rem">-->
<#--                                                            <path fill="currentColor"-->
<#--                                                                  d="M137.4 406.6l-128-127.1C3.125 272.4 0 264.2 0 255.1s3.125-16.38 9.375-22.63l128-127.1c9.156-9.156 22.91-11.9 34.88-6.943S192 115.1 192 128v255.1c0 12.94-7.781 24.62-19.75 29.58S146.5 415.8 137.4 406.6z"/>-->
<#--                                                        </svg>-->
<#--                                                        <span>${msg("doCancel")}</span>-->
<#--                                                    </button>-->
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
                                    Edit Institutional Address.
                                </h3>
                                <div style="height:10px; text-align:left"></div>

                                <div style="height:10px"></div>

                                <p>
                                    Please provide your institutional address.
                                    It will enable our Data Stewards to provide you with the personnel on-site support you deserve.
                                    This way, we can assure that you don't miss any of the DataPLANT events, such as onboardings, workshops or summer schools.
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

    <section class="section">
        <div class="container p-4 has-rounded-border has-bg-split-20-mint registercard">
            <div id="msform">
                <div class="columns">
                    <div class="column align-items-top pb-5">
                        <div class="container box has-bg-white m-4 p-0">
                            <form action="${url.accountUrl}" method="post">

                                <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">

                                <div class="container p-4">
                                    <h1 class="title is-4 is-darkblue is-uppercase"></h1>
                                    <h1 class="title is-4 is-darkblue-lighter-20">
                                        Edit Affiliation Details
                                    </h1>
                                    <div class="spacer"></div>
                                    <!--input fields-->

                                    <input class="form-control input is-rounded" type="hidden" placeholder="email"
                                           id="email" name="email"
                                           value="${(account.email!'')}" hidden/>


                                    <div class="field">

                                        <div class="col-sm-2 col-md-2">
                                            <label for="user.attributes.affiliation" class="control-label">Affiliation</label> <span
                                                    class="required">*</span>
                                        </div>
                                        <input class="form-control input is-rounded" type="text" placeholder="Affiliation"
                                               id="user.attributes.affiliation" name="user.attributes.affiliation"
                                               value="${(account.attributes.affiliation!'')}"/>
                                    </div>

<#--                                    <div class="field">-->

<#--                                        <div class="col-sm-2 col-md-2">-->
<#--                                            <label for="user.attributes.research" class="control-label">Research interests</label> <span-->
<#--                                                    class="required">*</span>-->
<#--                                        </div>-->
<#--                                        <input class="form-control input is-rounded" type="text" placeholder="Research interests"-->
<#--                                               id="user.attributes.research" name="user.attributes.research"-->
<#--                                               value="${(account.attributes.research!'')}"/>-->
<#--                                    </div>-->

<#--                                    <div class="field">-->

<#--                                        <div class="col-sm-2 col-md-2">-->
<#--                                            <label for="user.attributes.role" class="control-label">Role</label> <span-->
<#--                                                    class="required">*</span>-->
<#--                                        </div>-->
<#--                                        <input class="form-control input is-rounded" type="text" placeholder="Role"-->
<#--                                               id="user.attributes.role" name="user.attributes.role"-->
<#--                                               value="${(account.attributes.role!'')}"/>-->
<#--                                    </div>-->



<#--                                    <div class="field">-->
<#--                                        <div class="col-sm-2 col-md-2">-->
<#--                                            <label for="user.attributes.research" class="control-label">Research interests</label> <span-->
<#--                                                    class="required">*</span>-->
<#--                                        </div>-->

<#--                                        <div class="control">-->
<#--                                            <select multiple data-type="tags" data-placeholder="Choose Tags">-->
<#--                                                <option value="one" selected>One</option>-->
<#--                                                <option value="two" selected>Two</option>-->
<#--                                                <option value="three">Three</option>-->
<#--                                            </select>-->
<#--                                        </div>-->
<#--                                    </div>-->
                                    <div class="field">

                                        <div class="col-sm-2 col-md-2">
                                            <label for="user.attributes.research" class="control-label">Research interests</label> <span
                                                    class="required">*</span>
                                        </div>

                                        <input class= "is-rounded" name='user.attributes.research' placeholder='Research Interests' value="${(account.attributes.research!'')}" id="tagger">


                                            <script>

                                                var input = document.getElementById('tagger');

                                                var whitelist = ["Dataplant", "Biology", "Computer science", "De.nbi", "Galaxy", "Swobup", "Swate", "ARC", "Gitlab", "Storage", "Freiburg", "Lautern"]


                                                var tagify = new Tagify(input, {
                                                    whitelist:whitelist,
                                                    originalInputValueFormat: valuesArr => valuesArr.map(item => item.value).join(','),
                                                    maxTags: 10,
                                                    userInput: false,
                                                    dropdown: {
                                                        maxItems: 20,
                                                        classname: "tags-look",
                                                        enabled: 0,
                                                        closeOnSelect: false,
                                                        position: "all"
                                                    }
                                                })

                                            </script>

                                        </div>


                                    <div class="field">

                                        <div class="col-sm-2 col-md-2">
                                            <label for="user.attributes.role" class="control-label">Role</label> <span
                                                    class="required">*</span>
                                        </div>

                                        <div class="select is-fullwidth is-rounded">
                                            <select id="role" (change)="changeRole($event)"
                                                    formControlName="roleName"
                                                    name="user.attributes.role"
                                                    value="${(account.attributes.role!'')}"/>

                                                <option>${(account.attributes.role!'')}</option>
                                                <option value="Data Steward">
                                                    Data Steward
                                                </option>
                                                <option value="Developer">
                                                    Developer
                                                </option>
                                                <option value="Member">
                                                    Member
                                                </option>
                                                <option value="Guest">
                                                    Guest
                                                </option>
                                            </select>
                                        </div>

                                    </div>

                                    <!--buttons-->
                                    <div class="field" style="margin-top: 2rem; margin-bottom: 1rem">
                                        <nav class="level">
                                            <div class="level-left">
                                                <div class="level-item">
<#--                                                    <button class="button is-rounded is-link is-fullwidth"-->
<#--                                                            value="Cancel" type="submit" name="submitAction"-->
<#--                                                            style="padding-right: 2rem">-->
<#--                                                        <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true"-->
<#--                                                             focusable="false" viewBox="0 0 256 512"-->
<#--                                                             style="width: 1em; height: 1em; vertical-align: -.125em; margin-right: 1rem">-->
<#--                                                            <path fill="currentColor"-->
<#--                                                                  d="M137.4 406.6l-128-127.1C3.125 272.4 0 264.2 0 255.1s3.125-16.38 9.375-22.63l128-127.1c9.156-9.156 22.91-11.9 34.88-6.943S192 115.1 192 128v255.1c0 12.94-7.781 24.62-19.75 29.58S146.5 415.8 137.4 406.6z"/>-->
<#--                                                        </svg>-->
<#--                                                        <span>${msg("doCancel")}</span>-->
<#--                                                    </button>-->
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
                                    Edit your affiliation details
                                </h3>
                                <div style="height:10px; text-align:left"></div>

                                <div style="height:10px"></div>

                                <p>
                                    Please provide information on your project or consortium affiliation, research interest, and role within DataPLANT.
                                    This will help us to filter information that might be relevant for you.

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
