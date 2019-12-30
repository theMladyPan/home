# log from python into systemd log

```python
import logging
from systemd.journal import JournalHandler

log = logging.getLogger('crypto-ticker')
log.addHandler(JournalHandler())
log.setLevel(logging.INFO)
log.info("begin to tick at 1/60Hz, "+time.asctime())
```

```shell
systemctl status my-service
```
