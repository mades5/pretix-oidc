FROM pretix/standalone:2026.9.0
USER root
# Keycloak OIDC
RUN python -m pip install --no-cache-dir \
    "pretix-oidc==2.3.1"
# Community Seating
RUN python -m pip install --no-cache-dir --no-build-isolation \
    "git+https://github.com/14praveenk/pretix-seating.git"
# Frontend-Assets
RUN cd /pretix/src && make production
USER pretixuser
