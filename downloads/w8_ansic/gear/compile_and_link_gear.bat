mkdir build

mkdir dist

REM compile gear.c
gcc.exe -c -g -IC:\nx12_portable\data\nx12\UGOPEN -MMD -MP -MF build/gear.o.d -o build/gear.o gear.c

REM link with libufun.lib and libugopenint.lib
gcc.exe -shared -o dist/gear.dll build/gear.o C:\nx12_portable\data\nx12\UGOPEN\libufun.lib C:\nx12_portable\data\nx12\UGOPEN\libugopenint.lib 