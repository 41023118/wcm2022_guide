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
<v t="leo.20220419055847.1"><vh>URL</vh></v>
<v t="leo.20170710022041.1"><vh>@path markdown</vh>
<v t="leo.20180115115910.1"><vh>2022</vh>
<v t="leo.20180423103639.1"><vh>2022 Fall WCM 課程</vh>
<v t="leo.20180423103656.1"><vh>@edit 20220328.md</vh></v>
</v>
<v t="leo.20220401195916.1"><vh>hp and ub servers</vh>
<v t="leo.20220401195931.1"><vh>@clean 20220401.md</vh></v>
</v>
<v t="leo.20220409215337.1"><vh>w7 review</vh>
<v t="leo.20220409215349.1"><vh>@clean 20220409.md</vh>
<v t="leo.20220409215521.1"><vh>第七週教學回顧</vh></v>
</v>
</v>
<v t="leo.20220419055320.1"><vh>w9_wcm</vh>
<v t="leo.20220419055352.1"><vh>@clean 20220419.md</vh>
<v t="leo.20220419060307.1"><vh>網際內容管理策略</vh></v>
<v t="leo.20220419055847.1"></v>
</v>
</v>
<v t="leo.20220501202840.1"><vh>w11 寫 Pelican 網誌</vh>
<v t="leo.20220501202937.1"><vh>@clean 20220501.md</vh>
<v t="leo.20220501203121.1"><vh>w11 寫 Pelican 網誌</vh></v>
<v t="leo.20220419055847.1"></v>
</v>
</v>
<v t="leo.20220513215339.1"><vh>IPv6</vh>
<v t="leo.20220513215519.1"><vh>@clean 20220513.md</vh>
<v t="leo.20220513215851.1"><vh>IPv6 路由不通</vh></v>
<v t="leo.20220419055847.1"></v>
</v>
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
<t tx="leo.20220409215337.1"></t>
<t tx="leo.20220409215349.1">@language md
---
Title: wcm2022 w7 review
Date: 2022-04-09 11:00
Category: wcm
Tags: 2022SpringWCM
Slug: wcm2022-w7-review
Author: kmolab
---

wcm2022 進行至第七週總共探討下列主題:

&lt;!-- PELICAN_END_SUMMARY --&gt;

&lt;!-- css and js for Wink3, 以下影片共用設定--&gt;
&lt;link rel="stylesheet" type="text/css" href="./../cmsimde/static/winkPlayer.css" /&gt;
&lt;script type="text/javascript" src="./../cmsimde/static/winkPlayer.js"&gt;&lt;/script&gt;

IPv6 網路設定
----

說明如何利用 bat 執行設定 IPv6 網路連線

&lt;iframe width="560" height="315" src="https://www.youtube.com/embed/DDIQTTk6HZs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen&gt;&lt;/iframe&gt;

&lt;script&gt;
var winkVideoData_ipv6 = { dataVersion: 1, frameRate: 10, buttonFrameLength: 5, buttonFrameOffset: 2, frameStops: { }, };
&lt;/script&gt;
&lt;/p&gt;
&lt;!-- 接下來將 mp4 檔案從 downloads 目錄取出 --&gt;
&lt;div class="winkVideoContainerClass"&gt;&lt;video autoplay="autoplay" class="winkVideoClass" controls="controls" data-dirname="./../cmsimde/static" data-varname="winkVideoData_ipv6" height="630" muted="true" width="1008"&gt;
&lt;source src="./../downloads/wcm_w2_2.mp4" type="video/mp4"/&gt;&lt;/video&gt;
&lt;div class="winkVideoOverlayClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarClass"&gt;&lt;button class="winkVideoControlBarPlayButtonClass"&gt;&lt;/button&gt; &lt;button class="winkVideoControlBarPauseButtonClass"&gt;&lt;/button&gt;
&lt;div class="winkVideoControlBarProgressLeftClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressEmptyMiddleClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressRightClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressFilledMiddleClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressThumbClass"&gt;&lt;/div&gt;
&lt;/div&gt;
&lt;div class="winkVideoPlayOverlayClass"&gt;&lt;/div&gt;
&lt;/div&gt;

