# Generated by IBM TransformationAdvisor
# Tue Aug 11 02:57:58 UTC 2020

FROM ibmcom/websphere-traditional:latest-ubi

# put app and scripts and properties in /work/config
# put external library (e.g db driver) in /work/config/lib
COPY --chown=was:root thinkdemoapp-0.0.1-snapshot.war /work/config/thinkdemoapp-0.0.1-snapshot.war
COPY --chown=was:root ./src/config /work/config
COPY --chown=was:root ./lib /work/config/lib
RUN /work/configure.sh
