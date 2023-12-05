#!/usr/bin/env bash” 

echo "Hello Hello"

failed=0

run_tests() {
    if egrep -q 'Item [123]' should-match.txt && \
       egrep -q -v 'Item [456]' should-match.txt && \
       egrep -q 'Item [12]' should-matches.txt && \
       egrep -q -v 'Item [35]' should-misses.txt && \
       egrep -q -v 'Item [46]' not-matches.txt && \
       egrep -q 'Item [56]' not-misses.txt; 
    then
        echo "cmd success"
        exit 0
    else
        echo "cmd failed"
        failed=1
    fi
}
exit $failed