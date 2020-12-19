#!/bin/bash

path(){
path=/opt/example-app/bin/
. /etc/profile
cd $path    
}

start() {
path
. startup.sh &
}

shutdown() {
path
. shutdown.sh &
}

status() {
path
. status.sh
echo "PID: " $(cat app.pid)

}

restart() {
path
. status.sh
printf "\n"
echo "PID: " $(cat app.pid)
printf "\n"
. shutdown.sh
while [ -f app.pid ]
do
  sleep 2
done
. startup.sh &

}



case "$1" in
'start')
    start
        ;;

'stop')
    shutdown
        ;;

'status')
    status
        ;;

'restart')
    restart
        ;;

*) echo "error - use "$0" {start|stop|status|restart}"
           exit 1
        ;;
esac
exit 0