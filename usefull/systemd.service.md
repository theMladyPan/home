# How to create systemd service daemon, step-by-step
create new .service

```shell
sudo nano /lib/systemd/system/my-new-service.service
```

paste following:
```
[Unit]
Description=Ticker pre rozne crypto, 1/60Hz
After=multi-user.target

[Service]
User=odroid
Type=idle
ExecStart=/home/odroid/ticker.py # python script or other executable
Restart=always

[Install]
WantedBy=multi-user.target
```

then run:
```shell
sudo chmod 644 /lib/systemd/system/my-new-service.service
sudo systemctl daemon-reload
sudo systemctl enable my-new-service
sudo systemctl start my-new-service
```
