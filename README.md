# systemd-example
A simple Systemd app example script

Change 'exemple-app' to your app name on all files.

## run.sh

I put my app on /opt/example-app/

And there is a sub directory 'bin', on there are the files:
startup.sh, shutdown.sh, status.sh

You can put on this shell scripts the [start|stop|status] of your app in any lang (a 'java -jar xxxxxxxx', or python for example).

You can change the files to another lang too, like binary, ruby, python, go, or any... (startup.py for example)


All scripts will be exec by 'run.sh' change it!

## pid file

You can change the run.sh to set an app.pid file (or create one), to save que PID of your simple app.


## systemd file

A '[example-app].service' file to /etc/systemd/system/

Exec:

sudo systemctl daemon-reload

sudo systemctl enable example-app


Your app script will be enabled!


### start/stop/restart/status

```
sudo systemctl start example-app
sudo systemctl stop example-app
sudo systemctl restart example-app
sudo systemctl status example-app
```