建立可攜程式系統
----

以下將介紹如何建立可攜式程式系統:

此一設定將牽涉批次檔案, subst 指令與系統環境變數設定.

&lt;iframe width="560" height="315" src="https://www.youtube.com/embed/dqPIjhL3LhE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen&gt;&lt;/iframe&gt;
&lt;p&gt;
&lt;iframe width="560" height="315" src="https://www.youtube.com/embed/x8DEYTOSNYQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen&gt;&lt;/iframe&gt;
&lt;/p&gt;

以下為第七週課程內容 review:

&lt;script&gt;
var winkVideoData_review = { dataVersion: 1, frameRate: 10, buttonFrameLength: 5, buttonFrameOffset: 2, frameStops: { }, };
&lt;/script&gt;
&lt;/p&gt;
&lt;!-- 接下來將 mp4 檔案從 downloads 目錄取出 --&gt;
&lt;div class="winkVideoContainerClass"&gt;&lt;video autoplay="autoplay" class="winkVideoClass" controls="controls" data-dirname="./../cmsimde/static" data-varname="winkVideoData_review" height="630" muted="true" width="1008"&gt;
&lt;source src="./../downloads/w7_review/w7_review.mp4" type="video/mp4"/&gt;&lt;/video&gt;
&lt;div class="winkVideoOverlayClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarClass"&gt;&lt;button class="winkVideoControlBarPlayButtonClass"&gt;&lt;/button&gt; &lt;button class="winkVideoControlBarPauseButtonClass"&gt;&lt;/button&gt;
&lt;div class="winkVideoControlBarProgressLeftClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressEmptyMiddleClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressRightClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressFilledMiddleClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressThumbClass"&gt;&lt;/div&gt;
&lt;/div&gt;
&lt;div class="winkVideoPlayOverlayClass"&gt;&lt;/div&gt;
&lt;/div&gt;

@others
</t>
<t tx="leo.20220409215521.1">建立 Wink 教學影片
----

以下影片說明如何將 Wink 3.0 製作的 mp4 教學影片嵌入網頁中:

&lt;script&gt;
var winkVideoData_wink = {
  dataVersion: 1,
  frameRate: 10,
  buttonFrameLength: 5,
  buttonFrameOffset: 2,
  frameStops: {
  },
};
&lt;/script&gt;
&lt;/p&gt;
&lt;!-- 接下來將 mp4 檔案從 downloads 目錄取出 --&gt;
&lt;div class="winkVideoContainerClass"&gt;&lt;video autoplay="autoplay" class="winkVideoClass" controls="controls" data-dirname="./../cmsimde/static" data-varname="winkVideoData_wink" height="630" muted="true" width="1008"&gt;
&lt;source src="./../downloads/cmsimde_wink/wink2cmsimde.mp4" type="video/mp4"/&gt;&lt;/video&gt;
&lt;div class="winkVideoOverlayClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarClass"&gt;&lt;button class="winkVideoControlBarPlayButtonClass"&gt;&lt;/button&gt; &lt;button class="winkVideoControlBarPauseButtonClass"&gt;&lt;/button&gt;
&lt;div class="winkVideoControlBarProgressLeftClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressEmptyMiddleClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressRightClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressFilledMiddleClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressThumbClass"&gt;&lt;/div&gt;
&lt;/div&gt;
&lt;div class="winkVideoPlayOverlayClass"&gt;&lt;/div&gt;
&lt;/div&gt;

810WIFI 連線
====

建立 wcm2022
----

網際內容管理課程要求每位學員都必須建立 Github 帳號, 並自行利用 submodule 方式建立 cmsimde 動態與靜態網頁, 相關教學影片如下:

