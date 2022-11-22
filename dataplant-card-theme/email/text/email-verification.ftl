<#ftl output_format="plainText">
<#--${msg("emailVerificationBody",link, linkExpiration, realmName, linkExpirationFormatter(linkExpiration))}-->
Thank you for registering in DataPLANT

You registered an account on DataPLANT.
Before being able to use your account you need to verify that this is your email address by clicking the following link:

${msg(link)}


This link will expire within ${msg(linkExpirationFormatter(linkExpiration))}


After successful confirmation of your registration, you can immediately use our services.
If you have not registered with us, you can simply ignore this email.

Kind regards,
Your DataPLANT Team