FROM pretix/standalone:2026.9.0
USER root
RUN python -m pip install --no-cache-dir "pretix-oidc==2.3.1"
USER pretixuser