&lt;iframe width="560" height="315" src="https://www.youtube.com/embed/1RbrSOfnFd4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen&gt;&lt;/iframe&gt;

以 token 推送
====

以下影片說明如何使用 Personal Access Token 執行 git push:

&lt;script&gt;
var winkVideoData_token = {
  dataVersion: 1,
  frameRate: 10,
  buttonFrameLength: 5,
  buttonFrameOffset: 2,
  frameStops: {
  },
};
&lt;/script&gt;
&lt;/p&gt;
&lt;!-- 接下來將 mp4 檔案從 downloads 目錄取出 --&gt;
&lt;div class="winkVideoContainerClass"&gt;&lt;video autoplay="autoplay" class="winkVideoClass" controls="controls" data-dirname="./../cmsimde/static" data-varname="winkVideoData_token" height="630" muted="true" width="1008"&gt;
&lt;source src="./../downloads/token_wink/github_token.mp4" type="video/mp4"/&gt;&lt;/video&gt;
&lt;div class="winkVideoOverlayClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarClass"&gt;&lt;button class="winkVideoControlBarPlayButtonClass"&gt;&lt;/button&gt; &lt;button class="winkVideoControlBarPauseButtonClass"&gt;&lt;/button&gt;
&lt;div class="winkVideoControlBarProgressLeftClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressEmptyMiddleClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressRightClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressFilledMiddleClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressThumbClass"&gt;&lt;/div&gt;
&lt;/div&gt;
&lt;div class="winkVideoPlayOverlayClass"&gt;&lt;/div&gt;
&lt;/div&gt;

以 ssh 推送
====

以下影片說明如何在 Windows IPv6 環境下, 利用 PUTTY 以 SSH 協定執行 git push:

&lt;script&gt;
var winkVideoData_ssh = {
  dataVersion: 1,
  frameRate: 10,
  buttonFrameLength: 5,
  buttonFrameOffset: 2,
  frameStops: {
  },
};
&lt;/script&gt;
&lt;/p&gt;
&lt;div class="winkVideoContainerClass"&gt;&lt;video autoplay="autoplay" class="winkVideoClass" controls="controls" data-dirname="./../cmsimde/static" data-varname="winkVideoData_ssh" height="630" muted="true" width="1008"&gt;
&lt;source src="./../downloads/ssh_wink/wink_ssh.mp4" type="video/mp4"/&gt;&lt;/video&gt;
&lt;div class="winkVideoOverlayClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarClass"&gt;&lt;button class="winkVideoControlBarPlayButtonClass"&gt;&lt;/button&gt; &lt;button class="winkVideoControlBarPauseButtonClass"&gt;&lt;/button&gt;
&lt;div class="winkVideoControlBarProgressLeftClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressEmptyMiddleClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressRightClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressFilledMiddleClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressThumbClass"&gt;&lt;/div&gt;
&lt;/div&gt;
&lt;div class="winkVideoPlayOverlayClass"&gt;&lt;/div&gt;
&lt;/div&gt;

配置 Brython 環境
----

設定 Pelican 網誌
----

Blogger 網誌同步
====

計算機概論
----

電腦硬體拆解
====

建立 Virtualbox 虛擬主機
----

安裝配置 nginx
====

&lt;p&gt;以下說明 nginx 安裝流程:&lt;/p&gt;
&lt;script&gt;
var winkVideoData_nginx = { dataVersion: 1, frameRate: 10, buttonFrameLength: 5, buttonFrameOffset: 2, frameStops: { }, };
&lt;/script&gt;
&lt;!-- 接下來將 mp4 檔案從 downloads 目錄取出 --&gt;
&lt;div class="winkVideoContainerClass"&gt;&lt;video autoplay="autoplay" class="winkVideoClass" controls="controls" data-dirname="./../cmsimde/static" data-varname="winkVideoData_nginx" height="630" muted="true" width="1008"&gt;
&lt;source src="./../downloads/w7_nginx/w7_nginx.mp4" type="video/mp4"/&gt;&lt;/video&gt;
&lt;div class="winkVideoOverlayClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarClass"&gt;&lt;button class="winkVideoControlBarPlayButtonClass"&gt;&lt;/button&gt; &lt;button class="winkVideoControlBarPauseButtonClass"&gt;&lt;/button&gt;
&lt;div class="winkVideoControlBarProgressLeftClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressEmptyMiddleClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressRightClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressFilledMiddleClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressThumbClass"&gt;&lt;/div&gt;
&lt;/div&gt;
&lt;div class="winkVideoPlayOverlayClass"&gt;&lt;/div&gt;
&lt;/div&gt;

