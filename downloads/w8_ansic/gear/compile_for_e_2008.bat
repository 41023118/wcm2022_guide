mkdir build

mkdir dist

REM compile gear.c
gcc.exe -c -g -IF:\data\NX2008\UGOPEN -MMD -MP -MF build/gear.o.d -o build/gear.o gear.c

REM link with libufun.lib and libugopenint.lib
gcc.exe -shared -o dist/gear.dll build/gear.o F:\data\NX2008\UGOPEN\libufun.lib F:\data\NX2008\UGOPEN\libugopenint.lib 