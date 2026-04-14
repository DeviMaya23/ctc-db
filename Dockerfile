FROM liquibase/liquibase:4.25-alpine

COPY changeset/ /liquibase/changeset/
COPY changelog.xml /liquibase/changelog.xml

WORKDIR /liquibase

ENTRYPOINT ["/bin/sh", "-c", "\
  liquibase \
  --changeLogFile=changelog.xml \
  --url=${DATABASE_URL} \
  --username=${DATABASE_USER} \
  --password=${DATABASE_PASSWORD} \
  update\
"]