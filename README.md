nps的客户端npc

一款轻量级、功能强大的内网穿透代理服务器。支持tcp、udp流量转发，支持内网http代理、内网socks5代理，同时支持snappy压缩、站点保护、加密传输、多路复用、header修改等。支持web图形化管理，集成多用户模式。

使用方式

- `docker pull zhj9709/npc`

-  下载conf文件夹并解压

- 继续阅读文档按照不同的启动方式启动

- 无配置文件：`docker run -d --name=npc --net=host zhj9709/npc -server=<ip:port> -vkey=<web界面中显示的密钥> <以及一些其他参数>`

- 配置文件：`docker run -d --name=npc --net=host -v <本机conf目录>:/app/conf zhj9709/npc -config=/app/conf/npc.conf`

参数附在后面即可 请确保为conf文件夹下的npc.conf

查看日志`docker logs npc`