<#ftl output_format="plainText">
<#--${msg("passwordResetBody",link, linkExpiration, realmName, linkExpirationFormatter(linkExpiration))}-->
Reset your DataPLANT password

Your just requested to reset your Dataplant account's credentials. If this was you, click on the link below to reset them:

${msg(link)}

This link will expire within ${msg(linkExpirationFormatter(linkExpiration))}

If you don't want to reset your credentials, just ignore this message and nothing will be changed.


Kind regards,
Your DataPLANT Team