Windows 10 虛擬主機
====

在 HP Proliant ML 10 伺服器上安裝 Virtualbox 與 Windows 10 過程影片:

&lt;script&gt;
var winkVideoData_win10 = { dataVersion: 1, frameRate: 10, buttonFrameLength: 5, buttonFrameOffset: 2, frameStops: { }, };
&lt;/script&gt;
&lt;/p&gt;
&lt;!-- 接下來將 mp4 檔案從 downloads 目錄取出 --&gt;
&lt;div class="winkVideoContainerClass"&gt;&lt;video autoplay="autoplay" class="winkVideoClass" controls="controls" data-dirname="./../cmsimde/static" data-varname="winkVideoData_win10" height="630" muted="true" width="1008"&gt;
&lt;source src="./../downloads/w7_hp_virtualbox_win/w7_hp_virtualbox_win.mp4" type="video/mp4"/&gt;&lt;/video&gt;
&lt;div class="winkVideoOverlayClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarClass"&gt;&lt;button class="winkVideoControlBarPlayButtonClass"&gt;&lt;/button&gt; &lt;button class="winkVideoControlBarPauseButtonClass"&gt;&lt;/button&gt;
&lt;div class="winkVideoControlBarProgressLeftClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressEmptyMiddleClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressRightClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressFilledMiddleClass"&gt;&lt;/div&gt;
&lt;div class="winkVideoControlBarProgressThumbClass"&gt;&lt;/div&gt;
&lt;/div&gt;
&lt;div class="winkVideoPlayOverlayClass"&gt;&lt;/div&gt;
&lt;/div&gt;

Ubuntu 22.04 虛擬主機
====

Fossil SCM server
----

Tetris on Brython
----

</t>
<t tx="leo.20220419055320.1"></t>
<t tx="leo.20220419055352.1">@language md
---
Title: w9 網際內容管理策略
Date: 2022-04-19 11:00
Category: wcm
Tags: 2022SpringWCM
Slug: wcm2022-w9-wcm-stratege
Author: kmolab
---

將課程資料的靜態網頁以 [Github Pages] 伺服, 除了方便學員查驗各週的改版內容外, 還能直接以瀏覽器擷取. 方便性高, 但是, 免費的 [Github] 帳號只能透過公開的倉儲使用 [Github Pages].

&lt;!-- PELICAN_END_SUMMARY --&gt;

@others

</t>
<t tx="leo.20220419055847.1">[Github Pages]: https://pages.github.com/
[Github]: https://github.com
[Gitlab]: https://gitlab.com
[Gitlab 原始碼]: https://gitlab.com/gitlab-org/gitlab
[Waitress]: https://docs.pylonsproject.org/projects/waitress/en/latest/
[uwsgi]: https://uwsgi-docs.readthedocs.io/en/latest/
[Fossil SCM]: https://fossil-scm.org
[NGINX]: https://nginx.org
[Apache]: https://www.apachelounge.com/download/
[Pelican]: https://blog.getpelican.com/
[Markdown]: https://en.wikipedia.org/wiki/Markdown
[Blog]: https://en.wikipedia.org/wiki/Blog
[Leo Editor]: https://leoeditor.com/
[Brython]: https://brython.info/</t>
<t tx="leo.20220419060307.1">當期課程網站
----

