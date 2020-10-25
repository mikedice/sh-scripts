#!/bin/sh
includes=`pkg-config --cflags ${1}`

for include in $includes
do
   case $include in
     -I*)
        extract=${include:2}
        echo \"$extract\",
   esac
done
