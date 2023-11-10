#!/usr/bin/env bash

rm -rf lua-language-server
mkdir lua-language-server

git submodule update --init --recursive

pushd 3rd/luamake
./compile/build.sh
popd
./3rd/luamake/luamake rebuild

cp -r 3rd/RobloxLsp/server/* lua-language-server
rm -rf build