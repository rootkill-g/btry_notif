# btry_notif

1. To install cron and libnotify :
```

sudo apt install cron libnotify4

```
2. To set the cronjob to run this script in background :
```

cron -e

```
3. Add the following to crontab :
```

* * * * * /path/to/btry_notif.sh

```
