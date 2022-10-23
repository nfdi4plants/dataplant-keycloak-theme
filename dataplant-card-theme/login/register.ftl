<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('firstName','lastName','email','username','password','password-confirm'); section>
    <#if section = "header">
        ${msg("registerTitle")}
    <#elseif section = "form">


        <section class="section">
            <div class="container p-4 has-rounded-border has-bg-split-20-lightblue registercard">
                <form id="kc-register-form" class="${properties.kcFormClass!}" action="${url.registrationAction}"
                      method="post">

                    <!--1st card ui-->
                    <div id="card1">
                        <div class="columns">
                            <div class="column align-items-top pb-5">
                                <div class="container box has-bg-white m-4 p-0">
                                    <div class="container p-4">
                                        <h1 class="title is-4 is-lightblue is-uppercase">
                                            Sign up
                                        </h1>
                                        <h1 class="title is-4">
                                            Get access to DataPLANT infrastructure and services
                                        </h1>
                                        <!--input field-->
                                        <div class="field">

                                            <div class="${properties.kcFormGroupClass!}">
                                                <div class="${properties.kcInputWrapperClass!}">
                                                    <input type="text" id="email"
                                                           class="${properties.kcInputClass!} input is-rounded"
                                                           placeholder="Email" name="email"
                                                           value="${(register.formData.email!'')}" autocomplete="email"
                                                           aria-invalid="<#if messagesPerField.existsError('email')>true</#if>"
                                                    />
                                                    <p id="form-error-email" class="contact-form-error">Email is
                                                        required</p>
                                                    <p id="form-error-email-valid" class="contact-form-error">Email is
                                                        not valid</p>

                                                    <#if messagesPerField.existsError('email')>
                                                        <span id="input-error-email"
                                                              class="${properties.kcInputErrorMessageClass!}"
                                                              aria-live="polite">
                                                        ${kcSanitize(messagesPerField.get('email'))?no_esc}
                                                    </span>
                                                    </#if>
                                                </div>
                                            </div>

                                            <#if !realm.registrationEmailAsUsername>
                                                <div class="${properties.kcFormGroupClass!}">
                                                    <div class="${properties.kcLabelWrapperClass!}">
                                                        <label for="username"
                                                               class="${properties.kcLabelClass!}">${msg("username")}</label>
                                                    </div>
                                                    <div class="${properties.kcInputWrapperClass!}">
                                                        <input type="text" id="username"
                                                               class="${properties.kcInputClass!}" name="username"
                                                               value="${(register.formData.username!'')}"
                                                               autocomplete="username"
                                                               aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"
                                                        />


                                                        <#if messagesPerField.existsError('username')>
                                                            <span id="input-error-username"
                                                                  class="${properties.kcInputErrorMessageClass!}"
                                                                  aria-live="polite">
                                                            ${kcSanitize(messagesPerField.get('username'))?no_esc}
                                                        </span>
                                                        </#if>
                                                    </div>
                                                </div>
                                            </#if>
                                        </div>
                                        <!--horizontal input field; two on same level-->
                                        <div class="field is-horizontal">
                                            <div class="field-body">
                                                <div class="field">

                                                    <input type="text" placeholder="First name" title="First name"
                                                           formControlName="first_name" id="firstName"
                                                           class="input is-rounded is-grouped" name="firstName"
                                                           value="${(register.formData.firstName!'')}"
                                                           aria-invalid="<#if messagesPerField.existsError('firstName')>true</#if>"
                                                    />


                                                    <p id="form-error-firstname" class="contact-form-error">First name
                                                        is required</p>

                                                    <#if messagesPerField.existsError('firstName')>
                                                        <span id="input-error-firstname"
                                                              class="${properties.kcInputErrorMessageClass!}"
                                                              aria-live="polite">
                                                            ${kcSanitize(messagesPerField.get('firstName'))?no_esc}
                                                        </span>
                                                    </#if>

                                                </div>
                                                <div class="field">
                                                    <input type="text" id="lastName"
                                                           class="input is-rounded is-grouped ${properties.kcInputClass!}"
                                                           placeholder="Last name" name="lastName" title="Last name"
                                                           value="${(register.formData.lastName!'')}"
                                                           aria-invalid="<#if messagesPerField.existsError('lastName')>true</#if>"
                                                    />

                                                    <p id="form-error-lastname" class="contact-form-error">Last name is
                                                        required</p>

                                                    <#if messagesPerField.existsError('lastName')>
                                                        <span id="input-error-lastname"
                                                              class="${properties.kcInputErrorMessageClass!}"
                                                              aria-live="polite">
                                                        ${kcSanitize(messagesPerField.get('lastName'))?no_esc}
                                                    </span>
                                                    </#if>


                                                </div>
                                            </div>
                                        </div>

                                        <!--buttons-->
                                        <div class="field" style="margin-top: 2rem; margin-bottom: 1rem">
                                            <nav class="level">
                                                <!--add empty to trigger auto align for level-->
                                                <div class="level-left">

                                                    <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                                                        <div class="${properties.kcFormOptionsWrapperClass!}">
                                                            <span><a href="${url.loginUrl}">${kcSanitize(msg("backToLogin"))?no_esc}</a></span>
                                                        </div>
                                                    </div>


                                                </div>


                                                <!--button next-->
                                                <div class="level-right">
                                                    <div class="level-item">
                                                        <button type="button"
                                                                class="button is-rounded is-link is-fullwidth"
                                                                style="padding-left: 2rem" onclick="next()">
                                                            <span>Next</span>
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
                                    <progress title="1/4" class="progress myprogress" value="1" max="4">25%
                                    </progress>
                                </div>
                            </div>
                            <div class="column align-items-center">
                                <div class="container m-4 is-white">
                                    <div class="content has-text-justified">
                                        <p>
                                            The infrastructure, tools, and workflows we offer support you in
                                            transforming your results into FAIR Digital Objects and enable seamless
                                            collaborations between you and your lab-members or even project partners
                                            from multiple labs. Thanks to the versioning feature of Git, every step is
                                            traceable at any time, preserving the provenance of each dataset. Do not
                                            hesitate and register using our Keycloak Single Sign-On solution.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--END 1st card ui-->
                    <!--2nd card ui-->
                    <div id="card2" style="display: none">
                        <div class="columns">
                            <div class="column align-items-top pb-5">
                                <div class="container box has-bg-white m-4 p-0">
                                    <div class="container p-4">
                                        <h1 class="title is-4 is-lightblue is-uppercase">
                                            Sign up
                                        </h1>
                                        <h1 class="title is-4">
                                            Address details
                                        </h1>
                                        <!--input fields-->

                                        <div class="field">
                                            <div class="${properties.kcFormGroupClass!}">
                                                <div class="${properties.kcInputWrapperClass!}">
                                                    <input type="text" id="institution"
                                                           class="${properties.kcInputClass!} input is-rounded"
                                                           id="user.attributes.institution" placeholder="Institution"
                                                           name="user.attributes.institution"
                                                           value="${(register.formData['user.attributes.institution']!'')}"
                                                           aria-invalid="<#if messagesPerField.existsError('institution')>true</#if>"/>
                                                    <p id="form-error-institution" class="contact-form-error">Last name
                                                        is required</p>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="field">
                                            <div class="${properties.kcFormGroupClass!}">
                                                <div class="${properties.kcInputWrapperClass!}">
                                                    <input type="text" id="department"
                                                           class="${properties.kcInputClass!} input is-rounded"
                                                           id="user.attributes.department" placeholder="Department"
                                                           name="user.attributes.department"
                                                           value="${(register.formData['user.attributes.department']!'')}"
                                                           aria-invalid="<#if messagesPerField.existsError('department')>true</#if>"/>
                                                    <p id="form-error-department" class="contact-form-error">Department
                                                        is required</p>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="field">
                                            <div class="${properties.kcFormGroupClass!}">
                                                <div class="${properties.kcInputWrapperClass!}">
                                                    <input type="text" id="country"
                                                           class="${properties.kcInputClass!} input is-rounded"
                                                           id="user.attributes.country" placeholder="Country"
                                                           name="user.attributes.country"
                                                           value="${(register.formData['user.attributes.country']!'')}"
                                                           aria-invalid="<#if messagesPerField.existsError('country')>true</#if>"/>
                                                    <p id="form-error-country" class="contact-form-error">Country is
                                                        required</p>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="field">
                                            <div class="${properties.kcFormGroupClass!}">
                                                <div class="${properties.kcInputWrapperClass!}">
                                                    <input type="text" id="state"
                                                           class="${properties.kcInputClass!} input is-rounded"
                                                           id="user.attributes.state" placeholder="State"
                                                           name="user.attributes.state"
                                                           value="${(register.formData['user.attributes.state']!'')}"
                                                           aria-invalid="<#if messagesPerField.existsError('state')>true</#if>"/>
                                                    <p id="form-error-state" class="contact-form-error">State is
                                                        required</p>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="field">
                                            <div class="${properties.kcFormGroupClass!}">
                                                <div class="${properties.kcInputWrapperClass!}">
                                                    <input type="text" id="zipcode"
                                                           class="${properties.kcInputClass!} input is-rounded"
                                                           id="user.attributes.zipcode" placeholder="Zipcode"
                                                           name="user.attributes.zipcode"
                                                           value="${(register.formData['user.attributes.zipcode']!'')}"
                                                           aria-invalid="<#if messagesPerField.existsError('zipcode')>true</#if>"/>
                                                    <p id="form-error-zipcode" class="contact-form-error">Zipcode is
                                                        required</p>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="field">
                                            <div class="${properties.kcFormGroupClass!}">
                                                <div class="${properties.kcInputWrapperClass!}">
                                                    <input type="text" id="city"
                                                           class="${properties.kcInputClass!} input is-rounded"
                                                           id="user.attributes.city" placeholder="City"
                                                           name="user.attributes.city"
                                                           value="${(register.formData['user.attributes.city']!'')}"
                                                           aria-invalid="<#if messagesPerField.existsError('city')>true</#if>"/>
                                                    <p id="form-error-city" class="contact-form-error">City is
                                                        required</p>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="field">
                                            <div class="${properties.kcFormGroupClass!}">
                                                <div class="${properties.kcInputWrapperClass!}">
                                                    <input type="text" id="address"
                                                           class="${properties.kcInputClass!} input is-rounded"
                                                           id="user.attributes.state" placeholder="Address"
                                                           name="user.attributes.address"
                                                           value="${(register.formData['user.attributes.address']!'')}"
                                                           aria-invalid="<#if messagesPerField.existsError('address')>true</#if>"/>
                                                    <p id="form-error-address" class="contact-form-error">Address is
                                                        required</p>
                                                </div>
                                            </div>
                                        </div>
                                        <!--previous && next buttons-->
                                        <div class="field" style="margin-top: 2rem; margin-bottom: 1rem">
                                            <nav class="level">
                                                <!--button previous-->
                                                <div class="level-left">
                                                    <div class="level-item">
                                                        <button type="button"
                                                                class="button is-rounded is-link is-fullwidth"
                                                                style="padding-right: 2rem" onclick="previous()">
                                                            <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
                                                                 focusable="false" viewBox="0 0 256 512"
                                                                 style="width: 1em; height: 1em; vertical-align: -.125em; margin-right: 1rem">
                                                                <path fill="currentColor"
                                                                      d="M137.4 406.6l-128-127.1C3.125 272.4 0 264.2 0 255.1s3.125-16.38 9.375-22.63l128-127.1c9.156-9.156 22.91-11.9 34.88-6.943S192 115.1 192 128v255.1c0 12.94-7.781 24.62-19.75 29.58S146.5 415.8 137.4 406.6z"/>
                                                            </svg>
                                                            <span>Previous</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <!--button next-->
                                                <div class="level-right">
                                                    <div class="level-item">
                                                        <button type="button"
                                                                class="button is-rounded is-link is-fullwidth"
                                                                style="padding-left: 2rem" onclick="next()">
                                                            <span>Next</span>
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
                                    <progress title="2/4" class="progress myprogress" value="2" max="4">50%
                                    </progress>
                                </div>
                            </div>
                            <!--text box-->
                            <div class="column align-items-center">
                                <div class="container m-4 is-white">
                                    <div class="content has-text-justified">
                                        <p>
                                            Please provide your institutional address.
                                        </p>
                                        <p>
                                            It will enable our Data Stewards to provide you with the personnel on-site
                                            support you deserve. 
                                        </p>
                                        <p>
                                            This way, we can assure that you don't miss any of the DataPLANT events,
                                            such as onboardings, workshops or summer schools.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div id="card3" style="display: none">
                        <div class="columns">
                            <div class="column align-items-top pb-5">
                                <div class="container box has-bg-white m-4 p-0">
                                    <div class="container p-4">
                                        <h1 class="title is-4 is-lightblue is-uppercase">
                                            SIGN UP
                                        </h1>
                                        <h1 class="title is-4">
                                            Set Password
                                        </h1>
                                        <!--input fields-->

                                        <div class="field">
                                            <div class="${properties.kcFormGroupClass!}">
                                                <div class="${properties.kcInputWrapperClass!}">
                                                    <input type="password" id="password"
                                                           class="${properties.kcInputClass!} input is-rounded"
                                                           placeholder="Password" name="password"
                                                           autocomplete="new-password"
                                                           aria-invalid="<#if messagesPerField.existsError('password','password-confirm')>true</#if>"
                                                    />
                                                    <p id="form-error-password" class="contact-form-error">Password is
                                                        required</p>

                                                    <#if messagesPerField.existsError('password')>
                                                        <span id="input-error-password"
                                                              class="${properties.kcInputErrorMessageClass!}"
                                                              aria-live="polite">
                                                            ${kcSanitize(messagesPerField.get('password'))?no_esc}
                                                        </span>
                                                    </#if>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="field">
                                            <div class="${properties.kcFormGroupClass!}">
                                                <div class="${properties.kcInputWrapperClass!}">
                                                    <input type="password" id="password-confirm"
                                                           class="${properties.kcInputClass!} input is-rounded"
                                                           placeholder="Confirm Password" name="password-confirm"
                                                           autocomplete="new-password"
                                                           aria-invalid="<#if messagesPerField.existsError('password-confirm')>true</#if>"
                                                    />
                                                    <p id="form-error-password-confirm" class="contact-form-error">
                                                        Password Confirmation is required</p>
                                                    <p id="form-error-password-match" class="contact-form-error">
                                                        Password does not match</p>
                                                    <#if messagesPerField.existsError('password-confirm')>
                                                        <span id="input-error-password-confirm"
                                                              class="${properties.kcInputErrorMessageClass!}"
                                                              aria-live="polite">
                                                            ${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
                                                        </span>
                                                    </#if>
                                                </div>
                                            </div>
                                        </div>

                                        <!--previous && next buttons-->
                                        <div class="field" style="margin-top: 2rem; margin-bottom: 1rem">
                                            <nav class="level">
                                                <!--button previous-->
                                                <div class="level-left">
                                                    <div class="level-item">
                                                        <button type="button"
                                                                class="button is-rounded is-link is-fullwidth"
                                                                style="padding-right: 2rem" onclick="previous()">
                                                            <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
                                                                 focusable="false" viewBox="0 0 256 512"
                                                                 style="width: 1em; height: 1em; vertical-align: -.125em; margin-right: 1rem">
                                                                <path fill="currentColor"
                                                                      d="M137.4 406.6l-128-127.1C3.125 272.4 0 264.2 0 255.1s3.125-16.38 9.375-22.63l128-127.1c9.156-9.156 22.91-11.9 34.88-6.943S192 115.1 192 128v255.1c0 12.94-7.781 24.62-19.75 29.58S146.5 415.8 137.4 406.6z"/>
                                                            </svg>
                                                            <span>Previous</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <!--button next-->
                                                <div class="level-right">
                                                    <div class="level-item">
                                                        <button type="button"
                                                                class="button is-rounded is-link is-fullwidth"
                                                                style="padding-left: 2rem" onclick="next()">
                                                            <span>Next</span>
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
                                    <progress title="3/4" class="progress myprogress" value="3" max="4">75%
                                    </progress>
                                </div>
                            </div>
                            <!--text box-->
                            <div class="column align-items-center">
                                <div class="container m-4 is-white">
                                    <div class="content has-text-justified">
                                        <p>
                                            Please set a password for your Dataplant account.
                                        </p>
                                        <p>
                                            You can use this password
                                            to log in to DataPLANT services.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!--END 2nd card ui-->
                    <!--4rd card ui-->
                    <div id="card4" style="display: none">
                        <div class="columns">
                            <div class="column align-items-top pb-5">
                                <div class="container box has-bg-white m-4 p-0">
                                    <div class="container p-4">
                                        <h1 class="title is-4 is-lightblue is-uppercase">
                                            Sign up
                                        </h1>
                                        <h1 class="title is-4">
                                            Affiliation details
                                        </h1>
                                        <!--input fields-->

                                        <div class="field">
                                            <div class="${properties.kcFormGroupClass!}">
                                                <div class="${properties.kcInputWrapperClass!}">
                                                    <input type="text"
                                                           class="${properties.kcInputClass!} input is-rounded"
                                                           id="consortium"
                                                           id="user.attributes.affiliation"
                                                           placeholder="Project/consortium" title="Project/consortium"
                                                           name="user.attributes.affiliation"
                                                           value="${(register.formData['user.attributes.affiliation']!'')}"
                                                           aria-invalid="<#if messagesPerField.existsError('affiliation')>true</#if>"/>
                                                    <p id="form-error-consortium" class="contact-form-error">
                                                        Project/Consortium is required</p>
                                                </div>
                                            </div>
                                        </div>


                                        <#--                                        <div class="field">-->
                                        <#--                                            <div class="${properties.kcFormGroupClass!}">-->
                                        <#--                                                <div class="${properties.kcInputWrapperClass!}">-->
                                        <#--                                                    &lt;#&ndash;                                                <input type="text" id="affiliation" class="${properties.kcInputClass!} input is-rounded" id="user.attributes.state"  placeholder="Affiliation" name="user.attributes.affiliation"&ndash;&gt;-->
                                        <#--                                                    &lt;#&ndash;                                                       value="${(register.formData['user.attributes.affiliation']!'')}" aria-invalid="<#if messagesPerField.existsError('affiliation')>true</#if>" />&ndash;&gt;-->
                                        <#--                                                    <textarea id="research" id="user.attributes.research" type="text"-->
                                        <#--                                                              class="${properties.kcInputClass!} textarea"-->
                                        <#--                                                              placeholder="Research interests. Multiple interests need to be separated with a comma."-->
                                        <#--                                                              title="Research interests"-->
                                        <#--                                                              style="border-radius: 20px"-->
                                        <#--                                                              name="user.attributes.research"-->
                                        <#--                                                              value="${(register.formData['user.attributes.research']!'')}"-->
                                        <#--                                                              aria-invalid="<#if messagesPerField.existsError('research')>true</#if>"></textarea>-->
                                        <#--                                                    <p id="form-error-research" class="contact-form-error">Research-->
                                        <#--                                                        Interests are required</p>-->

                                        <#--                                                </div>-->
                                        <#--                                            </div>-->


                                        <div class="field">
                                            <div class="${properties.kcFormGroupClass!}">
                                                <div class="${properties.kcInputWrapperClass!}">

                                                    <#--                                            <div class="col-sm-2 col-md-2">-->
                                                    <#--                                                <label for="user.attributes.research" class="control-label">Research interests</label> <span-->
                                                    <#--                                                        class="required">*</span>-->
                                                    <#--                                            </div>-->

                                                    <input class="is-rounded" title="Research interests"
                                                           name='user.attributes.research'
                                                           placeholder='Research Interests'
                                                           value="${(register.formData['user.attributes.research']!'')}"
                                                           id="tagger"
                                                           aria-invalid="<#if messagesPerField.existsError('research')>true</#if>">

                                                    <p id="form-error-research" class="contact-form-error">Research
                                                        Interests are required</p>


                                                    <script>
                                                        var input = document.getElementById('tagger');
                                                        var whitelist = ["Dataplant", "Biology", "Computer science", "De.nbi", "Galaxy", "Swobup", "Swate", "ARC", "Gitlab", "Storage", "Freiburg", "Lautern"]

                                                        var tagify = new Tagify(input, {
                                                            whitelist: whitelist,
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
                                            </div>

                                        </div>

                                        <div class="field">
                                            <div class="select is-fullwidth is-rounded">
                                                <select id="role"
                                                        formControlName="roleName"
                                                        name="user.attributes.role"
                                                        value="${(register.formData['user.attributes.role']!'')}">
                                                    <option value="">Choose your Role in DataPLANT</option>
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
                                                <p id="form-error-role" class="contact-form-error">Selection of role
                                                    is
                                                    required</p>
                                            </div>

                                        </div>
                                        <!--previous && next buttons-->
                                        <div class="field" style="margin-top: 2rem; margin-bottom: 1rem">
                                            <nav class="level">
                                                <!--button previous-->
                                                <div class="level-left">
                                                    <div class="level-item">
                                                        <button type="button"
                                                                class="button is-rounded is-link is-fullwidth"
                                                                style="padding-right: 2rem" onclick="previous()">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 aria-hidden="true"
                                                                 focusable="false" viewBox="0 0 256 512"
                                                                 style="width: 1em; height: 1em; vertical-align: -.125em; margin-right: 1rem">
                                                                <path fill="currentColor"
                                                                      d="M137.4 406.6l-128-127.1C3.125 272.4 0 264.2 0 255.1s3.125-16.38 9.375-22.63l128-127.1c9.156-9.156 22.91-11.9 34.88-6.943S192 115.1 192 128v255.1c0 12.94-7.781 24.62-19.75 29.58S146.5 415.8 137.4 406.6z"/>
                                                            </svg>
                                                            <span>Previous</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <!--button next-->
                                                <div class="level-right">
                                                    <div class="level-item">
                                                        <button class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}
                                                        button is-rounded is-link is-fullwidth"
                                                                style="padding-left: 1.5rem" type="submit"
                                                                onclick="return next()"
                                                                value="${msg("doRegister")}"/>
                                                            <span>Register</span>
                                                            <#--                                                            <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" viewBox="0 0 256 512" style="width: 1em; height: 1em; vertical-align: -.125em; margin-left: 1rem">-->
                                                            <#--                                                                <path fill="currentColor" d="M118.6 105.4l128 127.1C252.9 239.6 256 247.8 256 255.1s-3.125 16.38-9.375 22.63l-128 127.1c-9.156 9.156-22.91 11.9-34.88 6.943S64 396.9 64 383.1V128c0-12.94 7.781-24.62 19.75-29.58S109.5 96.23 118.6 105.4z" />-->
                                                            <#--                                                            </svg>-->
                                                        </button>
                                                        <#--                                                        <div id="kc-form-buttons"-->
                                                        <#--                                                             class="${properties.kcFormButtonsClass!}">-->
                                                        <#--                                                            <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}"-->
                                                        <#--                                                                   type="submit" value="${msg("doRegister")}"/>-->
                                                        <#--                                                        </div>-->
                                                    </div>
                                                </div>
                                            </nav>
                                        </div>
                                    </div>
                                    <progress title="4/4" class="progress myprogress" value="4" max="4">100%
                                    </progress>

                                </div>
                            </div>
                            <!--text box-->
                            <div class="column align-items-center">
                                <div class="container m-4 is-white">
                                    <div class="content has-text-justified">
                                        <p>
                                            Please provide information on your project or consortium affiliation,
                                            research interest, and role within DataPLANT.
                                        </p>
                                        <p>
                                            This will help us to filter information that might be relevant for you.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!--END 4rd card ui-->
                </form>
            </div>


        </section>
    </#if>
</@layout.registrationLayout>
