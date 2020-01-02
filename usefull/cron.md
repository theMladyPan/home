```shell
crontab -e # edit crontab
crontab -l # list crontab programs
crontab -r # delete all crontab jobs
```

add following:
`A B C D E USERNAME /path/to/command arg1 arg2`
with meaning:
* A: Minutes range: 0 – 59
* B: Hours range: 0 – 23
* C: Days range: 0 – 31
* D: Months range: 0 – 12
* E: Days of the week range: 0 – 7. Starting from Monday, 0 or 7 represents Sunday
* USERNAME: replace this with your username
* /path/to/command – The name of the script or command you want to schedule

* Asterisk (*): specifies all possible values for a field
* The comma (,): specifies a list of values
* Dash (-): specifies a range of values
* Separator (/): specifies a step value

hold up, there is a simplified version of dates:

* @hourly: Run once every hour i.e. “0 * * * *“
* @midnight: Run once every day i.e. “0 0 * * *“
* @daily: same as midnight
* @weekly: Run once every week, i.e. “0 0 * * 0“
* @monthly: Run once every month i.e. “0 0 1 * *“
* @annually: Run once every year i.e. “0 0 1 1 *“
* @yearly: same as @annually
* @reboot: Run once at every startup

e.g. `@daily /path/to/backup/script.sh`
