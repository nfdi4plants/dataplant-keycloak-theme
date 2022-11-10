<#import "template.ftl" as layout>
<@layout.mainLayout active='social' bodyClass='social'; section>

<#--    <div class="row">-->
<#--        <div class="col-md-10">-->
<#--            <h2>${msg("federatedIdentitiesHtmlTitle")}</h2>-->
<#--        </div>-->
<#--    </div>-->

<#--    <div id="federated-identities">-->
<#--        <#list federatedIdentity.identities as identity>-->
<#--            <div class="row margin-bottom">-->
<#--                <div class="col-sm-2 col-md-2">-->
<#--                    <label for="${identity.providerId!}" class="control-label">${identity.displayName!}</label>-->
<#--                </div>-->
<#--                <div class="col-sm-5 col-md-5">-->
<#--                    <input disabled="true" class="form-control" value="${identity.userName!}">-->
<#--                </div>-->
<#--                <div class="col-sm-5 col-md-5">-->
<#--                    <#if identity.connected>-->
<#--                        <#if federatedIdentity.removeLinkPossible>-->
<#--                            <form action="${url.socialUrl}" method="post" class="form-inline">-->
<#--                                <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">-->
<#--                                <input type="hidden" id="action" name="action" value="remove">-->
<#--                                <input type="hidden" id="providerId" name="providerId" value="${identity.providerId!}">-->
<#--                                <button id="remove-link-${identity.providerId!}" class="btn btn-default">${msg("doRemove")}</button>-->
<#--                            </form>-->
<#--                        </#if>-->
<#--                    <#else>-->
<#--                        <form action="${url.socialUrl}" method="post" class="form-inline">-->
<#--                            <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">-->
<#--                            <input type="hidden" id="action" name="action" value="add">-->
<#--                            <input type="hidden" id="providerId" name="providerId" value="${identity.providerId!}">-->
<#--                            <button id="add-link-${identity.providerId!}" class="btn btn-default">${msg("doAdd")}</button>-->
<#--                        </form>-->
<#--                    </#if>-->
<#--                </div>-->
<#--            </div>-->
<#--        </#list>-->
<#--    </div>-->

<#--    <#if federatedIdentity.identities?size gt 1>-->
<#--        <section class="section">-->
<#--            <div class="container p-4 has-rounded-border has-bg-split-20-darkblue registercard">-->
<#--                <div id="msform">-->
<#--                    <div class="columns">-->
<#--                        <div class="column align-items-top pb-5">-->
<#--                            <div class="container box has-bg-white m-4 p-0">-->
<#--                                <form action="${url.passwordUrl}" method="post">-->

<#--                                    <div class="container p-4">-->
<#--                                        <h1 class="title is-4 is-darkblue is-uppercase"></h1>-->
<#--                                        <h1 class="title is-4 is-darkblue-lighter-20">-->
<#--                                            UnLink Providers-->
<#--                                        </h1>-->
<#--                                        <div class="spacer"></div>-->
<#--                                        <!--input fields&ndash;&gt;-->

<#--                                        <p>-->
<#--                                            Click on the buttons below, to unlink an identity provider with your-->
<#--                                            DataPLANT account.-->


<#--                                        </p>-->
<#--                                        <div class="spacer"></div>-->


<#--                                    </div>-->

<#--                                </form>-->
<#--                            </div>-->
<#--                        </div>-->
<#--                        <!--text box&ndash;&gt;-->
<#--                        <div class="column align-items-center">-->
<#--                            <div class="container m-4 is-white">-->
<#--                                <div class="content has-text-justified">-->
<#--                                    <div class="spacer"></div>-->
<#--                                    <h3 style="color:white; padding-top:1.9em">-->
<#--                                        UnLink Provider-->
<#--                                    </h3>-->
<#--                                    <div style="height:10px; text-align:left"></div>-->

<#--                                    <div style="height:10px"></div>-->

<#--                                    <p>-->
<#--                                        Click on the buttons below, to unlink an identity provider with your DataPLANT-->
<#--                                        account.-->
<#--                                    </p>-->
<#--                                    <div class="row margin-bottom">-->
<#--                                        <#list federatedIdentity.identities as identity>-->

<#--                                            <div class="col-sm-5 col-md-5">-->

