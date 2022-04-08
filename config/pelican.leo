<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2"/>
<globals/>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="yen.20170108171605.1"><vh>@settings</vh>
<v t="yen.20170108171605.2"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="yen.20170108171605.3"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="yen.20170108171733.1"><vh>@path ../</vh>
<v t="leo.20180115150519.1"><vh>@edit index.html</vh></v>
<v t="yen.20170108171733.4"><vh>@edit .gitignore</vh></v>
<v t="leo.20170908162839.1"><vh>沒有 disqus 論壇</vh>
<v t="yen.20170108171733.2"><vh>@button local-blog</vh></v>
</v>
<v t="leo.20170908162904.1"><vh>有 disqus 論壇</vh>
<v t="leo.20170709224430.1"><vh>@button github-blog</vh></v>
</v>
<v t="yen.20170108171733.5"><vh>Pelican 設定</vh>
<v t="leo.20170709020600.1"><vh>共用</vh></v>
<v t="yen.20170108171733.7"><vh>@edit pelicanconf.py</vh></v>
<v t="leo.20170709015947.1"><vh>遠端</vh></v>
<v t="leo.20170709015955.1"><vh>@edit publishconf.py</vh></v>
<v t="leo.20170709015940.1"><vh>近端</vh></v>
<v t="yen.20170108171733.6"><vh>@edit local_publishconf.py</vh></v>
</v>
<v t="yen.20170224232341.1"><vh>編輯 template</vh>
<v t="leo.20180115093448.1"><vh>@path theme/attila/templates</vh>
<v t="leo.20180715212936.1"><vh>@edit article.html</vh></v>
<v t="leo.20180115093536.1"><vh>@edit base.html</vh></v>
<v t="leo.20180115093657.1"><vh>@edit search.html</vh></v>
<v t="leo.20180115093715.1"><vh>@edit archives.html</vh></v>
<v t="leo.20180715212745.1"><vh>@edit categories.html</vh></v>
<v t="leo.20180715212902.1"><vh>@edit index.html</vh></v>
<v t="leo.20180115093726.1"><vh>@path partials</vh>
<v t="leo.20180115093749.1"><vh>@edit navigation.html</vh></v>
</v>
</v>
</v>
<v t="leo.20170710015511.1"><vh>編輯 plugin</vh>
<v t="leo.20170710015523.1"><vh>@path plugin</vh>
<v t="leo.20170710015523.2"><vh>@path tipue_search</vh>
<v t="leo.20170710015523.3"><vh>@edit tipue_search.py</vh></v>
</v>
</v>
</v>
<v t="yen.20170108171733.71"><vh>@path markdown</vh>
<v t="yen.20170108171733.81"><vh>@path pages</vh>
<v t="yen.20170108171733.82"><vh>@edit pages_1.md</vh></v>
</v>
</v>
<v t="leo.20170710022054.1"><vh>可以另建節點存放 markdown 目錄下的 md 檔案</vh></v>
<v t="leo.20170710022041.1"><vh>@path markdown</vh>
<v t="leo.20180115115910.1"><vh>2022</vh>
<v t="leo.20180423103639.1"><vh>2022 Fall WCM 課程</vh>
<v t="leo.20180423103656.1"><vh>@edit 20220328.md</vh></v>
</v>
<v t="leo.20220401195916.1"><vh>hp and ub servers</vh>
<v t="leo.20220401195931.1"><vh>@clean 20220401.md</vh></v>
</v>
</v>
</v>
<v t="yen.20170108171733.83"><vh>產生 .key 與 .crt 指令</vh></v>
</v>
<v t="yen.20170108171930.1"><vh>@button https server</vh></v>
<v t="yen.20170108171939.1"><vh>@button ipv6 https server</vh></v>
</vnodes>
<tnodes>
<t tx="leo.20170709015940.1"></t>
<t tx="leo.20170709015947.1"></t>
<t tx="leo.20170709020600.1"></t>
<t tx="leo.20170709224430.1">@language python
import os

os.system("pelican markdown -o blog -s publishconf.py")
g.es("admin pelican Github 執行完畢")


</t>
<t tx="leo.20170710015511.1"></t>
<t tx="leo.20170710015523.1"></t>
<t tx="leo.20170710015523.2"></t>
<t tx="leo.20170710022041.1"></t>
<t tx="leo.20170710022054.1"></t>
<t tx="leo.20170908162839.1"></t>
<t tx="leo.20170908162904.1"></t>
<t tx="leo.20180115093448.1"></t>
<t tx="leo.20180115093726.1"></t>
<t tx="leo.20180115115910.1"></t>
<t tx="leo.20180423103639.1"></t>
<t tx="leo.20220401195916.1"></t>
<t tx="leo.20220401195931.1">@language md
---
Title: hp 與 ub 伺服器
Date: 2022-04-01 11:00
Category: Server
Tags: 2022SpringWCM
Slug: 2022-WCM-hp-and-ub-server
Author: kmolab
---

