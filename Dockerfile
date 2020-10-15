FROM bitnami/kubectl:1.19

LABEL maintainer "Eko Aprili Trisno <eko@altoshift.com>"

COPY init-deploy deploy /opt/alto/deploy/bin/
COPY init-kubectl kubectl /opt/alto/kubectl/bin/

USER root

ENV PATH="/opt/alto/kubectl/bin:$PATH"
ENV PATH="/opt/alto/deploy/bin:$PATH"

ENTRYPOINT ["kubectl"]

CMD ["--help"]
