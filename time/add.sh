TIMECMD='/usr/bin/time -f %U\t%S\t%E '


x=$1
y=$2

natural_time () {
    printf "natural\t"
    ${TIMECMD} ../build/add $1 $2 > /dev/null
}

py_time () {
    printf "py\t"
    ${TIMECMD} ../py/add.py $1 $2 > /dev/null
    
    }

natural_time $x $y
py_time $x $y