<#--                                                <#if identity.connected>-->
<#--                                                    <#if federatedIdentity.removeLinkPossible>-->
<#--                                                        <form action="${url.socialUrl}" method="post"-->
<#--                                                              class="form-inline">-->
<#--                                                            <input type="hidden" id="stateChecker" name="stateChecker"-->
<#--                                                                   value="${stateChecker}">-->
<#--                                                            <input type="hidden" id="action" name="action"-->
<#--                                                                   value="remove">-->
<#--                                                            <input type="hidden" id="providerId" name="providerId"-->
<#--                                                                   value="${identity.providerId!}">-->
<#--                                                            <button id="remove-link-${identity.providerId!}"-->
<#--                                                                    class="btn btn-default">${msg("doRemove")}</button>-->
<#--                                                        </form>-->
<#--                                                    </#if>-->
<#--                                                <#else>-->

<#--                                                &lt;#&ndash;                                            <p>There are currently no providers linked with your account.</p>&ndash;&gt;-->

<#--                                                </#if>-->

<#--                                            </div>-->


<#--                                        </#list>-->
<#--                                    </div>-->
<#--                                    <#if federatedIdentity.identities?size gt 1>${properties.kcFormSocialAccountListGridClass!}-->
<#--                                        <p>There are currently no providers linked with your account.</p>-->
<#--                                    </#if>-->
<#--                                </div>-->
<#--                            </div>-->
<#--                        </div>-->
<#--                    </div>-->
<#--                </div>-->
<#--                <!--END card ui&ndash;&gt;-->
<#--            </div>-->
<#--        </section>-->
<#--    </#if>-->

    <#list federatedIdentity.identities as identity>
        <#if identity.connected>
            <section class="container p-4 content-area">
                <div class="container has-rounded-border registercard">
                    <article class="message is-info">
                        <div class="message-header">
                            <p>Linked Providers</p>
                        </div>
                        <div class="list has-visible-pointer-controls">
                            <#list federatedIdentity.identities as identity>

                                <#if identity.connected>
                                    <#if federatedIdentity.removeLinkPossible>
                                        <form action="${url.socialUrl}" method="post" class="form-inline">
                                            <input type="hidden" id="stateChecker" name="stateChecker"
                                                   value="${stateChecker}">
                                            <input type="hidden" id="action" name="action" value="remove">
                                            <input type="hidden" id="providerId" name="providerId"
                                                   value="${identity.providerId!}">
                                            <#--                                            <button id="remove-link-${identity.providerId!}"-->
                                            <#--                                                    class="button is-rounded is-link is-fullwidth">${msg("doRemove")}</button>-->
                                            <#--                                        </form>-->

                                            <div class="list-item">
                                                <div class="list-item-image">
                                                    <figure class="image is-32x32">

                                                        <img src="${url.resourcesPath}/img/${identity.displayName!}.svg"
                                                             alt="Info" width="32" height="32"/>
                                                    </figure>
                                                </div>

                                                <div class="list-item-content">
                                                    <label for="${identity.providerId!}"
                                                           class="control-label">${identity.displayName!}</label>
                                                </div>

                                                <div class="list-item-controls">
                                                    <div class="buttons is-right">
                                                        <button id="remove-link-${identity.providerId!}"
                                                                class="button is-rounded is-link is-fullwidth"
                                                                value="Save"
                                                                type="submit" name="submitAction"
                                                                style="padding-left: 2rem">
                                                            <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
                                                                 focusable="false" viewBox="0 0 512 512"
                                                                 style="width: 1em; height: 1em; vertical-align: -.125em; margin-right: 0.3rem">
                                                                <path fill="currentColor"
                                                                      d="M256 512c141.4 0 256-114.6 256-256S397.4 0 256 0S0 114.6 0 256S114.6 512 256 512zM175 175c9.4-9.4 24.6-9.4 33.9 0l47 47 47-47c9.4-9.4 24.6-9.4 33.9 0s9.4 24.6 0 33.9l-47 47 47 47c9.4 9.4 9.4 24.6 0 33.9s-24.6 9.4-33.9 0l-47-47-47 47c-9.4 9.4-24.6 9.4-33.9 0s-9.4-24.6 0-33.9l47-47-47-47c-9.4-9.4-9.4-24.6 0-33.9z"/>
                                                                ></path>
                                                            </svg>
                                                            <span>Remove</span>
                                                        </button>

                                                    </div>
                                                </div>

                                            </div>

                                        </form>

                                    </#if>
                                </#if>
                            </#list>

                        </div>
                    </article>
                </div>
            </section>

        </#if>
    </#list>

    <section class="section">
        <div class="container p-4 has-rounded-border has-bg-split-20-darkblue registercard">
            <div id="msform">
                <div class="columns">
                    <div class="column align-items-top pb-5">
                        <div class="container box has-bg-white m-4 p-0">
                            <form action="${url.passwordUrl}" method="post">

                                <div class="container p-4">
                                    <h1 class="title is-4 is-darkblue is-uppercase"></h1>
                                    <h1 class="title is-4 is-darkblue-lighter-20">
                                        Link Providers
                                    </h1>
                                    <!--input fields-->

                                    <p>
                                        Click on the buttons below, to link an identity provider with your DataPLANT
                                        account.
                                    </p>

                                    <div class="spacer"></div>

                                    <div class="row margin-bottom button-area">
                                        <#list federatedIdentity.identities as identity>

                                        <#--                                        <div class="col-sm-2 col-md-2">-->
                                        <#--                                            <label for="${identity.providerId!}" class="control-label">${identity.displayName!}</label>-->
                                        <#--                                        </div>-->
                                        <#--                                        <div class="col-sm-5 col-md-5">-->
                                        <#--                                            <input disabled="true" class="form-control" value="${identity.userName!}">-->
                                        <#--                                        </div>-->

                                        <#--                                            <#if identity.connected>-->
                                        <#--                                                <#if federatedIdentity.removeLinkPossible>-->
                                        <#--                                                    <form action="${url.socialUrl}" method="post" class="form-inline">-->
                                        <#--                                                        <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">-->
                                        <#--                                                        <input type="hidden" id="action" name="action" value="remove">-->
                                        <#--                                                        <input type="hidden" id="providerId" name="providerId" value="${identity.providerId!}">-->
                                        <#--                                                        <button id="remove-link-${identity.providerId!}" class="btn btn-default">${msg("doRemove")}</button>-->
                                        <#--                                                    </form>-->
                                        <#--                                                </#if>-->
                                        <#--                                            <#else>-->
                                            <#if !identity.connected>
                                                <form action="${url.socialUrl}" method="post" class="">
                                                    <input type="hidden" id="stateChecker" name="stateChecker"
                                                           value="${stateChecker}">
                                                    <input type="hidden" id="action" name="action" value="add">
                                                    <input type="hidden" id="providerId" name="providerId"
                                                           value="${identity.providerId!}">
                                                    <#--                                                    <button id="add-link-${identity.providerId!}" class="btn btn-default">${msg("doAdd")}</button>-->

                                                    <button class="provider-button-inverted" id="add-link-${identity.providerId!}">
                                                        <figure>
                                                            <img class="pbutton-img"
                                                                 src="${url.resourcesPath}/img/${identity.displayName!}.svg"/>
                                                        </figure>
                                                        <p class="pbutton-text-inverted">${identity.displayName!}</p>
                                                    </button>

                                                </form>

                                            </#if>



                                        </#list>
                                    </div>

                                    <div class="spacer"></div>


                                </div>

                            </form>
                        </div>
                    </div>
                    <!--text box-->
                    <div class="column align-items-center">
                        <div class="container m-4 is-white">
                            <div class="content has-text-justified">
