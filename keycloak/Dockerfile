FROM keycloak/keycloak:26.4

CMD ["start", "--hostname", "http://localhost/auth", "--hostname-backchannel-dynamic", "true", "--proxy-headers", "forwarded", "--import-realm"]