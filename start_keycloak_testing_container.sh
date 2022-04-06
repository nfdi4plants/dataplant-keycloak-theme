#!/bin/bash

# cd /home/marcel/keycloak-theming/new/test/build_keycloak

docker rm keycloak-testing-container || true

docker build . -t test/keycloak-hot-reload

docker run \
   -p 8080:8080 \
   --name keycloak-testing-container \
   -e KEYCLOAK_USER=admin \
   -e KEYCLOAK_PASSWORD=admin \
   -e JAVA_OPTS=-Dkeycloak.profile=preview \
   -v $HOME/keycloak/theme/dataplant-theme:/opt/jboss/keycloak/themes/dataplant-theme/:rw \
   -v /home/marcel/GIT/dataplant-keycloak-theme/dataplant-card-theme/:/opt/jboss/keycloak/themes/dtheme/:rw \
   -v /home/marcel/keycloak-theming/new/cern/theme/scripts/disable-theme-cache.cli:/opt/jboss/startup-scripts/:rw \
   -it test/keycloak-hot-reload:latest
