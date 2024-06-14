#!/bin/bash



call_nusmv() {
    local test="$1"
    echo "set enable_sexp2bdd_caching 0
read_model -i Elevator.smv
go
check_ltlspec -n $test
quit" > cmdfile

    echo " >>> Test $test"
    /usr/bin/time -l nusmv -dynamic -dcx -source cmdfile
    rm cmdfile
}

call_nusmv 0
#call_nusmv 3
#call_nusmv 4
#call_nusmv 5
