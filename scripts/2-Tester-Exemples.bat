@echo off

call setenv.bat

:: schéma seul
echo TEST 1
%frictionless% validate --type schema ..\schema.json

:: exemple
echo TEST 2
%frictionless%  validate --schema ../schema.json ../exemple-antibes.csv

pause