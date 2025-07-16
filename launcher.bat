@echo off
title TMS120
set CLASSPATH=.;dist\*
java -Xmx2048m -server -Dnet.sf.odinms.wzpath=wz  server.Start
pause
