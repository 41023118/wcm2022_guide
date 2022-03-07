var tipuesearch = {"pages": [{'title': 'About', 'text': '由於網際內容管理課程要求每一位學員利用  Github Pages  建立名稱為 wcm2022 的倉儲以及網頁. 因此需要在近端執行 Python 程式, 且需要 flask flask_cors bs4 lxml pelican markdown leo pyopenssl 等 Python 模組. \n 問題: \n 何謂  Python 模組 ? \n 下載可攜程式檔案: \n 在系上網段, 可以直接連線到  http://wcm.cycu.org:88/  下載\xa0 http://wcm.cycu.org:88/portable_python_wcm2022.7z  (下載 513 MB, 解開壓縮後 2.3GB) \n 假如是在其他網段, 則可下載  portable_python_wcm2022.7z  (下載 513 MB, 解開壓縮後 2.3GB, under wcm2022 At mde) - 包含 Python 3.9.5, Portablegit, Scite, ShareX, Wink, GitEtensions 等工具. \n 請利用  https://www.7-zip.org  將 portable_python_wcm2022.7z 解開壓縮至 USB 3.0 以上規格的隨身碟. \n 問題: \n 可攜式 Python 程式是如何製作的? \n 可攜 Python 程式有哪些功能? \n 何謂近端? \n 使用 USB 隨身碟中的可攜程式系統後, 如何在 Github 建立個人的倉儲與網頁? \n 何謂動態網頁與靜態網頁? \n 在近端編輯完成 Github 倉儲資料後, 如何使用 token 或 SSH 方式將倉儲改版資料推送到遠端? \n cmsimde  網際內容管理系統有哪些功能? \n https://www.bosch.com/stories/bringing-open-source-to-mechanical-engineering/   \n https://github.com/boschresearch/pylife   \n \n \n \n \n Please enable JavaScript to view the  comments powered by Disqus.', 'tags': '', 'url': 'About.html'}, {'title': 'CPython and Modules', 'text': 'CPython: \n https://en.wikipedia.org/wiki/CPython \n https://github.com/python/cpython \n Python Modules: \n https://www.tutorialspoint.com/python/python_modules.htm \n', 'tags': '', 'url': 'CPython and Modules.html'}, {'title': 'Local and Remote', 'text': 'PC to PC connection \n PC Hardware + Windows 10 +  License \n Python http.server \n nginx WWW server \n Fossil SCM server \n Local Area Network \n Wide Are Network \n Remote Desktop \n', 'tags': '', 'url': 'Local and Remote.html'}, {'title': 'cmsimde', 'text': '動態網頁 - localhost 與 remote site \n 靜態網頁 - Github Pages 與 nginx \n Leo Editor \n reveal.js \n Pelican blog - blogger 同步 Google API (Oauth2) \n', 'tags': '', 'url': 'cmsimde.html'}, {'title': 'Token and SSH', 'text': 'Token: \n https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token \n Github token 是一串可以用來替代 Github 帳號與密碼功能的字串, 可在登入 Github 帳號後, 至  https://github.com/settings/tokens  設定. 每一個 token 都具備有效時間與權限範圍, 一般初學者可以只勾選 Token 的 repo 改版權限, 並選擇 30 天的有效時間. 之後再設法改用 SSH 對 Github 倉儲改版. \n 以下影片說明如何使用 Personal Access Token 執行 git push: \n \n  接下來將 mp4 檔案從 downloads 目錄取出  \n \n \n \n   \n \n \n \n \n \n \n \n \n SSH: \n https://docs.github.com/en/authentication/connecting-to-github-with-ssh \n Windows 10 環境中的 SSH 可以透過  https://www.putty.org/  執行設定. \n puttygen.exe 可用來建立 OpenSSL 格式的數位簽章, public key 送到使用者 Github 帳號下 settings 中的 SSH and GPG keys 區, 在隨身碟中則存放與 public key 成對的 Putty 格式 private key. \n 使用者在 Windows 10 使用 git + putty 時, 必須在啟動隨身系統時設定 GIT_SSH 變數 ( Git 環境變數 ) 至 putty 中的 plink.exe, 之後再利用 putty 設定連至 github.com 用的 session, 且在純 IPv6 環境中, 連至 github.com 的 session 除了必須指向隨身碟中的 private key 外, 還需要設定能同時支援 IPv6 與 IPv4 的 proxy server. \n 使用者希望透過 SSH 對 github 中的倉儲改版時, 必須使用  git@session_name:github_account/repository.git  連線. \n 有關 GIT_SSH 變數： \n GIT_SSH, if specified, is a program that is invoked instead of ssh when Git tries to connect to an SSH host. It is invoked like $GIT_SSH [username@]host [-p <port>] <command>. Note that this isn’t the easiest way to customize how ssh is invoked; it won’t support extra command-line parameters, so you’d have to write a wrapper script and set GIT_SSH to point to it. It’s probably easier just to use the ~/.ssh/config file for that. \n 以下影片說明如何在 Windows IPv6 環境下, 利用 PUTTY 以 SSH 協定執行 git push: \n \n \n \n \n   \n \n \n \n \n \n \n \n', 'tags': '', 'url': 'Token and SSH.html'}, {'title': 'Mac and RDT', 'text': '在 Mac Air 使用  Remote DeskTop  (RDT) 連接到遠端的 Windows 10 電腦, 啟動 Wink 後, 可以在 Preferences 中, 利用  Mac Air 鍵盤中的 fn + F1 鍵取代 Pause , 就可以在 Wink 專案中以 fn + F1 取得當下的電腦操作畫面. \n 在台灣的機械工程專業使用者, 若要使用 Mac 電腦, 經常會碰到許多瓶頸, 主要原因是一般大學或研究所以上的課程, 似乎都以 Windows 操作系統為主, 因此造成機械工程師無法在 Mac 電腦上進行產品開發設計的錯誤印象. \n 從 學習程式 這個頁面, 可以得知目前流程的操作系統主要分為 Unix 與 Windows 兩大支, MacOS 源自 Unix 中的  BSD , 而 Windows 操作系統在 2004 版本 (2020.04 釋出) 之後, 已經能夠 安裝   WSL  (Windows Subsystem for Linux), 以獨特的 Microsoft 架構使用許多 Linux 操作系統具備的指令與套件. \n Windows 納入 WSL 之後, 讓原先在 Windows, Unix-based (包含 Linux) 與 MacOS 等不同操作系統的差異越來越小, 再加上部分機械工程相關的套件已經全雲端化 (例如:  Onshape ), 機械工程師只要選擇合用的套件與工具, 無論使用何種電腦或手機, 身處哪一種操作系統, 都能夠完成相同的產品開發或維護任務.', 'tags': '', 'url': 'Mac and RDT.html'}, {'title': 'Wink', 'text': '這裡所指的 Wink 為 3.0 版, 來自  https://www.debugmode.com/wink/  是一套免費 (Freeware) 的電腦操作流程影片錄製軟體, 與  ShareX  相同的是, 兩套軟體的影片製作核心都是採用  ffmpeg.exe . 不同的地方在於:  Wink 3.0  沒有開源, 可能是採用 C++ 編寫 (因為除了 Windows 版本, 還有 Linux, 但卻沒有 Mac), 且  Wink 3.0  可以在主影格 (Key frame) 中加入文字說明, 以及 html 按鈕. 比較適合用來製作需要較多文字說明輔助的教學影片. 至於  ShareX  是一套採用 C# 編寫的開源套件, 適合製作加上搭配語音或說明字幕的操作教學影片. \n 由作者提供的  Wink 3.0  使用教學影片可以參考  https://mde.tw/cmstemplate/content/Wink.html \n 以下的影片將說明如何將利用  Wink 3.0  製作的 mp4 教學影片嵌入 cmsimde 動態與靜態網頁, 而且能在手機上觀看: \n \n  接下來將 mp4 檔案從 downloads 目錄取出  \n \n \n \n   \n \n \n \n \n \n \n \n', 'tags': '', 'url': 'Wink.html'}, {'title': 'IPv6 setup', 'text': '利用  Wink  建立電腦操作流程影片時, 必須注意: \n \n 可以與 ShareX 共用  ffmpeg.exe . \n 為了讓影片能在手機觀看, video 標註中必須帶有 autoplay 與 controls 屬性. \n video 標註的大小必須與  Wink  專案檔中的設定相符, 合適的尺寸大小: width="1008" height="630". \n 以下  Wink  影片設定超文件檔案:  wink_script_and_setup.txt \n \n 配合 Wink 檔案將 js 檔案設定如下 \n \n  接下來將 mp4 檔案從 downloads 目錄取出  \n \n \n \n   \n \n \n \n \n \n \n \n', 'tags': '', 'url': 'IPv6 setup.html'}, {'title': 'Portable Python', 'text': '何謂可攜式 Python 程式環境? \n Python 程式如何執行? \n 首先 Python 是一種解譯式 (Interpreted) 程式語言, 與 C 或 C++ 程式語言最大的差別是, C/C++ 程式碼通常必須透過編譯 (Compile) 與連結 (Link) 的過程, 將原始碼轉為可執行的格式 (在 Windows 操作系統為 .exe 檔案), 而 Python 程式寫好後, 可以直接利用解譯器執行, 使用者不需要手動執行程式碼的編譯, 而是由解譯器在執行前即時將程式碼轉換為可執行檔案. \n 在  geeksforgeeks 網站 , 以下列敘述說明 Python 程式如何執行: \n Python is an object-oriented programming language like Java. Python is called an interpreted language. Python uses code modules that are interchangeable instead of a single long list of instructions that was standard for functional programming languages. The standard implementation of python is called "cpython". It is the default and widely used implementation of Python. \n Python doesn’t convert its code into machine code, something that hardware can understand. It actually converts it into something called byte code. So within python, compilation happens, but it’s just not into a machine language. It is into byte code (.pyc or .pyo) and this byte code can’t be understood by the CPU. So we need an interpreter called the python virtual machine to execute the byte codes \n 針對 Python 程式的"編譯"過程, 則 說明如下 : \n The Python program is converted into byte code. Byte code is a fixed set of instructions that represent arithmetic, comparison, memory operations, etc. It can run on any operating system and hardware. The byte code instructions are created in the .pyc file. The .pyc file is not explicitly created as Python handles it internally but it can be viewed with the following command: \n Y:\\tmp\\python_ex>python -m py_compile hello.py \n -m and py_compile represent module and module name respectively. This module is responsible to generate .pyc file. The compiler creates a directory named \xa0__pycache__ where it stores the hello.cpython-39.pyc file (若採用 Python 3.9 版次的編譯器). \n 至於針對 Python 程式的"解譯"執行過程, 則 說明如下 : \n The next step involves converting the byte code (.pyc file) into machine code. This step is necessary as the computer can understand only machine code (binary code). Python Virtual Machine (PVM) first understands the operating system and processor in the computer and then converts it into machine code. Further, these machine code instructions are executed by processor and the results are displayed. \n However, the interpreter inside the PVM translates the program line by line thereby consuming a lot of time. To overcome this, a compiler known as Just In Time (JIT) is added to PVM. JIT compiler improves the execution speed of the Python program. This compiler is not used in all Python environments like CPython which is standard Python software. \n To execute the hello.cpython-39.pyc we can use the following command: \n Y:\\tmp\\python_ex>python __pycache__\\hello.cpython-39.pyc \n 至於有關 python.exe 與 pythonw.exe 的差別, 則參見 這裡的說明 . 至於 SciTE 設定 python.properties 中, 使用 pythonw.exe -u 表示除了採非同步 (asynchronous) 執行模式外, 同時 force the stdout and stderr streams to be unbuffered; but has no effect on stdin. \n Python 解譯器的類別: \n 最早的 Python 解譯器以 C 程式語言編寫, 稱為  CPython , 以 Python 編寫的 Python 解譯器稱為  Pypy , 以 .NET 技術編寫的 Python 解譯器稱為  Ironpython , 以 Java 編寫的 Python 解譯器稱為  Jython , 以 Javascript 編寫的 Python 解譯器稱為  Brython . 以 Rust 編寫的 Python 解譯器稱為  RustPython . \n 建立可攜 Python 程式環境的目的: \n 一般在 Windows 10 中使用  CPython  都是透過操作系統安裝, 將  CPython  解譯器登錄在操作系統的  Registry  中. 只不過配置在操作系統的  CPython  解譯器若在使用過程中, 透過  pip  安裝額外的模組後, 當電腦輔助設計室中的電腦重新開機後, 操作系統將會因為安裝防寫套件而恢復原先所安裝無額外模組的狀態. \n 網際內容管理與協同產品設計實習課程為了 讓使用者可以隨身帶著  CPython  解譯器 , 因此繞過 Windows 10 操作系統的 Registry 登錄, 設法以批次檔案在虛擬的硬碟 (y:) 啟動  CPython  解譯環境. \n 此外, 配置在 USB 隨身碟的可攜  CPython  程式環境, 除了可執行一般 Python 程式外, 也可自行安裝所需模組, 並用於  cmsimde  動態與靜態網站編輯. \n 可攜程式環境中除  CPython , 還可配置  MSYS2  C/C++ 編譯系統. 針對  SciTE ,  Solvespace ,  Range3 ,  CoppeliaSim  等開源套件執行編譯. \n 如何建立可攜 Python 程式環境? \n 如何建立網際 Python 程式環境 (Brython)? \n 從  portable_python_wcm2022.7z  下載的可攜程式環境有哪些功能?', 'tags': '', 'url': 'Portable Python.html'}, {'title': 'Fossil SCM', 'text': '利用 Fossil SCM 與 Google API 建立的網際伺服器範例:  https://pj5073.cycu.org \n 如何在一台 2009 年出廠的電腦設定 Fossil SCM server? \n', 'tags': '', 'url': 'Fossil SCM.html'}, {'title': 'PC2Server', 'text': '大一與專一分別從 PC 硬體安裝 Windows 10 (利用  https://clonezilla.org/  硬碟開機磁區 clone) 之後再逐步設定如  https://pj5073.cycu.org  與  https://wcm.cycu.org  的網際伺服器.', 'tags': '', 'url': 'PC2Server.html'}, {'title': 'Tetris', 'text': 'https://levelup.gitconnected.com/writing-tetris-in-python-2a16bddb5318 \n https://github.com/ondras/custom-tetris \n https://github.com/topics/tetris?l=python \n \n', 'tags': '', 'url': 'Tetris.html'}, {'title': 'run', 'text': 'ROC 國旗規格   PROC 國旗規格   USA 國旗規格 \n Gist Brython scripts \n 解題練習 \n Cango \n \n \n  for ggame  \n \n \n \n \n \n \n \n \n  Cango 程式庫  \n \n \n \n \n \n \n \n \n  for Konva 程式庫  \n \n \n \n \n  導入 FileSaver 與 filereader  \n \n \n \n \n  導入 ace  \n \n \n \n \n \n \n  請注意, 這裡使用 Javascript 將 localStorage["py_src"] 中存在近端瀏覽器的程式碼, 由使用者決定存檔名稱 \n \n \n \n add 1 to 100 p261 ROC flag PROC flag USA flag Draw Grid Random Rect Rect Walk Rect U Walk Rect rev U Walk 單節貪食蛇 5 個紅點方塊 Snake BSnake auto_guess ball bezier big_lotto brython_kw bunny cango_spur cango_spur1 cango_three_gears clear clock convert_temp deepmerge display_stl draw ex1 ex2 ex3 ex4 fibo fourbar guess_a_number hw1_1 hw1_2 Keycode knova1 merge3 power_lotto spur spur_w_form stl_binary_ascii stl_writer Tetris turtle1 turtle2 turtle3 turtle4 turtle5 turtle6 turtle7 turtle8 twl_link_ik webcam websocket ycqsort \n  ######################  editor1 開始 ######################  \n  用來顯示程式碼的 editor 區域  \n \n  以下的表單與按鈕與前面的 Javascript doSave 函式以及 FileSaver.min.js 互相配合  \n  存擋表單開始  \n Filename:  .py   \n  存擋表單結束  \n \n  執行與清除按鈕開始  \n Run   Output   清除輸出區 清除繪圖區 Reload \n  執行與清除按鈕結束  \n \n  程式執行 ouput 區  \n \n  Brython 程式執行的結果, 都以 brython_div 作為切入位置  \n  這裡的畫布 id 為 brython_div  \n \n  graphics-column is for ggame  \n \n  ######################  editor1 結束 ######################  \n  以下可以開始利用 editor1 的設定編寫對應 Brython 程式  \n \n  以上為內建程式, 頁面可透過 ?src=gist_url 執行  \n  add 1 to 100 開始  \n \n', 'tags': '', 'url': 'run.html'}]};