為了方便性, 當期的課程網站, 仍採 [Github Pages] 伺服靜態網站. 使用的方法很簡單, 只要建立 public [Github] 倉儲, 然後透過倉儲的 settings, 啟動倉儲的 [Github Pages] 功能, 並指定從倉儲 main 分支中的 index.html 導引靜態網頁內容即可.

先前課程網站
----

當期課程結束後, 課程對應倉儲將轉為 private, 然後將倉儲內容移至工作站中的電腦, 以 [NGINX] 伺服靜態網頁, 在 Windows 則以 [Waitress] 伺服動態網頁, 在 Ubuntu 則以 [uwsgi] 伺服動態網頁.

Windows [NGINX] nginx.conf 設定:

&lt;pre class="brush: jscript"&gt;
worker_processes  1;
events {
    worker_connections  1024;
}

http {
    include       mime.types;
    default_type  application/octet-stream;

    sendfile        on;

    server {
        listen [::]:80;
        allow 2001:288:6004:XX::0/32;
        deny all;
        
        location / {
            root E:/downloads;
            auth_basic "For Authorized Users Only!";
            auth_basic_user_file C:/password/.htpasswd; 
        }
        
        location /f/ {
            alias f:/;
            auth_basic "For Authorized Users Only!";
            auth_basic_user_file C:/password/.htpasswd; 
        }
        
        location /g/ {
            alias g:/;
            auth_basic "For Authorized Users Only!";
            auth_basic_user_file C:/password/.htpasswd; 
            }
        } # ends server
} # ends http
&lt;/pre&gt;

從上面 [NGINX] 的設定檔案可以看出, 儘管只使用簡單的 [Apache] htpasswd 帳號與密碼控管連線, 但只允許特定網段連線的設定, 已經比將所有資料全部在 [Github Pages] 開放穩當很多. 因為從教學的角度來看, 許多引用的資料可能會因為時空轉變, 原先自由授權的內容轉為特定出版品而改變使用授權, 一旦透過帳號與密碼管控, 就只是提供課程使用, 管理上比較簡便單純.





</t>
<t tx="leo.20220501202840.1"></t>
<t tx="leo.20220501202937.1">@language md
---
Title: w11 寫 Pelican 網誌
Date: 2022-05-11 11:00
Category: wcm
Tags: 2022SpringWCM
Slug: wcm2022-w11-write-pelican-blog
Author: kmolab
---

[Pelican] 是一個建立網誌系統的輔助程式套件, 以 Python 編寫, 使用者可以使用 [Markdown] 格式建立文章, 然後交由 [Pelican] 轉為網際日誌超文件檔案.

&lt;!-- PELICAN_END_SUMMARY --&gt;

@others</t>
<t tx="leo.20220501203121.1">何謂網誌?
====

[Blog] 中文稱為部落格, 全稱為 Weblog. 通常指一種依照日期逆向順序排列的敘事網站內容. 使用者可以透過關鍵字查詢網誌內容, 也可以透過各種分類方式列出網誌文章. 其中包括按照文章主題、作者與關鍵字排列閱讀網誌內容.

由於網誌作者每新增一篇文章, 網站就必須重新配置文章分類連結、作者提供文章連結以及關鍵字查詢更新等整合事項, 因此將一篇文章發布在網誌系統的工作流程通常由程式進行轉檔, 而 [Pelican] 就是負責將使用者所提供的各篇文章內容整合轉檔為網誌系統的工具之一.

如何寫網誌?
====

網誌關鍵內容
----

利用 [Markdown] 編寫 [Pelican] 網誌文章的最前頭, 必須要提供文章標題 (Title), 文章日期 (Date), 文章分類 (Category), 文章標籤 (Tags), 文章超文件檔案名稱 (Slug), 以及文章作者 (Author) 等資料. 由於 [Markdown] 內容轉檔後, 每一篇文章必須以獨一的超文件名稱存檔, 因此每一篇 [Markdown] 文章中的 Slug 必須採用不同的名稱, 否則 [Pelican] 轉檔時就會顯示出無法兩篇文章共用相同檔名的錯誤, 而無法正確完成轉檔.

