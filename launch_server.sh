#!/bin/sh

export CLASSPATH=".:jar/*" 

java -Dwzpath=wz/ \
-Xmx800m net.server.Server