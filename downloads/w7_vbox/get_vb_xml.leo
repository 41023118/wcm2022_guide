<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2"/>
<globals/>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="leo.20220511135314.2"><vh>@settings</vh>
<v t="leo.20220511135410.1"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="leo.20220511135419.1"><vh>@string initial_split_orientation = horizontal</vh></v>
<v t="leo.20220511160841.1"><vh>@data import-xml-tags</vh></v>
</v>
<v t="leo.20220511141135.1"><vh>About</vh></v>
<v t="leo.20220511160807.1"><vh>for virtualbox .xml</vh>
<v t="leo.20220511135324.1"><vh>@@data import-xml-tags</vh></v>
</v>
<v t="leo.20220511140420.1"><vh>uuid</vh>
<v t="leo.20220511140429.1"><vh>check uuid of vdi</vh>
<v t="leo.20220511140824.1"><vh>@@edit cu.bat</vh></v>
<v t="leo.20220511141724.1"><vh>@@edit cu.py</vh></v>
<v t="leo.20220511143724.1"><vh>uuid data</vh></v>
</v>
<v t="leo.20220511140534.1"><vh>modify uuid of vdi</vh>
<v t="leo.20220511140859.1"><vh>@@edit mu.bat</vh></v>
</v>
</v>
<v t="leo.20220511141426.1"><vh>Startup and stop</vh>
<v t="leo.20220511141403.1"><vh>@edit vbstart.bat</vh></v>
<v t="leo.20220511141434.1"><vh>@edit vbstop.bat</vh></v>
</v>
<v t="leo.20220511144203.1"><vh>@@edit get_xml_tags.py</vh></v>
<v t="leo.20220511160642.1"><vh>parse E:/data/wcm_w8/wcm_w8.vbox</vh></v>
</vnodes>
<tnodes>
<t tx="leo.20220511135314.2"></t>
<t tx="leo.20220511135324.1">DHCPServer
MachineRegistry
DHCPServers
ExtraDataItem
USBDeviceFilters
Global
NetserviceRegistry
VirtualBox
ExtraData
MachineEntry
SystemProperties</t>
<t tx="leo.20220511135410.1">QTreeWidget {
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
<t tx="leo.20220511135419.1">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="leo.20220511140420.1">分別列出與 vdi 有關 UUID 的查詢與變更指令</t>
<t tx="leo.20220511140429.1">"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" showhdinfo "c:\MyMachine.vdi"</t>
<t tx="leo.20220511140534.1">"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" internalcommands sethduuid wcm_w7.vdi</t>
<t tx="leo.20220511140824.1">@language batch
REM check uuid of vdi

"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" showhdinfo %1</t>
<t tx="leo.20220511140859.1">@language batch
REM modify uuid of vdi

"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" internalcommands sethduuid %1</t>
<t tx="leo.20220511141135.1">這個專案的目的是將 vdi 存在隨身碟, 並透過 batch 設定, 可以直接透過程式方法, 以可攜設定將原先設定的虛擬主機置入已經安裝 Virtualbox 6.1 的 Windows 64 操作系統中.
</t>
<t tx="leo.20220511141426.1">利用 xcopy 與 attrib 將原先設定的虛擬主機目錄,  複製至該有的位置,  並且利用 attrib 設定, 讓目錄中的檔案都可寫入新的資料.</t>
<t tx="leo.20220511141724.1"># 按下 ctrl + b 在 Leo Editor 中執行
import os

ub = os.popen("\"C:/Program Files/Oracle/VirtualBox/VBoxManage.exe\" showhdinfo x:/Ub2204_lts.vdi").read()

win = os.popen("\"C:/Program Files/Oracle/VirtualBox/VBoxManage.exe\" showhdinfo x:/wcm_w8.vdi").read()

g.es(ub)

g.es(win)

</t>
<t tx="leo.20220511143724.1">machine uuid is different from vdi uuid

Ub2204_lts.vdi: 75d62ede-c249-4733-8224-acb4fd1c1a2d

wcm_w8.vdi: 92cb5fbb-8e35-4a05-958e-4af051940079</t>
<t tx="leo.20220511144203.1"># from https://stackoverflow.com/questions/29596584/getting-a-list-of-xml-tags-in-file-using-xml-etree-elementtree

import xml.etree.ElementTree as ET
import re

def leoprint(x):
    try:
        g.es(x)
    except:
        print(x)

# load and parse the file
xmlTree = ET.parse('C:/Users/kmol/.VirtualBox/VirtualBox.xml')

# get Element from xml file
with open('C:/Users/kmol/.VirtualBox/VirtualBox.xml') as f:
    data = f.read()
element = ET.fromstring(data)

#leoprint(xmlTree)
#leoprint(element)

# get xml name space
xmlns = str(re.match(r'\{.*\}', element.tag).group(0))

leoprint("xmlns is:" + xmlns )
leoprint(" ")

elemList = []

for elem in xmlTree.iter():
    elemList.append(elem.tag)

# now I remove duplicities - by convertion to set and back to list
elemList = list(set(elemList))

# Just printing out the result
#leoprint(elemList)

for i in elemList:
    # remove xmlns
    leoprint(i.replace(xmlns, ""))</t>
<t tx="leo.20220511160642.1"># from https://stackoverflow.com/questions/29596584/getting-a-list-of-xml-tags-in-file-using-xml-etree-elementtree

import xml.etree.ElementTree as ET
import re

def leoprint(x):
    try:
        g.es(x)
    except:
        print(x)

# load and parse the file
xmlTree = ET.parse('E:/data/wcm_w8/wcm_w8.vbox')

# get Element from xml file
with open('E:/data/wcm_w8/wcm_w8.vbox') as f:
    data = f.read()
element = ET.fromstring(data)

#leoprint(xmlTree)
#leoprint(element)

# get xml name space
xmlns = str(re.match(r'\{.*\}', element.tag).group(0))

leoprint("xmlns is:" + xmlns )
leoprint(" ")

elemList = []

for elem in xmlTree.iter():
    elemList.append(elem.tag)

# now I remove duplicities - by convertion to set and back to list
elemList = list(set(elemList))

# Just printing out the result
#leoprint(elemList)

for i in elemList:
    # remove xmlns
    leoprint(i.replace(xmlns, ""))</t>
<t tx="leo.20220511160807.1"></t>
<t tx="leo.20220511160841.1">AttachedDevice
VirtualBox
LongMode
HardDisks
HardwareVirtExLargePages
Paravirt
BIOS
Memory
VideoCapture
Hardware
USB
Network
AudioAdapter
StorageController
PAE
StorageControllers
Image
Machine
Adapter
HardDisk
SmbiosUuidLittleEndian
IOAPIC
Display
HID
Controller
Controllers
RemoteDisplay
CPU
NAT
Clipboard
MediaRegistry</t>
</tnodes>
</leo_file>
