# pull official base image
FROM python:3.11.2-slim-buster

# set working directory
WORKDIR /usr/src/app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# copy files
COPY pyproject.toml pdm.lock app entrypoint.sh ./

# install system dependencies
RUN apt-get update \
  && apt-get -y install --no-install-recommends netcat gcc \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# install PDM
RUN pip install --no-cache-dir -U pip setuptools wheel && pip install --no-cache-dir pdm

RUN mkdir __pypackages__ && pdm install --prod --no-lock --no-editable

# add entrypoint.sh
RUN chmod +x /usr/src/app/entrypoint.sh

# run entrypoint.sh
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]
