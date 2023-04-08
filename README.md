# backend_template

Template repository for products using python

[![CI](https://github.com/quanmatic/backend_template/actions/workflows/ci.yaml/badge.svg)](https://github.com/quanmatic/backend_template/actions/workflows/ci.yaml)
[![Coverage](https://img.shields.io/endpoint?url=https://gist.githubusercontent.com/w40141/4f064dc3eafdf503b9321b25842ae86b/raw/pytest-coverage-comment.json)](https://github.com/quanmatic/backend_template/actions/workflows/ci.yaml)
[![pdm-managed](https://img.shields.io/badge/pdm-managed-blueviolet)](https://pdm.fming.dev)
[![Ruff](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/charliermarsh/ruff/main/assets/badge/v1.json)](https://github.com/charliermarsh/ruff)
[![black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)

## Demo

### Getting Started

1. Start server with docker `docker compose up`
1. `curl -X GET 'http://127.0.0.1:8080/checkhealth'` or go to [http://127.0.0.1:8080/checkhealth](http://127.0.0.1:8080/checkhealth)

### Check API docs  

go to [http://127.0.0.1:8080/docs](http://127.0.0.1:8080/docs)

## Requirement

- Package manager: [PDM](https://github.com/pdm-project/pdm)
- Framework: [FastAPI](https://github.com/tiangolo/fastapi)
- ASGI server: [uvicorn](https://github.com/encode/uvicorn)
- Linter: [Ruff](https://github.com/charliermarsh/ruff)
- Static type checker: [pyright](https://github.com/microsoft/pyright)
- Formatter: [black](https://github.com/psf/black)
- test: [pytest](https://github.com/pytest-dev/pytest)
- AWS SDK: [boto3](https://github.com/boto/boto3)

## Project guide

### Installation

1. Install pdm

    1. install

        ```bash
        brew install pdm
        ```

    1. (Optional) shell completion ([reference](https://pdm.fming.dev/latest/#shell-completion))

        ```bash
        pdm completion fish > ~/.config/fish/completions/pdm.fish
        ```

1. Clone repository

    - gh

      ```bash
      gh repo clone quanmatic/backend_template
      ```

    - https

      ```bash
      git clone https://github.com/quanmatic/backend_template.git
      ```

    - ssh

      ```bash
      git clone git@github.com:quanmatic/backend_template.git
      ```

1. Install library
    1. (Optional) make `__pypackages__` not to create virtualenv ([reference](https://pdm.fming.dev/latest/usage/pep582/#working-with-pep-582))

        ```bash
        mkdir __pypackages__
        ```

    1. Given python version or path as base interpreter

        ```bash
        pdm use
        ```

    1. Install libraries

        ```bash
        pdm install
        ```

### Branch strategy

### Development

### Tests

### CI

## Directory Structure

```
.
├── README.md
├── docker
│   ├── api
│   └── db
├── docker-compose.yaml
├── pdm.lock
├── pyproject.toml
├── scripts
│   └── run.sh
├── src
│   ├── __version__.py
│   ├── api
│   ├── domain
│   ├── infrastructure
│   ├── main.py
│   └── usecase
└── tests
    ├── api
    ├── domain
    ├── infrastructure
    └── usecase
```

## Scripts

- lint

    ```bash
    pdm run lint
    ```

- format

    ```bash
    pdm run format
    ```

- test

    ```bash
    pdm run test
    ```

- check (lint, format, and test)

    ```
    pdm run check
    ```

## Note

## Author

Daisuke Oku ([@w40141](https://github.com/w40141))
