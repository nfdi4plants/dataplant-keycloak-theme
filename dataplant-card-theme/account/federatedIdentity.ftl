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

    <#if federatedIdentity.identities?size gt 1>
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
                                            UnLink Providers
                                        </h1>
                                        <div class="spacer"></div>
                                        <!--input fields-->

                                        <p>
                                            Click on the buttons below, to unlink an identity provider with your
                                            DataPLANT account.


                                        </p>
                                        <div class="spacer"></div>


                                    </div>

                                </form>
                            </div>
                        </div>
                        <!--text box-->
                        <div class="column align-items-center">
                            <div class="container m-4 is-white">
                                <div class="content has-text-justified">
                                    <div class="spacer"></div>
                                    <h3 style="color:white; padding-top:1.9em">
                                        UnLink Provider
                                    </h3>
                                    <div style="height:10px; text-align:left"></div>

                                    <div style="height:10px"></div>

                                    <p>
                                        Click on the buttons below, to unlink an identity provider with your DataPLANT
                                        account.
                                    </p>
                                    <div class="row margin-bottom">
                                        <#list federatedIdentity.identities as identity>

                                            <div class="col-sm-5 col-md-5">

                                                <#if identity.connected>
                                                    <#if federatedIdentity.removeLinkPossible>
                                                        <form action="${url.socialUrl}" method="post"
                                                              class="form-inline">
                                                            <input type="hidden" id="stateChecker" name="stateChecker"
                                                                   value="${stateChecker}">
                                                            <input type="hidden" id="action" name="action"
                                                                   value="remove">
                                                            <input type="hidden" id="providerId" name="providerId"
                                                                   value="${identity.providerId!}">
                                                            <button id="remove-link-${identity.providerId!}"
                                                                    class="btn btn-default">${msg("doRemove")}</button>
                                                        </form>
                                                    </#if>
                                                <#else>

                                                <#--                                            <p>There are currently no providers linked with your account.</p>-->

                                                </#if>

                                            </div>


                                        </#list>
                                    </div>
                                    <#if federatedIdentity.identities?size gt 1>${properties.kcFormSocialAccountListGridClass!}
                                        <p>There are currently no providers linked with your account.</p>
                                    </#if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--END card ui-->
            </div>
        </section>
</#if>
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
                                        <button id="remove-link-${identity.providerId!}"
                                                class="button is-rounded is-link is-fullwidth">${msg("doRemove")}</button>
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
                                    <div class="spacer"></div>
                                    <!--input fields-->

                                    <p>
                                        Click on the buttons below, to link an identity provider with your DataPLANT
                                        account.


                                    </p>
                                    <div class="spacer"></div>


                                </div>

                            </form>
                        </div>
                    </div>
                    <!--text box-->
                    <div class="column align-items-center">
                        <div class="container m-4 is-white">
                            <div class="content has-text-justified">
                                <div class="spacer"></div>
                                <h3 style="color:white; padding-top:1.9em">
                                    Link Provider
                                </h3>
                                <div style="height:10px; text-align:left"></div>

                                <div style="height:10px"></div>

                                <p>
                                    Click on the buttons below, to link an identity provider with your DataPLANT
                                    account.
                                </p>

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

                                                <button class="provider-button" id="add-link-${identity.providerId!}">
                                                    <figure>
                                                        <img class="pbutton-img"
                                                             src="${url.resourcesPath}/img/${identity.displayName!}.svg"/>
                                                    </figure>
                                                    <p class="pbutton-text">${identity.displayName!}</p>
                                                </button>

                                            </form>

                                        </#if>



                                    </#list>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--END card ui-->
        </div>
    </section>

</@layout.mainLayout>