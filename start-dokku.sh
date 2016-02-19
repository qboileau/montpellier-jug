#!/bin/sh

# fix dokku
export JAVA_HOME=/app/.jdk
#end fix dokku
echo "Executing the running script"
cd montpellier-jug-wisdom/target/wisdom/
echo "Starting chameleon"
export JVM_ARGS="-Dhttp.port=$PORT"
./chameleon.sh --interactive