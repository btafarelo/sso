FROM jboss/keycloak:10.0.1

CMD ["-Dkeycloak.frontendUrl=http://localhost/auth", "-Dkeycloak.migration.action=export", "-Dkeycloak.migration.realmName=my_realm", "-Dkeycloak.migration.provider=singleFile", "-Dkeycloak.migration.file=/tmp/my_realm.json"]