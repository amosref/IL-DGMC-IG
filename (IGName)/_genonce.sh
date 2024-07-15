#!/bin/bash
publisher_jar=publisher.jar
input_cache_path=./input-cache/
echo Checking internet connection...
curl -sSf tx.fhir.org > /dev/null

if [ $? -eq 0 ]; then
    echo "Online"
    txoption=""
else
    echo "Offline"
    txoption="-tx n/a"
fi

echo "$txoption"

export JAVA_TOOL_OPTIONS="$JAVA_TOOL_OPTIONS -Dfile.encoding=UTF-8"

# Set the maximum heap size to 4GB (adjust as necessary)
JAVA_HEAP_SIZE="-Xmx4g"
# Additional memory options
JAVA_GC_OPTIONS="-XX:+UseG1GC -XX:MaxGCPauseMillis=200 -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=./heap-dump.hprof"

publisher=$input_cache_path/$publisher_jar
if test -f "$publisher"; then
    java $JAVA_HEAP_SIZE $JAVA_GC_OPTIONS -jar $publisher -ig . $txoption "$@"
else
    publisher=../$publisher_jar
    if test -f "$publisher"; then
        java $JAVA_HEAP_SIZE $JAVA_GC_OPTIONS -jar $publisher -ig . $txoption "$@"
    else
        echo IG Publisher NOT FOUND in input-cache or parent folder.  Please run _updatePublisher.  Aborting...
    fi
fi
