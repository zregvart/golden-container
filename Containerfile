FROM registry.access.redhat.com/ubi9/ubi-micro

ARG GIT_ID
ARG TARGETARCH
ARG BUILD_DATE

LABEL name="HACBS Contract Golden Container" \
      vendor="HACBS Contract" \
      maintainer="hacbs-contract@redhat.com" \
      version="1" \
      release="1" \
      build-date=$BUILD_DATE \
      summary="Trivial image build in compliance with HACBS policy" \
      description="Trivial image build in compliance with HACBS policy" \
      url="https://github.com/hacbs-contract/golden-container" \
      distribution-scope="public" \
      io.k8s.description="Trivial image build in compliance with HACBS policy" \
      io.k8s.display-name="HACBS Contract Golden Container" \
      io.openshift.tags="golden" \
      vcs-ref=$GIT_ID \
      vcs-type=git \
      architecture=$TARGETARCH \
      com.redhat.component="hacbs-contract-golden-container" \
      com.redhat.build-host="somewhere.over.the.rainbow"
