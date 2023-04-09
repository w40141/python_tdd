# python3.11のイメージをダウンロード
FROM python:3.11-buster
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE 1

WORKDIR /project

RUN apt-get update \
  && apt-get -y install --no-install-recommends netcat gcc postgresql \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir -U pip setuptools wheel \
  && pip install --no-cache-dir pdm

COPY pyproject.toml pdm.lock ./

RUN mkdir __pypackages__ \
  && pdm install --prod --no-lock --no-editable

COPY ./scripts /project/scripts
RUN chmod +x /project/scripts/entrypoint.sh

ENTRYPOINT ["/project/scripts/entrypoint.sh"]
