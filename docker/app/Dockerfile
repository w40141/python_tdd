# python3.11のイメージをダウンロード
FROM python:3.11-buster
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE 1

RUN apt update \
  && apt install -y default-mysql-client \
  && apt install --no-install-recommends -y tzdata \
  && apt clean

WORKDIR /project

RUN curl -sSL https://raw.githubusercontent.com/pdm-project/pdm/main/install-pdm.py | python3 - && \
  cd /usr/local/bin && \
  ln -s /root/.local/bin/pdm

COPY pyproject.toml pdm.lock ./

# Not to create virtualenv (PEP582)
RUN mkdir __pypackages__ \
  && pdm install --prod --no-lock --no-editable

# add entrypoint.sh
COPY ./scripts/entrypoint.sh ./scripts
RUN chmod +x /project/scripts/entrypoint.sh

# run entrypoint.sh
ENTRYPOINT ["/project/scripts/entrypoint.sh"]
