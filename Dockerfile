FROM quay.io/keycloak/keycloak:20.0.2

COPY cache-ispn.xml /opt/keycloak/conf/cache-ispn.xml

ENV KC_CACHE_CONFIG_FILE=cache-ispn.xml
