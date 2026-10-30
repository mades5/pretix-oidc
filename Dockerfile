FROM pretix/standalone:2026.9.0
USER root
RUN python -m pip install --no-cache-dir \
    "pretix-oidc==2.3.1"
RUN python -m pip install --no-cache-dir --no-build-isolation \
    "git+https://github.com/maximal7000/pretix-seatingsale.git"
RUN cd /pretix/src && make production
USER pretixuser
