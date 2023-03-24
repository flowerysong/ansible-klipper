#!/bin/bash

cd $(readlink -fn $(dirname "$BASH_SOURCE"))

export PIPENV_IGNORE_VIRTUALENVS=1
export PIPENV_VENV_IN_PROJECT=1
# Pipenv doesn't put these in the lockfile, and also doesn't automatically
# update them.
pipenv run pip install -U setuptools pip
pipenv sync
