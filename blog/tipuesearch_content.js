var tipuesearch = {"pages":[{"title":"About","text":"內容管理網誌 課程倉儲: https://github.com/mdecycu/wcm2022_guide 內容管理: https://mde.tw/wcm2022_guide/ 課程投影片: https://mde.tw/wcm2022_guide/reveal 課程網誌: https://mde.tw/wcm2022_guide/blog","tags":"misc","url":"./pages/about/"},{"title":"hp 與 ub 伺服器","text":"2022 WCM 課程利用一台 2015 年出廠的 HPE Proliant ML 10 v2 伺服器, 以實體 Windows 10 與 Ubuntu 22.04 分別建立 hp (c13) 與 ub (c14) 等兩台伺服器. Ubuntu 建立管理用戶 Ubuntu 22.04 安裝完成後, 必須先設法上網, 可以使用 /etc/netplan/*.yaml 檔案進行設定: network: version: 2 ethernets: enp0s3: addresses: - 2001:288:6004:XX:XXXX::14/64 routes: - to: default via: 2001:288:6004:XX::254 nameservers: addresses: - 2001:b000:168::1 其中與 Ubuntu 20.04 的 netplan 網路設定差異是 gateway6 已經改為 routes. 網路啟動後, 通常會以 sudo apt update 進行更新後, 先安裝 net-tools 與 xterm. sudo apt install net-tools sudo apt install xterm 安裝 net-tools 是為了能夠執行 ifconfig, 而 xterm 則是可以用 xterm & 帶出 X-Window 至於在 ifconfig 能夠執行之前, 也就是網路尚未完成設定前, 若要查詢 network device 的名稱, 可以採用 ip l show 指令. 建立新用戶 在 Ubuntu 建立新用戶, 可以使用 sudo adduser username, 若要將該用戶轉為系統管理者, 則可以使用: sudo usermod -aG sudo username 安裝 nginx 在 Ubuntu 安裝 nginx, 可以採用 sudo apt install nginx, 之後的設定檔案位於 /etc/nginx/sites-available/default. sudo service nginx restart sudo service nginx stop sudo service nginx start 安裝 stunnel 在 Ubuntu 安裝 stunnel, 可以採用 sudo apt install stunnel, 之後的設定檔案可自行建立, 放入 /etc/stunnel 目錄, 名稱可設為 stunnel.conf, 至於設定範例檔案則位於 /usr/share/doc/stunnel4/examples/stunnel.conf-sample uwsgi 目前的 https://github.com/mdecycu/cmsimde 使用 Flask 編寫, 執行時需要額外 Python3 模組, 可以利用 pip3 安裝, 但必須先以 sudo apt install python3-pip 安裝 pip3: sudo pip3 install flask flask_cors bs4 lxml pelican markdown leo pyopenssl 其中 cmsimde 靜態網頁可以利用 nginx 伺服, 網站簽證用的 key 與 certificate 需要 openssl, 而 cmsimde 動態網頁則需要透過 uwsgi 進行部署. 利用 openssl 建立 cmsimde.key 與 cmsimde.crt 指令: sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout cmsimde.key -out cmsimde.crt 與 uwsgi 有關的 Ubuntu 系統安裝則包括: // 安裝 pip3 sudo apt install python3-pip // 安裝 python 編譯開發系統 sudo apt install build-essential python3-dev // 安裝 uwsgi 模組 sudo pip3 install uwsgi // 安裝 nginx 伺服套件與 uwsgi python3 plugin 程式庫 sudo apt install nginx uwsgi-plugin-python3 用來伺服 cmsimde 靜態網頁的 nginx 參考設定: /etc/nginx/nginx.conf 中 user 必須設為 pj2022, 也就是 wcm2022 倉儲的擁有者 # for ub.cycu.org # /etc/nginx/nginx.conf user pj2022 server { listen 80 default_server; listen [::]:80 default_server; root /home/pj2022/github/wcm2022; index index.html; location / { # First attempt to serve request as file, then # as directory, then fall back to displaying a 404. try_files $uri $uri/ =404; } } # for /home/pj2022/github/wcm2022 server { listen 8443 ssl default_server; listen [::]:8443 ssl default_server; location / { include uwsgi_params; uwsgi_pass 127.0.0.1:9443; } ssl_certificate /etc/stunnel/cmsimde.crt; ssl_certificate_key /etc/stunnel/cmsimde.key; ssl_session_timeout 5m; ssl_protocols SSLv3 TLSv1 TLSv1.1 TLSv1.2; ssl_ciphers \"HIGH:!aNULL:!MD5 or HIGH:!aNULL:!MD5:!3DES\"; ssl_prefer_server_ciphers on; try_files $uri $uri/ =404; } cmsimde 動態網站使用 uwsgi 啟動時, wcm2022/init.py 中的 uwsgi 必須設為 True. uwsgi_ini/uwsgi.ini socket = 127.0.0.1:9443 uid = pj2022 gid = pj2022 plugins-dir = /usr/lib/uwsgi/plugins/ plugin = python3 master = true process = 4 threads = 2 chdir = /home/pj2022/github/wcm2022/cmsimde wsgi-file = /home/pj2022/github/wcm2022/cmsimde/wsgi.py 啟動 uwsgi 指令, 將會逐一啟動 wsgi_ini 目錄中個別 .ini 檔案: sudo /usr/bin/uwsgi --emperor /home/user_account/wsgi_ini 一般則利用 Ubuntu 系統服務, 用來啟動 uwsgi: /etc/systemd/system 的 cmsimde.service 服務啟動檔案內容: [Unit] Description=uWSGI to serve CMSiMDE After=network.target [Service] User=pj2022 Group=pj2022 WorkingDirectory=/home/pj2022/uwsgi_ini ExecStart=/usr/bin/uwsgi --emperor /home/pj2022/uwsgi_ini [Install] WantedBy=multi-user.target /etc/systemd/system/cmsimde.service 必須透過 sudo chmod uog+x cmsimde.service 設定讓檔案可以執行. 接著將 cmsimde 服務設為隨系統開機啟動: sudo systemctl enable cmsimde 若要取消 cmsimde 服務隨系統開機啟動: sudo systemctl disable cmsimde 手動啟動 cmsimde.service 服務 sudo systemctl start cmsimde 手動停止 cmsimde.service 服務 sudo systemctl stop cmsimde","tags":"Server","url":"./2022-WCM-hp-and-ub-server.html"},{"title":"2022 Spring 網際內容管理","text":"2022 Spring 網際內容管理. 網誌 網誌指的是利用全球資訊網紀錄特定事件始末. 許多事件發展流程有其特定的情境, 網誌通常會從筆者的視角加以觀察, 試著讓讀者了解事情是如何發生, 如何被處理, 以及如何暫時告一段落. 就以網際內容管理這一門課程來說, 其源起是因為製造與商業管理整合下, 透過全球資訊網來部署產品生命週期, 應該是一項合理的規劃. 其中牽涉機械設計、自動化工程、資訊管理與工業管理等領域知識的整合. 只不過要將產品開發過程中的電腦輔助設計流程, 以及自動化製程規劃的模擬套上全球資訊網介面, 就免不了必須先對全球資訊網前後端程式技術有通盤了解, 才能著手將 2D 與 3D 產品設計資訊逐步部署到伺服器, 由客戶端的瀏覽器進行互動擷取. 並且隨著發想中的產品逐步成形, 越靠近工業管理端的規劃時, 產、銷、人、發、財交互形成的各種作業研究, 在企業資源管理與產品生命週期管理的技術不斷演進下, 各領域人馬的網誌, 理應精彩萬分. 但快速的時間進程與各項技術版本的變化更迭, 讓許多事件來不及被用網誌詳細記錄之前, 就已經失去效用, 因此, 全球資訊網記事誌只能盡力而為, 在內容失效前就必須設法廣為散播. 將 Pelican 網誌 與 Google Blogger 內容同步整合, 應該是個可行方案. Blogger 將 Blogger 內容與 Pelican 網誌 同步的原理很簡單, 就是在編寫 Pelican 網誌 內容後, 把格式轉為 Blogger 網誌編輯所需的超文件, 然後根據 Blogger id 與權限設定, 同時發布在兩個不同的網誌系統上. 由於 Pelican 網誌 採用 Github 倉儲管理, 因此每次編輯都有提交版本, 而 Blogger 則只列出最新編輯後的內容版本. 將網誌內容透過程式方法發布到 Blogger 所依賴的是 Google 提供的 Blogger API , 目前已經到了第三版. 現在透過 AI 技術已經可以讓產品生命週期過程中的許多機器, 自行以程式方法發布網誌, 除了按照規劃時間列出各項產品開發與製造的統計資料外, 透過語意資料庫與不斷的作文練習, 寫出來的網誌已經越來越 神乎其技 . Tetris 今年 網際內容管理 課程的主題是 Tetris , 也就是一個採用 Brython 編寫的線上遊戲. 透過分組協同, 我們想要從個人電腦的硬體拆解與組裝開始, 逐一探討下列主題: 個人電腦的組成 - Understanding Personal Computer Hardware 個人電腦的操作系統 - Unix Operating System 學校提供那些數位資源? - VPN 、 校園授權軟體 、 英文電子書 、 Inventor 、 Solidworks 、 NX 、 Comsol 、 Office 365 教育版 含 5TB OneDrive 空間 硬碟磁區如何複製 - clonezilla 在硬碟上安裝 Windows 10 在 Virtualbox 上安裝 Windows 10 在 Virtualbox 上安裝 Ubuntu 22.04 在 Windows 10 上配置可攜 Python 程式系統 在 Ubuntu 22.04 上配置 Python3 程式系統 在 Windows 10 上配置 nginx 全球資訊網伺服器 在 Ubuntu 22.04 上配置 nginx 全球資訊網伺服器 在 Windows 10 上配置 wcm2022 動態與靜態伺服器 在 Ubuntu 22.04 上配置 wcm2022 動態與靜態伺服器 在 Windows 10 上配置 Fossil SCM 全球資訊網伺服器 將 Tetris 配置到上述各系統中","tags":"Misc","url":"./2022-WCM.html"}]};