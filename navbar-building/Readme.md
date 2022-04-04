# update nfdi4plants navbar and footer
cd dataplant-keycloak-theme/navbar-building

npm install 
rollup --config rollup.config.js


cp dst/nfdi-webcomponents.js ../dataplant-card-theme/login/resources/js/
