#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/gigo/FPGA_Academy/fft/solution1/.autopilot/db/a.g.bc ${1+"$@"}