2022 WCM 課程利用一台 2015 年出廠的 HPE Proliant ML 10 v2 伺服器, 以實體 Windows 10 與 Ubuntu 22.04 分別建立 hp (c13) 與 ub (c14) 等兩台伺服器.

&lt;!-- PELICAN_END_SUMMARY --&gt;

Ubuntu 建立管理用戶
----

Ubuntu 22.04 安裝完成後, 必須先設法上網, 可以使用 /etc/netplan/*.yaml 檔案進行設定:

&lt;pre class="brush: jscript"&gt;
network:
  version: 2
  ethernets:
    enp0s3:
      addresses:
        - 2001:288:6004:XX:XXXX::14/64
      routes:
        - to: default
          via:  2001:288:6004:XX::254
      nameservers:
        addresses: 
          - 2001:b000:168::1
&lt;/pre&gt;

其中與 Ubuntu 20.04 的 netplan 網路設定差異是 gateway6 已經改為 routes.

網路啟動後, 通常會以 sudo apt update 進行更新後, 先安裝 net-tools 與 xterm.

&lt;pre class="brush: jscript"&gt;
sudo apt install net-tools
sudo apt install xterm
&lt;/pre&gt;

安裝 net-tools 是為了能夠執行 ifconfig, 而 xterm 則是可以用 xterm &amp; 帶出 X-Window
至於在 ifconfig 能夠執行之前, 也就是網路尚未完成設定前, 若要查詢 network device 的名稱, 可以採用 ip l show 指令.

建立新用戶
====

在 Ubuntu 建立新用戶, 可以使用 sudo adduser username, 若要將該用戶轉為系統管理者, 則可以使用:

&lt;pre class="brush: jscript"&gt;
sudo usermod -aG sudo username
&lt;/pre&gt;

安裝 nginx
====

在 Ubuntu 安裝 nginx, 可以採用 sudo apt install nginx, 之後的設定檔案位於 /etc/nginx/sites-available/default.

sudo service nginx restart

sudo service nginx stop

sudo service nginx start

安裝 stunnel
====

在 Ubuntu 安裝 stunnel, 可以採用 sudo apt install stunnel, 之後的設定檔案可自行建立, 放入 /etc/stunnel 目錄, 名稱可設為 stunnel.conf, 至於設定範例檔案則位於 /usr/share/doc/stunnel4/examples/stunnel.conf-sample

uwsgi
====

目前的 &lt;https://github.com/mdecycu/cmsimde&gt; 使用 Flask 編寫, 執行時需要額外 Python3 模組, 可以利用 pip3 安裝, 但必須先以 sudo apt install python3-pip 安裝 pip3:

&lt;pre class="brush: jscript"&gt;
sudo pip3 install flask flask_cors bs4 lxml pelican markdown leo pyopenssl
&lt;/pre&gt;

其中 cmsimde 靜態網頁可以利用 nginx 伺服, 網站簽證用的 key 與 certificate 需要 openssl, 而 cmsimde 動態網頁則需要透過 uwsgi 進行部署.

利用 openssl 建立 cmsimde.key 與 cmsimde.crt 指令:

&lt;pre class="brush: jscript"&gt;
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout cmsimde.key -out cmsimde.crt
&lt;/pre&gt;

與 uwsgi 有關的 Ubuntu 系統安裝則包括:

&lt;pre class="brush: jscript"&gt;
// 安裝 pip3
sudo apt install python3-pip
// 安裝 python 編譯開發系統
sudo apt install build-essential python3-dev
// 安裝 uwsgi 模組
sudo pip3 install uwsgi
// 安裝 nginx 伺服套件與 uwsgi python3 plugin 程式庫
sudo apt install nginx uwsgi-plugin-python3
&lt;/pre&gt;

用來伺服 cmsimde 靜態網頁的 nginx 參考設定:

/etc/nginx/nginx.conf 中 user 必須設為 pj2022, 也就是 wcm2022 倉儲的擁有者

&lt;pre class="brush: jscript"&gt;
# for ub.cycu.org
# /etc/nginx/nginx.conf user pj2022
server {
    listen 80 default_server;
    listen [::]:80 default_server;
    root /home/pj2022/github/wcm2022;
    index index.html;

    location / {
        # First attempt to serve request as file, then
        # as directory, then fall back to displaying a 404.
        try_files $uri $uri/ =404;
    }
 
}

# for /home/pj2022/github/wcm2022
server {
    listen 8443 ssl default_server;
    listen [::]:8443 ssl default_server;
    
    location / {
        include uwsgi_params;
        uwsgi_pass  127.0.0.1:9443;
    }
    
    ssl_certificate /etc/stunnel/cmsimde.crt;
    ssl_certificate_key /etc/stunnel/cmsimde.key;
    ssl_session_timeout 5m;
    ssl_protocols SSLv3 TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers "HIGH:!aNULL:!MD5 or HIGH:!aNULL:!MD5:!3DES";
    ssl_prefer_server_ciphers on;
    try_files $uri $uri/ =404;
}
&lt;/pre&gt;

cmsimde 動態網站使用 uwsgi 啟動時, wcm2022/init.py 中的 uwsgi 必須設為 True.

uwsgi_ini/uwsgi.ini

&lt;pre class="brush: jscript"&gt;
socket = 127.0.0.1:9443
uid = pj2022
gid = pj2022
plugins-dir = /usr/lib/uwsgi/plugins/
plugin = python3
master = true
process = 4
threads = 2
chdir = /home/pj2022/github/wcm2022/cmsimde
wsgi-file = /home/pj2022/github/wcm2022/cmsimde/wsgi.py
&lt;/pre&gt;

啟動 uwsgi 指令, 將會逐一啟動 wsgi_ini 目錄中個別 .ini 檔案:

&lt;pre class="brush: jscript"&gt;
sudo /usr/bin/uwsgi --emperor /home/user_account/wsgi_ini
&lt;/pre&gt;

一般則利用 Ubuntu 系統服務, 用來啟動 uwsgi:

/etc/systemd/system 的 cmsimde.service 服務啟動檔案內容:

&lt;pre class="brush: jscript"&gt;
[Unit]
Description=uWSGI to serve CMSiMDE
After=network.target
 
[Service]
User=pj2022
Group=pj2022
WorkingDirectory=/home/pj2022/uwsgi_ini
ExecStart=/usr/bin/uwsgi --emperor /home/pj2022/uwsgi_ini
 
[Install]
WantedBy=multi-user.target
&lt;/pre&gt;

/etc/systemd/system/cmsimde.service 必須透過 sudo chmod uog+x cmsimde.service 設定讓檔案可以執行.

接著將 cmsimde 服務設為隨系統開機啟動:

sudo systemctl enable cmsimde

若要取消 cmsimde 服務隨系統開機啟動:

sudo systemctl disable cmsimde

手動啟動 cmsimde.service 服務

sudo systemctl start cmsimde

手動停止 cmsimde.service 服務

sudo systemctl stop cmsimde



</t>
<t tx="yen.20170108171605.1"></t>
<t tx="yen.20170108171605.2">QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;'CherryPy', 'pytz', 'mako', 'beautifulsoup4', 'pymysql', 'peewee'
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="yen.20170108171605.3">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="yen.20170108171733.1"></t>
<t tx="yen.20170108171733.2">@language python
import os

os.system("pelican markdown -o blog -s local_publishconf.py")
g.es("admin pelican 近端執行完畢")


</t>
<t tx="yen.20170108171733.5"></t>
<t tx="yen.20170108171733.71"></t>
<t tx="yen.20170108171733.81"></t>
<t tx="yen.20170108171733.83">sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout localhost.key -out localhost.crt

</t>
<t tx="yen.20170108171930.1">@language python
import os
import subprocess
import threading
import http.server, ssl

def domake():
    # build directory
    os.chdir("./../")
    server_address = ('localhost', 5443)
    httpd = http.server.HTTPServer(server_address, http.server.SimpleHTTPRequestHandler)
    httpd.socket = ssl.wrap_socket(httpd.socket,
                                   server_side=True,
                                   certfile='localhost.crt',
                                   keyfile='localhost.key',
                                   ssl_version=ssl.PROTOCOL_TLSv1)
    print(os.getcwd())
    print("5443 https server started")
    httpd.serve_forever()

# 利用執行緒執行 https 伺服器
make = threading.Thread(target=domake)
make.start()</t>
<t tx="yen.20170108171939.1">@language python
import os
import subprocess
import threading
import socket
import http.server, ssl

class HTTPServerV6(http.server.HTTPServer):
    address_family = socket.AF_INET6
  
def domake():
    # build directory
    os.chdir("./../")
    ipv6_address = '::1'
    server_address = (ipv6_address, 6443)
    #httpd = http.server.HTTPServer(server_address, http.server.SimpleHTTPRequestHandler)
    httpd = HTTPServerV6(server_address, http.server.SimpleHTTPRequestHandler)
    httpd.socket = ssl.wrap_socket(httpd.socket,
                                   server_side=True,
                                   certfile='localhost.crt',
                                   keyfile='localhost.key',
                                   ssl_version=ssl.PROTOCOL_TLSv1)
    print("6443 https server started")
    httpd.serve_forever()

# 利用執行緒執行 https 伺服器
make = threading.Thread(target=domake)
make.start()</t>
<t tx="yen.20170224232341.1"></t>
</tnodes>
</leo_file>
