<#ftl output_format="plainText">
<#assign requiredActionsText><#if requiredActions??><#list requiredActions><#items as reqActionItem>${msg("requiredAction.${reqActionItem}")}<#sep>, </#items></#list><#else></#if></#assign>
<#--${msg("executeActionsBody",link, linkExpiration, realmName, requiredActionsText, linkExpirationFormatter(linkExpiration))}-->
Your administrator has just requested that you update your Dataplant account by performing the following action(s):

${msg(requiredActionsText)}



Please click the following link to proceed:

${msg(link)}

This link will expire within ${msg(linkExpirationFormatter(linkExpiration))}


If you are unaware that your administrator has requested this, just ignore this message and nothing will be changed.

Kind regards,
Your DataPLANT Team