#!/bin/sh
# @echo off
# @title MapleSolaxia
export CLASSPATH=".:*"
java -Dwzpath=wz/ \
-Xmx800m net.server.Server