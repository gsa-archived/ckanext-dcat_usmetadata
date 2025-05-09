ARG CKAN_VERSION=2.10
FROM openknowledge/ckan-dev:${CKAN_VERSION}
ARG CKAN_VERSION

RUN apk add swig 
RUN pip install --upgrade pip

COPY . ${APP_DIR}/

RUN pip install -r ${APP_DIR}/requirements.txt \
  -r ${APP_DIR}/dev-requirements.txt -e ${APP_DIR}/.
