@echo off
@title MapleSolaxia
set CLASSPATH=.;*
java -Xmx2048m -Dwzpath=wz\ net.server.Server
pause