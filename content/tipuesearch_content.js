var tipuesearch = {"pages": [{'title': 'About', 'text': '網際內容管理課程要求每一位學員利用  wcm2022 template  與  Github Pages  建立名稱為 wcm2022 的倉儲以及網頁. 因此需要在近端執行 Python 程式, 且需要 flask flask_cors bs4 lxml pelican markdown leo pyopenssl 等 Python 模組. \n 問題: \n 何謂  Python 模組 ? \n 下載可攜程式檔案: \n 在系上網段, 可以直接連線到  http://wcm.cycu.org:88/  下載\xa0 portable_python_wcm2022.7z  (file size: 513 MB, extracted size: 2.3 G, 這是專門為  wcm2022  課程打造的可攜程式套件, 適合選修學員下載後在任何 Windows 10 中以隨身碟啟動後操作) \n 在電腦輔助設計室中使用 USB 中的隨身程式系統, 則可以下載  drive.7z  (file size: 2.6 MB, extracted size: 10 MB, 只包含 PUTTY (目前使用 0.76 版), tcc, wscite 與 tmp 目錄, 採用 Hybrid 方式設定, 可與目前電腦輔助設計室中 SSD 硬碟所安裝的 Python 3.9.5 與  Portablegit  結合, 使用者只需自行設定啟動後的 home_ipv6 目錄與 home_ipv6/Desktop 目錄後即可以最輕薄便捷的方式將 SSH key 存入隨身碟, 並將個人與分組倉儲存入隨身碟啟動後的 tmp 目錄進行操作). \n 使用 Hybrid 方式啟動可攜程式系統時, Python/Scripts/ 目錄中的 pip.exe、leo.exe 與 pelican.exe, 必須利用  HxD  修改 Python.exe 檔案位置的絕對路徑 (是否能夠修改為啟動系統的相對路徑, 也就是直接改為 Python.exe?). \n 假如是在其他網段, 則可下載  portable_python_wcm2022.7z  (下載 513 MB, 解開壓縮後 2.3GB, under wcm2022 At mde) - 包含 Python 3.9.5, Portablegit, Scite, ShareX, Wink, GitEtensions 等工具. \n 請利用  https://www.7-zip.org  將 portable_python_wcm2022.7z 解開壓縮至 USB 3.0 以上規格的隨身碟. \n 問題: \n 可攜式 Python 程式是如何製作的? \n 可攜 Python 程式有哪些功能? \n 何謂近端? \n 使用 USB 隨身碟中的可攜程式系統後, 如何在 Github 建立個人的倉儲與網頁? \n 何謂動態網頁與靜態網頁? \n 在近端編輯完成 Github 倉儲資料後, 如何使用 token 或 SSH 方式將倉儲改版資料推送到遠端? \n cmsimde  網際內容管理系統有哪些功能? \n https://www.bosch.com/stories/bringing-open-source-to-mechanical-engineering/ \n https://github.com/boschresearch/pylife \n \n \n \n Please enable JavaScript to view the  comments powered by Disqus.', 'tags': '', 'url': 'About.html'}, {'title': 'Local and Remote', 'text': "Local 指的是近端, 也就是使用者所使用的個人電腦、平板或手機, 而 Remote 則指能夠讓近端透過各種網路協定擷取資料的伺服器電腦. \n 在網際內容管理課程中除了透過 http(s) 協定, 以瀏覽器解取 Remote 端全球資訊網伺服器中的資料外, 還透過 git 以 https、sftp 或 ssh 網路協定, 用於擷取檔案, 或將改版資料推向 Github Remote 端. \n PC to PC connection - python -m http.server, flask server, nginx server, fossil scm server, filezilla server, Ubuntu server. \n PC Hardware + Windows 10 +  License \n Python http.server - 簡單的 WWW server, 可用於電腦間的檔案攫取. \n nginx WWW server - 常用的 WWW server, 可透過設定, 讓特定 IP 可以連線. \n nginx 在課程實作上, 可以用來伺服 cmsimde 的靜態網頁, 功能如同  Github Pages . \n cmsimde 動態網頁因為需要 Python 與特定模組才能執行, 在 Windows 可以利用 Python 與  NSSM  結合配置, 而在 Ubuntu 則可以透過 Python 與  uWSGI  配置執行, 屆時 nginx 則可與  Let's Encrypt  結合, 擔任轉換 https 協定的任務. \n pgp  與  https://www.gpg4win.org/ \n https://www.gnupg.org/gph/en/manual.pdf \n 請問如何設定 nginx, 讓其中所伺服的檔案只允許系上電腦下載. \n 請問如何利用 gpg4win 查驗所下載的 nginx 檔案與官方網站所附的數位簽章吻合. \n Fossil SCM server \n Local Area Network \n Wide Are Network \n Remote Desktop \n 只允許系上 IPv6 網段擷取伺服器 port 88 的 nginx 設定: \n        server {\n        listen       [::]:88 ipv6only=off;\n        listen       88;\n        \n        #allow 140.130.XX.0/24;\n        allow 2001:288:6004:XX::0/32;\n        deny all;\n        \n        location / {\n            root C:/pj2022/nginx-1.20.2/spring2022;\n        }\n        \n        autoindex on;\n    } \n 配合 Wink 檔案將 js 檔案設定如下 \n \n \n \n  接下來將 mp4 檔案從 downloads 目錄取出  \n \n \n \n   \n \n \n \n \n \n \n \n \n 以下說明 nginx 安裝流程: \n \n  接下來將 mp4 檔案從 downloads 目錄取出  \n \n \n \n   \n \n \n \n \n \n \n \n", 'tags': '', 'url': 'Local and Remote.html'}, {'title': 'cmsimde', 'text': 'https://github.com/mdecycu/cmsimde \n 動態網頁 - localhost 與 remote site, 若在 init.py 中將 ip 設為 127.0.0.1 則在 localhost 啟動, 若設為外部 IP 則可以從 internet 中任何一台電腦的瀏覽器連接. \n 靜態網頁 - 在動態網頁系統登入後, 可以利用 generate_pages 按鈕將動態網頁轉進 content 目錄, 並結合 cmsimde/static, downloads、images、blog、reveal 等目錄, 可在全球資訊網伺服器 (如 Github Pages、nginx 或 Fossil SCM server 中以純 html、javascript 及 css 檔案進行伺服. \n Leo Editor - cmsimde 中的 Pelican blog 與 Reveal.js 專案檔位於 config/pelican.leo 與 reveal.leo, 可以利用 Leo Editor 編輯. \n reveal.js - 位於 config/reveal.leo \n Pelican blog - 位於 config/pelican.leo, 可以透過 Python 程式讓 Pelican blog 內容與 blogger 同步, 其中需要執行 Google API (Oauth2) 延伸程式. \n https://www.blogger.com \n', 'tags': '', 'url': 'cmsimde.html'}, {'title': 'Token and SSH', 'text': 'Remote Desktop - Windows, Ubuntu, Mac \n Token: \n https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token \n Github token 是一串可以用來替代 Github 帳號與密碼功能的字串, 可在登入 Github 帳號後, 至  https://github.com/settings/tokens  設定. 每一個 token 都具備有效時間與權限範圍, 一般初學者可以只勾選 Token 的 repo 改版權限, 並選擇 30 天的有效時間. 之後再設法改用 SSH 對 Github 倉儲改版. \n 以下影片說明如何使用 Personal Access Token 執行 git push: \n \n \n \n  接下來將 mp4 檔案從 downloads 目錄取出  \n \n \n \n   \n \n \n \n \n \n \n \n \n SSH: \n https://docs.github.com/en/authentication/connecting-to-github-with-ssh \n Windows 10 環境中的 SSH 可以透過  https://www.putty.org/  執行設定. \n puttygen.exe 可用來建立 OpenSSL 格式的數位簽章, public key 送到使用者 Github 帳號下 settings 中的 SSH and GPG keys 區, 在隨身碟中則存放與 public key 成對的 Putty 格式 private key. \n 使用者在 Windows 10 使用 git + putty 時, 必須在啟動隨身系統時設定 GIT_SSH 變數 ( Git 環境變數 ) 至 putty 中的 plink.exe, 之後再利用 putty 設定連至 github.com 用的 session, 且在純 IPv6 環境中, 連至 github.com 的 session 除了必須指向隨身碟中的 private key 外, 還需要設定能同時支援 IPv6 與 IPv4 的 proxy server. \n 使用者希望透過 SSH 對 github 中的倉儲改版時, 必須使用  git@session_name:github_account/repository.git  連線. \n 有關 GIT_SSH 變數： \n GIT_SSH, if specified, is a program that is invoked instead of ssh when Git tries to connect to an SSH host. It is invoked like $GIT_SSH [username@]host [-p <port>] <command>. Note that this isn’t the easiest way to customize how ssh is invoked; it won’t support extra command-line parameters, so you’d have to write a wrapper script and set GIT_SSH to point to it. It’s probably easier just to use the ~/.ssh/config file for that. \n 以下影片說明如何在 Windows IPv6 環境下, 利用 PUTTY 以 SSH 協定執行 git push: \n \n \n \n \n \n \n   \n \n \n \n \n \n \n \n \n', 'tags': '', 'url': 'Token and SSH.html'}, {'title': 'Mac and RDT', 'text': '在 Mac Air 使用  Remote DeskTop  (RDT) 連接到遠端的 Windows 10 電腦, 啟動 Wink 後, 可以在 Preferences 中, 利用  Mac Air 鍵盤中的 fn + F1 鍵取代 Pause , 就可以在 Wink 專案中以 fn + F1 取得當下的電腦操作畫面. \n 在台灣的機械工程專業使用者, 若要使用 Mac 電腦, 經常會碰到許多瓶頸, 主要原因是一般大學或研究所以上的課程, 似乎都以 Windows 操作系統為主, 因此造成機械工程師無法在 Mac 電腦上進行產品開發設計的錯誤印象. \n 從 學習程式 這個頁面, 可以得知目前流程的操作系統主要分為 Unix 與 Windows 兩大支, MacOS 源自 Unix 中的  BSD , 而 Windows 操作系統在 2004 版本 (2020.04 釋出) 之後, 已經能夠 安裝   WSL  (Windows Subsystem for Linux), 以獨特的 Microsoft 架構使用許多 Linux 操作系統具備的指令與套件. \n Windows 納入 WSL 之後, 讓原先在 Windows, Unix-based (包含 Linux) 與 MacOS 等不同操作系統的差異越來越小, 再加上部分機械工程相關的套件已經全雲端化 (例如:  Onshape ), 機械工程師只要選擇合用的套件與工具, 無論使用何種電腦或手機, 身處哪一種操作系統, 都能夠完成相同的產品開發或維護任務. \n', 'tags': '', 'url': 'Mac and RDT.html'}, {'title': 'Wink', 'text': '這裡所指的 Wink 為 3.0 版, 來自  https://www.debugmode.com/wink/  是一套免費 (Freeware) 的電腦操作流程影片錄製軟體, 與  ShareX  相同的是, 兩套軟體的影片製作核心都是採用  ffmpeg.exe . 不同的地方在於:  Wink 3.0  沒有開源, 可能是採用 C++ 編寫 (因為除了 Windows 版本, 還有 Linux, 但卻沒有 Mac), 且  Wink 3.0  可以在主影格 (Key frame) 中加入文字說明, 以及 html 按鈕. 比較適合用來製作需要較多文字說明輔助的教學影片. 至於  ShareX  是一套採用 C# 編寫的開源套件, 適合製作加上搭配語音或說明字幕的操作教學影片. \n 由作者提供的  Wink 3.0  使用教學影片可以參考  https://mde.tw/cmstemplate/content/Wink.html \n 以下影片說明如何將  Wink 3.0  製作的 mp4 教學影片嵌入 cmsimde 動態與靜態網頁, 而且能在手機上觀看: \n \n \n \n  接下來將 mp4 檔案從 downloads 目錄取出  \n \n \n \n   \n \n \n \n \n \n \n \n', 'tags': '', 'url': 'Wink.html'}, {'title': 'Nginx', 'text': 'https://nginx.org/  可以在 Windows 與 Ubuntu 中安裝. \n Nginx 設定為 WWW 網際下載主機: \n nginx.conf \n server {\n    # 原先可以接受 IPv4 網路連線, 目前覆蓋為 comment\n    #listen       80;\n    # 設定接受 IPv6 網路連線\n    listen [::]:80;\n    # 原先採 localhost 伺服器連線, 目前覆蓋為註解\n    #server_name  localhost;\n    # 只允許系上 IPv6 網路連線\n    allow 2001:288:6004:17::0/32;\n    # 除系上網段外, 其餘網段均拒絕連線\n    deny all;\n    \n    location / {\n        # 網際根目錄\n        root E:/downloads;\n        # 利用帳號密碼認證後才可連線\n        auth_basic "For Authorized Users Only!";\n        auth_basic_user_file C:/pj2022/nginx-1.20.2/.htpasswd; \n    }\n    # 設定為列出各檔案與目錄的索引內容\n    autoindex on;\n} \n .htpasswd 利用  Apache  中的 htpasswd.exe 建立. \n htpasswd -c c:/location_of_password_file/.htpasswd username \n 上述指令在命令列視窗中執行後, 需要輸入兩次與 username 對應的驗證密碼. \n', 'tags': '', 'url': 'Nginx.html'}, {'title': 'Topics', 'text': 'IPv6 網路設定: \n w1 說明如何在電腦輔助設計室中設定 IPv6 網路連線, 主要步驟是關閉操作系統自動偵測 Proxy, 改為手動設定後, 取消 IPv4 網路協定. 而這三個動作可以透過開機後, 在防毒軟體正式啟動前, 利用  cadlab_network_setup.zip  中的批次檔案採管理員身分執行後, 即可以程式方式完成設定. \n 相關教學影片如下: \n \n 建立個人 Github 帳號下的 wcm2022 倉儲與網頁: \n 完成電腦輔助設計室 IPv6 網路設定後, 網際內容管理課程要求每位學員都必須建立 Github 帳號, 並自行利用 submodule 方式建立 cmsimde 動態與靜態網頁, 相關教學影片如下: \n \n 在建立個人的 Github Pages 過程, 使用者必須在近端電腦使用 CPython 解譯器 ( 各版本 ftp 下載 ) 與  PortableGit  工具. 網路內容管理課程採用自行建立的可攜式程式系統, 可以將全部的系統放在隨身碟或者採 Hybrid 設定方式, 只將個人倉儲與 SSH 等資料放入隨身碟, 其餘 CPython 與 Portablegit 可透過設定, 使用 SSD 中的資料. \n 以下將介紹如何建立可攜式程式系統: \n 此一設定將牽涉批次檔案, subst 指令與系統環境變數設定. \n \n \n w3 1a 分組結果', 'tags': '', 'url': 'Topics.html'}, {'title': 'OneDrive', 'text': '自 2022.07 起 @gm 帳號的儲存空間只限 3GB, 為共享更大容量 (5TB) 的儲存空間, 請各學員至  https://www.microsoft.com/zh-tw/education/products/office , 以 @gm 帳號申請 OneDrive 儲存權限. \n', 'tags': '', 'url': 'OneDrive.html'}, {'title': 'Webpage', 'text': 'IPv6 setup \n 建立 github 帳號 \n 建立 wcm2022 倉儲 - 利用  https://github.com/wcm2022/wcm2022  倉儲作為樣板, 連結後點擊 Use this template, 以便建立自己的 wcm2022 倉儲. \n 利用 C:\\2021_cadlab_portable 啟動系統 \n git clone --recurse-submodules https://github.com/mdecycu/wcm2022.git \n 使用 git 指令需要三個 git config 設定: \n \n git config --global user.name "使用者 github 帳號" \n git config --global user.email "使用者登記在 github 的 email" \n git config --global http.proxy  http://[2001:288:6004:17::42]:3128 \n \n git config 設定後會在 y:\\home_ipv6 存為 .gitconfig \n git config 代表要針對 git 進行設定, 其中包含提交身分與代理主機 \n git config --global 代表設定要存入 y:\\home_ipv6 目錄, 假如不使用 --global 表示只有在目前這個命令列執行階段有效, 沒有使用 --global 所下的設定內容, 不會存入 y:\\home_ipv6 目錄. \n 一旦完成 git clone --recurse-submodules https://github.com/mdecycu/wcm2022.git 命令的執行, 遠端倉儲會被 clone 一份當下的內容到近端的 wcm2022 目錄. \n 接下來要進入 wcm2022 倉儲目錄啟動編輯系統, 對倉儲內容進行修改. \n cd wcm2022 表示要 change directory 到 wcm2022 \n cd .. 表示要更換目錄回到上一個目錄 \n cd tmp 表示要更換目錄到 tmp 目錄 \n cls 表示 clear screen 清除畫面 \n dir 表示要顯示 directory 目錄的內容 \n 任何網路工具都有 client 與 server 的身分差別 \n browser (瀏覽器) 是 http (hypertext transfer protocol) 超文件傳輸協定的 client \n http 的 server 為 www 伺服器 \n git 為 github 全球資訊網的 client \n github 可視為 git 協定的伺服器 (以 ruby 寫的 www 伺服器, 但具備解析 git 倉儲內容的伺服器) \n', 'tags': '', 'url': 'Webpage.html'}, {'title': 'cms', 'text': '在 wcm2022 倉儲目錄中, 可以執行  cms.bat , 表示要利用 python 進入 cmsimde 目錄執行 wsgi.py \n cms.bat 的內容:  https://raw.githubusercontent.com/wcm2022/wcm2022/main/cms.bat \n url = uniform resource locator \n https://zh.wikipedia.org/wiki/统一资源定位符 \n run.txt \n \n \n \n', 'tags': '', 'url': 'cms.html'}, {'title': 'PME', 'text': 'Department of Precision Mechanical Engineering \n HW1: \n 請設法比較以下三個檔案的差異,  w4_hw1.zip \n 可以使用  http://kdiff3.sourceforge.net/  工具對三個檔案進行比較. \n 若使用程式方法讀進三個檔案後, 逐行比較內容. \n w4_diff_note.txt \n \n \n \n \n \n \n   \n \n \n \n \n \n \n \n \n', 'tags': '', 'url': 'PME.html'}, {'title': 'Brython', 'text': 'brython.txt \n 讀出 w4_1.txt  資料內容 \n w4_1.txt \n w4_2.txt \n w4_3.txt \n \n \n \n \n  for ggame  \n \n \n \n \n \n \n \n \n  Cango 程式庫  \n \n \n \n \n \n \n \n \n  for Konva 程式庫  \n \n \n \n \n  導入 FileSaver 與 filereader  \n \n \n \n \n  導入 ace  \n \n \n \n \n \n \n  請注意, 這裡使用 Javascript 將 localStorage["py_src"] 中存在近端瀏覽器的程式碼, 由使用者決定存檔名稱 \n \n \n \n  #####  editor1 開始 #####  \n  用來顯示程式碼的 editor 區域  \n \n  以下的表單與按鈕與前面的 Javascript doSave 函式以及 FileSaver.min.js 互相配合  \n  存擋表單開始  \n Filename:  .py   \n  存擋表單結束  \n \n  執行與清除按鈕開始  \n Run   Output   清除輸出區 清除繪圖區 Reload \n  執行與清除按鈕結束  \n \n  程式執行 ouput 區  \n \n  Brython 程式執行的結果, 都以 brython_div 作為切入位置  \n  這裡的畫布 id 為 brython_div  \n \n  graphics-column is for ggame  \n \n  #####  editor1 結束 #####  \n  以下可以開始利用 editor1 的設定編寫對應 Brython 程式  \n \n \n  印出程式2 \n \n \n \n  用來顯示程式碼的 editor 區域  \n \n  以下的表單與按鈕與前面的 Javascript doSave 函式以及 FileSaver.min.js 互相配合  \n Filename:  .py   \n Run   Output   清除輸出區 清除繪圖區 Reload \n \n \n   結束列印程式 2  \n  印出程式3 \n \n \n \n  用來顯示程式碼的 editor 區域  \n \n  以下的表單與按鈕與前面的 Javascript doSave 函式以及 FileSaver.min.js 互相配合  \n Filename:  .py   \n Run   Output   清除輸出區 清除繪圖區 Reload \n \n \n   結束列印程式 3  \n', 'tags': '', 'url': 'Brython.html'}, {'title': 'Wifi', 'text': '電腦輔助設計室中的  Wifi Gigabit 路由器(分享器) 設定(2022/03/13  同一價位機種 ), 原先採 WAN 接到 NAT 的 output 集線器, 必須經過兩次路由才能連外, 且無法啟動 IPv6 網路連線. \n 經將 WAN 直接連到系主幹後, 將 IPv6 以 Passthrough 設定後, 可讓手機或筆電經由 810WIFI 連線後取得雙協定支援網路. \n 筆電透過 810WIFI 連線後 IPv4 部分為內部網路 192.168.50.X, 而 IPv6 部分則擁有兩個由學校配發的 IPv6 網路位址, 可用來設定  Remote Desktop 、WWW 或 Fossil SCM 伺服器. \n 以下說明影片就是在將 Wifi router 設為 IPv6/IPv4 雙網路協定後的使用流程: \n \n \n \n \n \n \n   \n \n \n \n \n \n \n \n \n 將畫面中的 master 分支內容合併至內建 main 分支後,  可以使用  git delete 刪除近端倉儲的 master 分支, 並用 git push --delete 刪除遠端倉儲分支: \n Y:\\mdecycu\\wcm2022_guide>git branch -d master\nDeleted branch master (was 5c2b8db).\n\nY:\\mdecycu\\wcm2022_guide>git branch\n* main\n\nY:\\mdecycu\\wcm2022_guide>git push --delete origin master\nTo mdecycu:mdecycu/wcm2022_guide.git\n - [deleted]         master \n git branch -d master 指令是用來刪除近端倉儲的 master 分支. \n git branch 則可用來查驗目前工作目錄(working directory)所在分支. \n git push --delete origin master 則是透過 git push 刪除遠端(url 名稱存為 origin)倉儲中的 master 分支. \n \n \n', 'tags': '', 'url': 'Wifi.html'}, {'title': 'WCMS', 'text': '所謂的全球資訊網內容管理系統 (Web Content Management System, WCMS), 指的就是: \n https://en.wikipedia.org/wiki/Web_content_management_system \n 上列網頁說明: A web content management system (WCM or WCMS) is a software content management system ( CMS ) specifically for  web content . \n 表示採用全球資訊網協定的內容管理系統才稱為 WCMS. 有些內容管理系統 ( CMS ) 並不是在全球資訊網架構下進行存取. \n 常見的  CMS  系統:  https://en.wikipedia.org/wiki/List_of_content_management_systems \n Blog 不僅是一種 CMS, 且是 Weblog 的簡稱, 中文稱為網誌. 以下要介紹的是  Blogger . 除了要求每位學員要利用 @gm 帳號建立個人的  Blogger  網誌外, 還要說明如何透過  https://developers.google.com/blogger , 利用 Python 程式建立或修改  Blogger  網誌中的文章. \n 利用  cmsimde  網際內容管理套件所建立的倉儲與網站, 除了三層表單式的網頁外, 還自帶  Pelican 網誌  (例如:\xa0 https://mde.tw/lab/blog/ ) 與  Reveal.js  簡報系統 (例如:  https://mde.tw/wcm2022/reveal/ ). \n 以下將分別介紹如何使用: \n \n @gm 帳號建立個人 Blogger 網誌 \n cmsimde  中的 Pelican 建立網誌 \n cmsimde  中的 Reveal.js 建立全球資訊網上的簡報系統 \n Python 程式同步 Blogger 與 Pelican 網誌上的文章 \n \n 其中將牽涉到  Leo Editor  與  https://cloud.google.com/apis  的應用. \n 建立個人 Blogger 的操作步驟如下: \n \n 登入個人的 @gm 帳號 \n 連結到  https://www.blogger.com , 以上列 @gm 帳號登入 \n 利用 "Create Your Blog" 按鈕建立網誌 \n 參考  Beginning Google Blogger  電子書以及  Blogger 章節 內容設定個人 Blogger 網誌 \n \n Leo Editor 基本操作: \n https://mde.tw/leoeditor \xa0 \n http://mde.tw/cp2019/blog/2019-Fall-Leo-Editor.html \n 利用 Python 修改 Blogger 文章: \n Pelican 與 Blogger 網誌內容同步: \n', 'tags': '', 'url': 'WCMS.html'}, {'title': 'Code', 'text': 'https://code.visualstudio.com/ \n 學習使用 Visual Studio Code 寫程式 \n From File > Preferences > Settings (macOS: Code > Preferences > Settings), search for telemetry, and set the Telemetry: Telemetry Level setting to off. This will silence all telemetry events from VS Code going forward. \n Live Share Extension Pack \n 學習使用 Live Share \n IntelliSense \n Web-based:  https://vscode.dev/ \n 電子書: \n Visual Studio Code Distilled  (2021) \n Optimizing Visual Studio Code for Python Development  (2021) \n PowerShell for Beginner s (2021) \n 專案: \n https://github.com/boltex/leojs \n Essential TypeScript 4  (2021) \n \n \n \n', 'tags': '', 'url': 'Code.html'}, {'title': 'Server', 'text': '若我們讀一下\xa0 CONCEPTION OF A DIGITAL TWIN IN MECHANICAL ENGINEERING – A CASE STUDY IN TECHNICAL PRODUCT DEVELOPMENT  這篇文章. 應該不難體會傳統的機械工程領域應該要置入大量的 IT 科技, 朝向能應用於整個產品生命週期的 Digital Twin 架構邁進. \n Digital Twin is defined as "a virtual dynamic representation of a physical system, which is connected to it over the entire life cycle for bidirectional data exchange." ( Trauer et al., 2020 ) \n The term of a Digital Twin is part of a broader context and is located at the intersection of the three research areas virtual product development, cyber-physical systems and product lifecycle management. ( Grieves and Vickers, 2017 ). \n \n 針對能夠應用於網際內容管理課程使用的  HPE_ProLiant_ML_10_v2_Server.pdf  伺服器, 除了解電腦硬體規格與配置外, 還需在實體操作系統與虛擬操作系統中安裝設定網際內容管理系統, 包括 cmsimde 動態與靜態網站, 以及 Fossil SCM server. \n IT 技術: \n 操作系統:  Windows 10 21H2  +  WSL ,  Ubuntu 22.04 \n MSYS2:  https://www.msys2.org/ \n CMake:  https://cmake.org/ \n Putty:  https://www.putty.org/ \n Git:  https://git-scm.com/download/win \n WWW server:  nginx.org \n Proxy:  https://www.stunnel.org/ \n NSSM:  https://nssm.cc/ \n Fossil SCM:  https://www2.fossil-scm.org \n Flask:  https://flask.palletsprojects.com/en/2.1.x/ \n Python:  https://www.python.org/ \n uwsgi:  https://uwsgi-docs.readthedocs.io/en/latest/ \n Oauth2:  https://oauth.net/2/ \n Google API:  https://cloud.google.com/apis/docs/overview \n fossilapp:  https://github.com/mdecycu/fossilapp \n fossiloauth:  https://github.com/mdecycu/fossiloauth \n Heroku:  https://www.heroku.com/ \n CAX: \n NX: NX12、NX1980、NX2008 - NXOpen Python API\xa0 \n Solvespace:  https://solvespace.com \n CoppeliaSim:  https://coppeliarobotics.com/ \n Webots:  https://cyberbotics.com/ \n Range3:  https://github.com/Range-Software/range3 \n NGSolve:  https://ngsolve.org/ \n \n \n \n', 'tags': '', 'url': 'Server.html'}, {'title': 'Win10', 'text': '變更 vdi 虛擬主機檔案的 uuid: \n C:\\Users\\admin\\Downloads>"C:\\Program Files\\Oracle\\VirtualBox\\VBoxManage.exe" internalcommands sethduuid wcm_w7.vdi \n 在 HP Proliant ML 10 伺服器上安裝 Virtualbox 與 Windows 10 過程影片: \n Wink 影片嵌入 cmsimde 超文件檔案:  w7_hp_virtualbox_win.txt \n Wink 影片嵌入 blog 超文件檔案:  embed_wink_into_blog.txt \n \xa0以下影片說明如何利用電腦輔助設計室中的電腦, 安裝 Windows 10 虛擬主機: \n \n  接下來將 mp4 檔案從 downloads 目錄取出  \n \n \n \n   \n \n \n \n \n \n \n \n \n 以下影片則說明如何在 HP 伺服器中安裝 Windows 10: \n 配合 Wink 檔案將 js 檔案設定如下 \n \n \n \n  接下來將 mp4 檔案從 downloads 目錄取出  \n \n \n \n   \n \n \n \n \n \n \n \n', 'tags': '', 'url': 'Win10.html'}, {'title': 'IPv6 setup', 'text': '利用  Wink  建立電腦操作流程影片時, 必須注意: \n \n 可以與 ShareX 共用  ffmpeg.exe . \n 為了讓影片能在手機觀看, video 標註中必須帶有 autoplay 與 controls 屬性. \n video 標註的大小必須與  Wink  專案檔中的設定相符, 合適的尺寸大小: width="1008" height="630". \n 以下  Wink  影片設定超文件檔案:  wink_script_and_setup.txt \n \n 配合 Wink 檔案將 js 檔案設定如下 \n \n \n \n  接下來將 mp4 檔案從 downloads 目錄取出  \n \n \n \n   \n \n \n \n \n \n \n \n \n', 'tags': '', 'url': 'IPv6 setup.html'}, {'title': 'Heroku', 'text': '在近端 IPv6 網段, 可以從 這裡 查詢與 Heroku 有關的資料. \n Heroku 是一個雲端應用程式服務, 可以用來伺服靜態網頁, 也可以用來執行 Python + Flask 編寫的動態網頁. 在 Heroku 免費帳號下, 若希望執行 cmsimde 動態網頁, 必須將 config/content.htm 轉為 Postgresql 資料庫儲存. \n 假如近端使用 IPv6 上網, 則更新 Heroku cli 之前, 必須先設定雙網路支援的 Proxy Server: \n set HTTP_PROXY=http://kmolab:kmolab10@[2001:288:6004:xx::xx]:3128\nset HTTPS_PROXY=http://kmolab:kmolab10@[2001:288:6004:xx::xx]:3128\n\nc:\\heroku\\bin\\heroku update \n', 'tags': '', 'url': 'Heroku.html'}, {'title': 'Midterm', 'text': '五專倉儲與網頁連結 \n 期中課程內容整理 \n https://mde.tw/wcm2022_guide/blog/wcm2022-w7-review.html \n 網路設定: \n 開機後關閉自動 Proxy 設定, 改為手動且關閉 IPv4 網路協定. 這三個動作可以透過開機後, 在防毒軟體正式啟動前, 利用  cadlab_network_setup.zip  中的批次檔案採管理員身分執行後, 即可以程式方式完成設定. \n 建立可攜系統: \n 在電腦輔助設計室可以直接下載  portable_python_wcm2022.7z , 若是採用 810WIFI 連網, 則可透過 ::4 代理主機上網 (需要連線密碼) 後下載. 若需要更完整可以編輯連結 C/C++ 程式的可攜系統 (例如: 利用 NX12, NX1980 或 NX2008 等系統的  UG Open C  ( 架構 ) 編寫延伸程式時), 則可下載  compile_copsim_cd2022.7z . \n 網頁配置與部署: \n 動態網頁與靜態網頁:  cmsimde  網際內容管理系統的動態網頁採用  Flask  編寫, 需要 Python 與 特定模組 才可執行 (例如: 近端可攜系統、遠端伺服器與  Heroku ), 而靜態網頁則只包含 html、css 與 Javascript, 可以利用  Github Pages  或  Nginx  執行伺服. \n 網際多媒體內容建置: \n 任何 Windows 環境中的操作過程, 可以透過 Wink 拍攝操作影片, 並嵌入網頁 (包括  cmsimde 、blog 與簡報)中. \n Github 上的個人與分組倉儲: \n 建立個人或分組倉儲可以利用  https://github.com/wcm2022/wcm2022  作為 template. \n 倉儲改版協定: \n 將倉儲改版後, 可以利用  token 或 ssh 方式進行提交 . \n 協同產品設計: \n 以上利用各種開源套件建立網頁的目的, 是讓機械工程相關人員可以利用電腦與網路進行協同產品設計. \n 協同產品設計流程中包括編寫網頁前端與伺服器後端的程式, 與各種 CAD/CAE/CAM 系統進行互動, 終極目標是能將所設計的產品在虛實整合中, 以最佳化效能完成  digital twin  系統, 讓產品生命週期過程中的各方人士都能取得最大利益. \n 其他學習主題: \n 能不能將計算機程式所開發的程式, 透過分組協同方式多人合作下, 將持續改進的程式部署在個人與分組網頁, 部署在 Pelican 與 Blogger 網誌, 部署在 Reveal.js 簡報系統上? \n 會不會運用實體 Windows 10、虛擬 Windows 10、實體 Ubuntu 22.04、虛擬 Ubuntu 22.04、 Github、Gitlab、Bitbucket 以及 Heroku, 配置部署上述個人或分組協同所完成的網際內容 (網頁與前後端整合程式)? \n 期中考週之後的主題: \n 配置 Brython 環境 設定 Pelican 網誌 Blogger 網誌同步 計算機概論 電腦硬體拆解 建立 Virtualbox 虛擬主機 Fossil SCM server Tetris on Brython', 'tags': '', 'url': 'Midterm.html'}, {'title': '四技任務', 'text': '請利用期中考週的課程時段 (09:10 - 11:00), 在  w8_project.wnk  專案的頁面內容引導下, 加入各頁面的說明字串, 完成後請將 Wink 影片放入個人網頁 (頁面標題為 H1 midterm) 與個人 Pelican 網誌中 (Slug 設為 midterm).', 'tags': '', 'url': '四技任務.html'}, {'title': '五專任務', 'text': '請自行利用 @gm Google email 帳號登記  Blogger  網誌系統 (請以個人的 Github 帳號登錄個人網誌 domain, 例如:  https://github_帳號.blogspot.com ) \n 並在個人 Blogger 中分別以計算機概論與網際內容管理課程內容摘要與心得, 建立至少兩篇網誌文章.', 'tags': '', 'url': '五專任務.html'}, {'title': '配置 Brython', 'text': '在動態網頁中配置 Brython: \n 導入 Brython 程式庫: \n <script src="./../cmsimde/static/brython.js"></script>\n<script src="./../cmsimde/static/brython_stdlib.js"></script> \n 啟動 Brython: \n <script>\nwindow.onload=function(){\nbrython({debug:1, pythonpath:[\'./../cmsimde/static/\',\'./../downloads/py/\']});\n}\n</script> \n 其中的 pythonpath 可以將 Python 模組放入後, 以 import 引用. \n 完成上述 Brython 程式庫導入與啟動後, 就可以利用: \n <script type="text/python3">\nprint("Brython 程式")\n</script> \n 在 Brython 程式中的 print() 將會列印至 Web Developer Tools 中的 console 頁面. \n 假如希望列印資料直接呈現在頁面, 則可以利用 Brython 中的 html 與 document 模組完成: \n <script src="./../cmsimde/static/brython.js"></script>\n<script src="./../cmsimde/static/brython_stdlib.js"></script>\n<script>// <![CDATA[\nwindow.onload=function(){\nbrython({debug:1, pythonpath:[\'./../cmsimde/static/\',\'./../downloads/py/\']});\n}\n// ]]></script>\n<div id="print"></div>\n<script type="text/python3">\nfrom browser import html, document\nprint = document["print"]\nprint <= "直接將資料列在頁面"\n</script> \n \n \n \n \n \n', 'tags': '', 'url': '配置 Brython.html'}, {'title': '設定 Pelican 網誌', 'text': 'Pelican  網誌系統採 Python 編寫, 可以讓使用者以 Markdown 格式編寫網誌文章後, 經由 Python 程式轉為網誌超文件內容. 由於一般的網誌系統採用日期排序外, 還提供關鍵字搜尋、分類與索引的功能, 因此 Pelican 的功能就是從每一篇文章中取出中文字索引資料後, 存為 Javascript 與 Json 格式檔案, 以供關鍵字搜尋之用. 詳細流程可以參考: \n https://www.snaums.de/informatik/tipue-search-engine.html   \n 從  https://docs.getpelican.com/en/latest/  Pelican 文件中可以進一步了解 Pelican Blog 的運作方式. \n 在網際內容管理課程中, 採用 Leo Editor 專案來管理 Pelican Blog 的設定檔案、Markdown 與 Cli 執行. 其目的有: \n \n 可以更有效管理 Pelican Blog 相關內容 \n 可以讓每一位餐與協同的人員各自維護一個 Leo Editor 專案檔, 只導入與自己有關的設定、延伸程式以及網誌文章 \n 可以利用 Leo Editor 節點指令, 製作網誌文章轉檔程式, 利用 Google Blogger API, 將  Pelican 網誌同步至 Blogger \n \n', 'tags': '', 'url': '設定 Pelican 網誌.html'}, {'title': '計算機概論', 'text': '電機系的計算機概論課程  ( 講義 ) \n 課程概述 \n 這是專門設計給電機系一年級同學修習的計算機概論課程, 其目的在教授計算機科學的基礎技術及知識. 同時亦著重C/C++相關程式設計的技巧. 最終希望讓同學有足夠的能力修習進階計算機相關課程, 以及利用計算機來解決日後研究議題. \n 課程內容包括: \n \n 資料類: 資料儲存、資料結構、資料庫 \n 系統類: 計算機結構，作業系統，網路 \n 科學類: 演算法, 程式語言, 人工智慧 \n \n 課程目標 \n 使同學對計算機科學中的術語、法則、理論、應用及技術有基本的了解. \n 機械系的計算機概論 \n 本課程內容包含三大部份: 電腦入門實務, C++程式語言, 以及Matlab 程式語言, 以作為專業機械課程之基礎工具. \n 目標: 建立機械系同學基礎程式撰寫能力, 並訓練使用基本工具軟體的能力, 以為未來應用到專業機械領域課程所需. \n 課程教育目標: \n \n 教育學生瞭解數學、科學及工程的原理, 並以系統化的方法解決機械工程的問題 \n 培育具領導力、創造力及國際觀之機械工程人才 \n \n 資工系的計算機概論 \n 有關上列提到的 Matlab: \n Using Matlab and Python Together \n Exploring Python as Matlab alternative \n numpy for Matlab users \n Python for Matlab Users  (2012) \n MatLab vs. Python vs. R  (2017) \n After reviewing all three of the programs in depth, we have reached the conclusion that Python is the best language to be taught in a classroom environment.\xa0 This is because it is easy to use and will allow students access to open source coding that can be found online when performing more difficult analysis. \n Migrating MATLAB to Python  (2022) \n \n', 'tags': '', 'url': '計算機概論.html'}, {'title': '電腦硬體拆解', 'text': 'HPE ProLiant ML350p Gen8  ( user guide ) (2014 ~ ) \n HPE Proliant ML10 v2 server  (2015 ~ ) \n Asus Skylake MD790/I7-6700  (服役期間: 2016-2021) \n Intel E5200 CPU computer  (服役期間: 2010-2016) \n 機械設計系網路配置圖 \n command line get BIOS date: \n Windows: systeminfo \n Ubuntu: \n sudo dmidecode -s bios-release-date \n sudo dmidecode -s system-product-name \n Run remote desktop client \n Y:\\>REM https://docs.microsoft.com/zh-tw/windows-server/administration/windows-commands/mstsc\n\nY:\\>C:\\Windows\\system32\\mstsc.exe /v:2001:288:6004:XX:XXXX::XX \n', 'tags': '', 'url': '電腦硬體拆解.html'}, {'title': '建立 Virtualbox 虛擬主機', 'text': 'https://www.virtualbox.org/ \n 修改 vdi UUID: \n C:\\Users\\admin\\Downloads>"C:\\Program Files\\Oracle\\VirtualBox\\VBoxManage.exe" internalcommands sethduuid wcm_w7.vdi \n 建立 Win10 虛擬主機 \n 建立 Ubuntu 虛擬主機 \n wcm_w7_vdi.7z \n wcm_w8.7z', 'tags': '', 'url': '建立 Virtualbox 虛擬主機.html'}, {'title': 'Fossil SCM server', 'text': 'https://mde.tw/pj5073  ', 'tags': '', 'url': 'Fossil SCM server.html'}, {'title': 'Tetris on Brython', 'text': 'Tetris on Brython', 'tags': '', 'url': 'Tetris on Brython.html'}, {'title': 'Digital Thread', 'text': 'Digital Twin (數位雙生) 與 Digital Thread (數位緒) \n https://www.ptc.com/en/blogs/corporate/what-is-a-digital-thread \n The Digital Thread - Key to F-35 Joint Strike Fighter Affordability \n Engineering Design with Digital Thread  (From mit.edu) \n What Are Digital Twins and Digital Threads? \n https://blog.samtec.com/post/the-digital-thread/ \n https://www.3dcadworld.com/3d-cad-promotes-functioning-digital-thread/ \n https://www.gray.com/insights/what-the-digital-thread-means-for-the-future-of-design-and-manufacturing/ \n https://www.capvidia.com/blog/best-step-file-to-use-ap203-vs-ap214-vs-ap242 \n', 'tags': '', 'url': 'Digital Thread.html'}, {'title': 'RDT', 'text': 'Remote DeskTop \n 以下批次檔案指令可以透過 Windows 遠端桌面 client 連接至遠端指定電腦: \n REM https://docs.microsoft.com/zh-tw/windows-server/administration/windows-commands/mstsc\n%windir%\\system32\\mstsc.exe /v:2001:288:6004:XX:XXXX::XX \n \n', 'tags': '', 'url': 'RDT.html'}, {'title': 'Portable Python', 'text': '何謂可攜式 Python 程式環境? \n Python 程式是如何執行的? \n 首先 Python 是一種解譯式 (Interpreted) 程式語言, 與 C 或 C++ 程式語言最大的差別是, C/C++ 程式碼通常必須透過編譯 (Compile) 與連結 (Link) 的過程, 將原始碼轉為可執行的格式 (在 Windows 操作系統為 .exe 檔案), 而 Python 程式寫好後, 可以直接利用解譯器執行, 使用者不需要手動執行程式碼的編譯, 而是由解譯器在執行前即時將程式碼轉換為可執行檔案. \n 在  geeksforgeeks 網站 , 以下列敘述說明 Python 程式如何執行: \n Python is an object-oriented programming language like Java. Python is called an interpreted language. Python uses code modules that are interchangeable instead of a single long list of instructions that was standard for functional programming languages. The standard implementation of python is called "cpython". It is the default and widely used implementation of Python. \n Python doesn’t convert its code into machine code, something that hardware can understand. It actually converts it into something called byte code. So within python, compilation happens, but it’s just not into a machine language. It is into byte code (.pyc or .pyo) and this byte code can’t be understood by the CPU. So we need an interpreter called the python virtual machine to execute the byte codes \n 針對 Python 程式的"編譯"過程, 則 說明如下 : \n The Python program is converted into byte code. Byte code is a fixed set of instructions that represent arithmetic, comparison, memory operations, etc. It can run on any operating system and hardware. The byte code instructions are created in the .pyc file. The .pyc file is not explicitly created as Python handles it internally but it can be viewed with the following command: \n Y:\\tmp\\python_ex>python -m py_compile hello.py \n -m and py_compile represent module and module name respectively. This module is responsible to generate .pyc file. The compiler creates a directory named \xa0__pycache__ where it stores the hello.cpython-39.pyc file (若採用 Python 3.9 版次的編譯器). \n 至於針對 Python 程式的"解譯"執行過程, 則 說明如下 : \n The next step involves converting the byte code (.pyc file) into machine code. This step is necessary as the computer can understand only machine code (binary code). Python Virtual Machine (PVM) first understands the operating system and processor in the computer and then converts it into machine code. Further, these machine code instructions are executed by processor and the results are displayed. \n However, the interpreter inside the PVM translates the program line by line thereby consuming a lot of time. To overcome this, a compiler known as Just In Time (JIT) is added to PVM. JIT compiler improves the execution speed of the Python program. This compiler is not used in all Python environments like CPython which is standard Python software. \n To execute the hello.cpython-39.pyc we can use the following command: \n Y:\\tmp\\python_ex>python __pycache__\\hello.cpython-39.pyc \n 至於有關 python.exe 與 pythonw.exe 的差別, 則參見 這裡的說明 . 至於 SciTE 設定 python.properties 中, 使用 pythonw.exe -u 表示除了採非同步 (asynchronous) 執行模式外, 同時 force the stdout and stderr streams to be unbuffered; but has no effect on stdin. \n Python 解譯器的類別: \n 最早的 Python 解譯器以 C 程式語言編寫, 稱為  CPython , 以 Python 編寫的 Python 解譯器稱為  Pypy , 以 .NET 技術編寫的 Python 解譯器稱為  Ironpython , 以 Java 編寫的 Python 解譯器稱為  Jython , 以 Javascript 編寫的 Python 解譯器稱為  Brython . 以 Rust 編寫的 Python 解譯器稱為  RustPython . \n 建立可攜 Python 程式環境的目的: \n 一般在 Windows 10 中使用  CPython  都是透過操作系統安裝, 將  CPython  解譯器登錄在操作系統的  Registry  中. 只不過配置在操作系統的  CPython  解譯器若在使用過程中, 透過  pip  安裝額外的模組後, 當電腦輔助設計室中的電腦重新開機後, 操作系統將會因為安裝防寫套件而恢復原先所安裝無額外模組的狀態. \n 網際內容管理與協同產品設計實習課程為了 讓使用者可以隨身帶著  CPython  解譯器 , 因此繞過 Windows 10 操作系統的 Registry 登錄, 設法以批次檔案在虛擬的硬碟 (y:) 啟動  CPython  解譯環境. \n 此外, 配置在 USB 隨身碟的可攜  CPython  程式環境, 除了可執行一般 Python 程式外, 也可自行安裝所需模組, 並用於  cmsimde  動態與靜態網站編輯. \n 可攜程式環境中除  CPython , 還可配置  MSYS2  C/C++ 編譯系統. 針對  SciTE ,  Solvespace ,  Range3 ,  CoppeliaSim  等開源套件執行編譯. \n 如何建立可攜 Python 程式環境? \n 能放入 USB 隨身碟執行的 Python 程式環境包含兩個部分: \n (1) Python 解譯器系統檔案 \n (2) 可攜啟動設定批次檔 (例如:  start_ipv6.bat ) \n 要在 Windows 操作系統中, 取得各版本的 Python 解譯器系統檔案, 也有兩種方法: \n (1) 從官方網站下載安裝檔 (例如:  3.10.2 版 的  python-3.10.2-amd64.exe) , 手動安裝 Python, 取下安裝內容後, 解除安裝程式. \n (2) 利用  gen_portable_python.py , 從 Python 官方網站下載基本的 .msi 檔案 (例如  3.10.2 版 中的 core.msi, dev.msi, exe.msi, lib.msi, tcltk.msi 與 tools.msi), 然後利用  msiexec.exe  配合  targetdir  屬性解開各安裝檔. \n 以下將要結合  SciTE ,  Tiny C Compiler  與  Python 3.10.2 , 建立一個可攜版的 CPython 與  ANSI C  執行環境. \n \n 從  http://download.savannah.gnu.org/releases/tinycc/  下載\xa0 tcc-0.9.27-win64-bin.zip . \n 從  https://www.scintilla.org/SciTEDownload.html  下載  wscite521.zip . \n 利用 Python 3.9.5 (或先前的 Python3 舊版可攜程式) 執行  gen_portable_python.py  取得 Python310 解譯器系統檔案. \n 根據上述流程建立的基本 Python 與 ANSI C 可攜程式系統  Portable_py310_tcc.7z  (只能在系網路 下載, 此一 Python 解譯器只帶有基本模組且尚未安裝  get-pip.py ) \n 此一 Python 解譯器以 python  get-pip.py  安裝 pip 後, 再以 pip install flask flask_cors bs4 lxml pelican markdown leo pyopenssl 安裝  cmsimde 所需模組 後, 即可用於 wcm2022 動態與靜態系統的編輯. \n 此一 Python 解譯器再結合  Portablegit  與  PUTTY , 就可以支援以  SSH  執行 github 倉儲的 git push. \n \n 如何建立網際 Python 程式環境 (Brython)? \n 例如:  run  頁面. \n 從  portable_python_wcm2022.7z  下載的可攜程式環境有哪些功能? \n 請注意: 以下的 .7z 檔案下載, 只允許在系上網段上下載 . \n \n compile_copsim_cd2022.7z \xa0(file size: 5 GB, extracted size: 17.3 GB, 包含除了 NX1980 之外的所有課程相關可攜程式套件, 是專門為  cd2022  課程學員打造的套件). \n portable_python_wcm2022.7z  (file size: 513 MB, extracted size: 2.3 G, 這是專門為  wcm2022  課程打造的可攜程式套件, 適合選修學員下載後在任何 Windows 10 中以隨身碟啟動後操作) \n drive.7z  (file size: 2.6 MB, extracted size: 10 MB, 只包含 PUTTY, tcc, wscite 與 tmp 目錄, 採用 Hybrid 方式設定, 可與目前電腦輔助設計室中 SSD 硬碟所安裝的 Python 3.9.5 與  Portablegit  結合, 使用者只需自行設定啟動後的 home_ipv6 目錄與 home_ipv6/Desktop 目錄後即可以最輕薄便捷的方式將 SSH key 存入隨身碟, 並將個人與分組倉儲存入隨身碟啟動後的 tmp 目錄進行操作). \n \n 以下利用 Wink3 影片說明以 Hybrid 方式啟動的 USB 隨身碟如何建立? 以及使用上與完整 USB 隨身碟可攜程式系統的差別: \n Hybrid 可攜程式系統是只將必要檔案配置到 USB 隨身碟, 其餘檔案則使用已經存在電腦上的內容, 主要包含 Python 3.9.5 解譯程式 (863 MB) 與 Portblegit 2.31.1 (285 MB). \n Hybrid 可攜程式系統優點: \n \n 初始 USB 隨身碟只需複製 10.5 MB 的資料 (只自帶 PUTTY (4.3 MB), tcc (1.7 MB), tmp 與 wscite (4.3 MB)). \n 使用電腦 SSD 上所安裝的 Python 與 Portablegit, 執行速度會比一般 USB 隨身碟快. \n \n Hybrid 可攜程式系統缺點: \n \n 在未修改 Python Script 目錄中的 .exe 可執行檔之前, 必須透過 .py 執行, 例如: 命令列 中輸入 leo 並無法執行執行, 必須採用 import leo.core.runLeo;leo.core.runLeo.run() \n 若在裝有還原卡的電腦, 未修改 Python 系統模組路徑之前, 所安裝的額外模組無法放入 USB 隨身碟中. \n', 'tags': '', 'url': 'Portable Python.html'}, {'title': 'Fossil SCM', 'text': '利用 Fossil SCM 與 Google API 建立的網際伺服器範例:  https://pj5073.cycu.org \n 如何在一台 2009 年出廠的電腦設定 Fossil SCM server? \n Windows: \n nssm install fossil_multi \n nssm edit fossil_multi \n fossil.exe server C:\\pj2022\\multi_repo --port 9001 --https --notfound default \n nssm install fossil_server \n nssm edit fossil_server \n fossil.exe server C:\\pj2022\\repo\\pj2022.fossil --port 9000 --https \n nssm install fossilapp \n C:\\compile_copsim\\data\\Python395\\python.exe waitress_server.py \n waitress_server.py \n # pip install waitress\nfrom waitress import serve\n\n# under cmsimde import fossilapp\nimport fossilapp\n\n# run cmsimde dynamic site with production waitress\nserve(fossilapp.app, host=\'127.0.0.1\', port=5001, url_scheme=\'https\') \n nssm install fossiloauth \n C:\\compile_copsim\\data\\Python395\\python.exe waitress_server.py \n waitress_server.py \n # pip install waitress\nfrom waitress import serve\n\n# under cmsimde import fossilapp\nimport fossiloauth\n\n# run cmsimde dynamic site with production waitress\nserve(fossiloauth.app, host=\'127.0.0.1\', port=5000, url_scheme=\'https\') \n stunnel.conf \n ; for single repository server: fossil_server\n[https]\naccept  = wcm.cycu.org:443\nconnect = 9000\ncert = fullchain.pem\nkey = privkey.pem\nTIMEOUTclose = 0\n\n; for multiple repository server: fossil_multi\n[https]\naccept  = wcm.cycu.org:5443\nconnect = 9001\ncert = fullchain.pem\nkey = privkey.pem\nTIMEOUTclose = 0\n\n; for fossiloauth\n[https]\naccept = wcm.cycu.org:8443\nconnect = 5000\ncert = fullchain.pem\nkey = privkey.pem\nTIMEOUTclose = 0\n\n; for fossilapp\n[https]\naccept = wcm.cycu.org:9443\nconnect = 5001\ncert = fullchain.pem\nkey = privkey.pem\nTIMEOUTclose = 0 \n nginx.conf \n worker_processes  1;\n\nevents {\n    worker_connections  1024;\n}\n\n\nhttp {\n    include       mime.types;\n    default_type  application/octet-stream;\n\n    sendfile        on;\n\n    keepalive_timeout  65;\n\n    server {\n        listen       [::]:80 default ipv6only=on;\n        server_name  wcm.cycu.org;\n        return       301 https://$server_name$request_uri;\n    }\n    \n       server {\n        listen       [::]:88 ipv6only=off;\n        listen       88;\n        \n        allow 140.130.17.0/24;\n        allow 2001:288:6004:17::0/32;\n        deny all;\n        \n        location / {\n            root C:/pj2022/nginx-1.20.2/spring2022;\n        }\n        autoindex on;\n    }\n}\n \n Ubuntu: \n stunnel.conf \n [https]\naccept = :443\naccept = :::443\ncert = /etc/letsencrypt/live/c3.cycu.org/fullchain.pem\nkey = /etc/letsencrypt/live/c3.cycu.org/privkey.pem \nexec = /usr/bin/fossil\nexecargs = /usr/bin/fossil http /home/pj2022/repository/pj2022.fossil --https --nojail \n flask_oauth2.ini \n [uwsgi]\nsocket = :8080\nuid = pj2022 \ngid = pj2022 \nplugins-dir = /usr/lib/uwsgi/plugins/\nplugin = python3\nmaster = true\nprocess = 4\nthreads = 2\nchdir = /home/pj2022/fossiloauth\nwsgi-file = /home/pj2022/fossiloauth/wsgi.py \n nginx /etc/nginx/sites-available/default \n # for redirect to https\nserver {\n    listen 80 default_server;\n    listen [::]:80 default_server;\n    root /home/pj2022/pj2022/;\n    index index.html;\n}\n\n# for fossiloauth\nserver {\n    listen 8443 ssl default_server;\n    listen [::]:8443 ssl default_server;\n    \n    location / {\n        include uwsgi_params;\n        uwsgi_pass  127.0.0.1:8080;\n    }\n    \n    ssl_certificate /etc/letsencrypt/live/c3.cycu.org/fullchain.pem;\n    ssl_certificate_key /etc/letsencrypt/live/c3.cycu.org/privkey.pem;\n    ssl_session_timeout 5m;\n    ssl_protocols SSLv3 TLSv1 TLSv1.1 TLSv1.2;\n    ssl_ciphers "HIGH:!aNULL:!MD5 or HIGH:!aNULL:!MD5:!3DES";\n    ssl_prefer_server_ciphers on;\n    try_files $uri $uri/ =404;\n}\n\n# for fossilapp\nserver {\n    listen 9443 ssl default_server;\n    listen [::]:9443 ssl default_server;\n    \n    location / {\n        include uwsgi_params;\n        uwsgi_pass  127.0.0.1:8081;\n    }\n    \n    ssl_certificate /etc/letsencrypt/live/c3.cycu.org/fullchain.pem;\n    ssl_certificate_key /etc/letsencrypt/live/c3.cycu.org/privkey.pem;\n    ssl_session_timeout 5m;\n    ssl_protocols SSLv3 TLSv1 TLSv1.1 TLSv1.2;\n    ssl_ciphers "HIGH:!aNULL:!MD5 or HIGH:!aNULL:!MD5:!3DES";\n    ssl_prefer_server_ciphers on;\n    try_files $uri $uri/ =404;\n}\n \n /etc/systemd/system/cmsimde.service \n [Unit]\nDescription=uWSGI to serve CMSiMDE\nAfter=network.target\n   \n[Service]\nUser=pj2022\nGroup=pj2022\nWorkingDirectory=/home/pj2022/uwsgi_ini\nExecStart=/usr/bin/uwsgi --emperor /home/pj2022/uwsgi_ini\n   \n[Install]\nWantedBy=multi-user.target\n\n \n \n \n', 'tags': '', 'url': 'Fossil SCM.html'}, {'title': 'PC2Server', 'text': '大一與專一分別從 PC 硬體安裝 Windows 10 (利用  https://clonezilla.org/  硬碟開機磁區 clone) 之後再逐步設定如  https://pj5073.cycu.org  與  https://wcm.cycu.org  的網際伺服器. \n', 'tags': '', 'url': 'PC2Server.html'}, {'title': 'Tetris', 'text': 'https://levelup.gitconnected.com/writing-tetris-in-python-2a16bddb5318 \n https://github.com/ondras/custom-tetris \n https://github.com/topics/tetris?l=python \n \n', 'tags': '', 'url': 'Tetris.html'}, {'title': 'run', 'text': 'ROC 國旗規格   PROC 國旗規格   USA 國旗規格 \n Gist Brython scripts \n 解題練習 \n Cango \n \n \n \n \n  for ggame  \n \n \n \n \n \n \n \n \n  Cango 程式庫  \n \n \n \n \n \n \n \n \n  for Konva 程式庫  \n \n \n \n \n  導入 FileSaver 與 filereader  \n \n \n \n \n  導入 ace  \n \n \n \n \n \n \n  請注意, 這裡使用 Javascript 將 localStorage["py_src"] 中存在近端瀏覽器的程式碼, 由使用者決定存檔名稱 \n \n \n \n add 1 to 100 p261 ROC flag PROC flag USA flag Draw Grid Random Rect Rect Walk Rect U Walk Rect rev U Walk 單節貪食蛇 5 個紅點方塊 Snake BSnake auto_guess ball bezier big_lotto brython_kw bunny cango_spur cango_spur1 cango_three_gears clear clock convert_temp deepmerge display_stl draw ex1 ex2 ex3 ex4 fibo fourbar guess_a_number hw1_1 hw1_2 Keycode knova1 merge3 power_lotto spur spur_w_form stl_binary_ascii stl_writer Tetris turtle1 turtle2 turtle3 turtle4 turtle5 turtle6 turtle7 turtle8 twl_link_ik webcam websocket ycqsort \n  ######################  editor1 開始 ######################  \n  用來顯示程式碼的 editor 區域  \n \n  以下的表單與按鈕與前面的 Javascript doSave 函式以及 FileSaver.min.js 互相配合  \n  存擋表單開始  \n Filename:  .py   \n  存擋表單結束  \n \n  執行與清除按鈕開始  \n Run   Output   清除輸出區 清除繪圖區 Reload \n  執行與清除按鈕結束  \n \n  程式執行 ouput 區  \n \n  Brython 程式執行的結果, 都以 brython_div 作為切入位置  \n  這裡的畫布 id 為 brython_div  \n \n  graphics-column is for ggame  \n \n  ######################  editor1 結束 ######################  \n  以下可以開始利用 editor1 的設定編寫對應 Brython 程式  \n \n  以上為內建程式, 頁面可透過 ?src=gist_url 執行  \n  add 1 to 100 開始  \n \n', 'tags': '', 'url': 'run.html'}]};