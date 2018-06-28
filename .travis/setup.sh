#!/bin/bash

if [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
    brew update
    brew cask uninstall --force oclint
    brew upgrade python
    brew install root

    pip3 install --upgrade enum34 pytest_pylint configparser astroid coveralls

elif [[ "$TRAVIS_OS_NAME" == "linux" ]]; then
    curl -O https://root.cern.ch/download/root_v6.12.06.Linux-ubuntu14-x86_64-gcc4.8.tar.gz
    tar xzvf root_v6.12.06.Linux-ubuntu14-x86_64-gcc4.8.tar.gz

    pip install --upgrade enum34 pytest_pylint configparser astroid coveralls
fi
