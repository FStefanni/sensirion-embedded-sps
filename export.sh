#!/usr/bin/env bash

make
rm -fr src

mkdir -p src
cp sps-common/sps_git_version.h src
cp sps-common/sps_git_version.c src
cp sps30-i2c/sps30.c sps30-i2c/sps30.h src

rm -fr \
    .circleci \
    .github \
    embedded-common \
    sps-common \
    sps30-i2c \
    tests \
    .clang-format \
    .gitlab-ci.yml \
    .gitmodules \
    CHANGELOG.md \
    LICENSE \
    Makefile \
    README.md

git add src
git cia -m"New cleaning"

# EOF