<#--                                <div class="spacer"></div>-->
                                <h3 style="color:white; padding-top:1.9em">
                                    Link Provider
                                </h3>
                                <div style="height:10px; text-align:left"></div>

                                <div style="height:10px"></div>

                                <p>
                                    Connect your account to established science portals. After connecting, you can also use these identity providers to login.
                                </p>

<#--                                <div class="row margin-bottom button-area">-->
<#--                                    <#list federatedIdentity.identities as identity>-->

<#--                                        <#if !identity.connected>-->
<#--                                            <form action="${url.socialUrl}" method="post" class="">-->
<#--                                                <input type="hidden" id="stateChecker" name="stateChecker"-->
<#--                                                       value="${stateChecker}">-->
<#--                                                <input type="hidden" id="action" name="action" value="add">-->
<#--                                                <input type="hidden" id="providerId" name="providerId"-->
<#--                                                       value="${identity.providerId!}">-->
<#--                                                &lt;#&ndash;                                                    <button id="add-link-${identity.providerId!}" class="btn btn-default">${msg("doAdd")}</button>&ndash;&gt;-->

<#--                                                <button class="provider-button" id="add-link-${identity.providerId!}">-->
<#--                                                    <figure>-->
<#--                                                        <img class="pbutton-img"-->
<#--                                                             src="${url.resourcesPath}/img/${identity.displayName!}.svg"/>-->
<#--                                                    </figure>-->
<#--                                                    <p class="pbutton-text">${identity.displayName!}</p>-->
<#--                                                </button>-->

<#--                                            </form>-->

<#--                                        </#if>-->



<#--                                    </#list>-->
<#--                                </div>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--END card ui-->
        </div>
    </section>

    <div class="spacer"></div>

</@layout.mainLayout>