本篇網誌範例的開頭關鍵內容如下:

&lt;pre class="brush: html"&gt;
@language md
---
Title: w11 寫 Pelican 網誌
Date: 2022-05-11 11:00
Category: wcm
Tags: 2022SpringWCM
Slug: wcm2022-w11-write-pelican-blog
Author: kmolab
---
&lt;/pre&gt;

網誌摘要
----

在關鍵內容之後, 通常會列出網誌文章的摘要, 並以下列 html 註解內容與網誌本文進行區隔. 意即這一行區隔之前的內容為摘要, 而之後就是網誌本文.

&lt;pre class="brush: html"&gt;
&lt;!-- PELICAN_END_SUMMARY --&gt;
&lt;/pre&gt;

Markdown 文章配置
----

使用 [Leo Editor] 編輯網誌時, 可以利用節點指令中的 auto 或 clean 編輯 [Markdown] 網誌文章 (edit 指令只能導入單一節點內容存檔, 而 auto 與 clean 節點指令則可以導入子節點內容), 並以子節點加上內文 others 指令來配置文章內容, 此功能可透過樹狀結構來管理類似 XML 標註架構的 [Markdown] 文章. 若再配合 [Leo Editor] 中特有的 cloned 節點, 可以多篇文章共用同一個 cloned 節點內容. 例如: 可以將文章內所提及的 Anchor 標註統一採用 cloned 節點進行管理. 以下在 others 前方加上 @, 就是 [Leo Editor] 內文中的一種指令, 代表要將隨後的子節點內容放在 others 標示的位置上.

如何放入圖片?
----

[Pelican] [Markdown] 格式的文章中也支援 html 標註, 因此可以直接利用 img 標註引用圖片.

如何嵌入影片?
----

[Pelican] [Markdown] 格式的文章中也支援 html 標註, 因此可以直接利用 video 標註引用影片.

如何引用程式碼?
----

[Pelican] [Markdown] 格式的文章中也支援 html 標註, 因此可以直接利用 pre 標註與語法高亮標示呈現程式碼.

如何加入 Brython 程式?
----

[Pelican] [Markdown] 格式的文章中也支援 html 標註, 因此可以直接將 [Brython] 對應的 Javascript 標註導入 [Brython] 程式庫與啟動 scripts.

如何加入 STL 零件?
----

[Pelican] [Markdown] 格式的文章中也支援 html 標註, 因此可以直接利用 Javascript 標定 STL 零組件.

</t>
<t tx="leo.20220513215339.1"></t>
<t tx="leo.20220513215519.1">@language md
---
Title: 學校 IPv6 網路不通
Date: 2022-05-13 11:00
Category: wcm
Tags: 2022SpringWCM
Slug: wcm2022-w12-IPv6-failed-on-nfu-network
Author: kmolab
---

從前天下午大約兩點開始, 學校的 IPv6 路由就已經無法對外連線, 但對一般師生來說, 這似乎不是甚麼大不了的問題.

&lt;!-- PELICAN_END_SUMMARY --&gt;

@others</t>
<t tx="leo.20220513215851.1">因為 IPv6 網路協定, 在這裡就好像化外之物, 在乎的用戶並沒有很多.

希望查核 www.nfu.edu.tw 的 IPv6 是否連通, 可以使用 &lt;https://ready.chair6.net/?url=www.nfu.edu.tw&gt;.

&lt;img src="../images/nfu_2022_0513_failed_onIPv6.png" width="600" height="400"&gt;&lt;/image&gt;

由於 IPv6 connectivity 已經斷線超過 60 個小時, 因此過去兩天上課不得不僅依靠時斷時通的 IPv4 網路連線.

但也有好消息, 幾經波折, [Github Pages] 終於[支援 IPv6].

[支援 IPv6]: https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site</t>
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
