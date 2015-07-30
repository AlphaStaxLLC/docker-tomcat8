#!/bin/bash
MAX_UPLOAD_SIZE=${MAX_UPLOAD_SIZE:-524288000}
CATALINA_OPTS=${CATALINA_OPTS:-"-Xms128m -Xmx1024m -XX:PermSize=128m -XX:MaxPermSize=256m"}

export MAX_UPLOAD_SIZE="${MAX_UPLOAD_SIZE}"
export CATALINA_OPTS="${CATALINA_OPTS}"
export CATALINA_HOME="/usr/share/tomcat8"
export CATALINA_BASE="/var/lib/tomcat8"

exec /usr/share/tomcat8/bin/catalina.sh run >>/var/log/tomcat8.log 2>&1
