ps -ao %mem,rss,command | grep $1 | grep -v grep | awk '{$2=int($2/(1024))"MB";}{ print; }'
