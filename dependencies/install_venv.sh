#! /bin/bash

BASH_PROFILE_CONFIG=${HOME}/.bashrc
VIRTUALENV_PROJECTS_HOME=${HOME}/virtualenv_projects

# https://pip.pypa.io/en/stable/installing/
# https://packaging.python.org/guides/installing-using-linux-tools/#installing-pip-setuptools-wheel-with-linux-package-managers
sudo apt-get update
sudo apt-get install python3-setuptools python3-dev build-essential python3-pip python3-virtualenv -y

python3 -m pip install --upgrade pip
python3 -m pip install --user virtualenvwrapper

mkdir -p "${VIRTUALENV_PROJECTS_HOME}"

echo "export WORKON_HOME=${HOME}/.virtualenvs" >> ${BASH_PROFILE_CONFIG}
echo "export PROJECT_HOME=${VIRTUALENV_PROJECTS_HOME}" >> ${BASH_PROFILE_CONFIG}
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> ${BASH_PROFILE_CONFIG}
echo "export VIRTUALENVWRAPPER_SCRIPT=${HOME}/.local/bin/virtualenvwrapper.sh" >> ${BASH_PROFILE_CONFIG}
echo "source ${HOME}/.local/bin/virtualenvwrapper_lazy.sh" >> ${BASH_PROFILE_CONFIG}

source ${BASH_PROFILE_CONFIG}
