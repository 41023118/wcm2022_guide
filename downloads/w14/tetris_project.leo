<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2"/>
<globals/>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="leo.20220518161022.1"><vh>@settings</vh>
<v t="leo.20220518161022.2"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="leo.20220518161022.3"><vh>@string initial_split_orientation = horizontal</vh></v>
<v t="leo.20220518161101.1"><vh>@@data import-xml-tags</vh></v>
</v>
<v t="leo.20220518161402.1"><vh>Get XML tags</vh></v>
<v t="leo.20220518161447.1"><vh>STL binary to ASCII</vh></v>
<v t="leo.20220518161739.1"><vh>STL ASCII to binary</vh></v>
<v t="leo.20220518161142.1"><vh>recursive importer</vh></v>
<v t="leo.20220518161017.2"><vh>Template</vh></v>
<v t="leo.20220523093201.1"><vh>Tetris</vh>
<v t="leo.20220523094119.1"><vh>@button cp to txt</vh></v>
<v t="leo.20220523093201.2"><vh>@path ./</vh>
<v t="leo.20220523093201.3"><vh>@clean w14_tetris_brython.py</vh>
<v t="leo.20220523093201.4"><vh>Declarations</vh></v>
<v t="leo.20220523093201.5"><vh>class Figure</vh>
<v t="leo.20220523093201.6"><vh>Figure.__init__</vh></v>
<v t="leo.20220523093201.7"><vh>Figure.image</vh></v>
<v t="leo.20220523093201.8"><vh>Figure.rotate</vh></v>
</v>
<v t="leo.20220523093201.9"><vh>class Tetris</vh>
<v t="leo.20220523093201.10"><vh>Tetris.__init__</vh></v>
<v t="leo.20220523093201.11"><vh>Tetris.new_figure</vh></v>
<v t="leo.20220523093201.12"><vh>Tetris.intersects</vh></v>
<v t="leo.20220523093201.13"><vh>Tetris.break_lines</vh></v>
<v t="leo.20220523093201.14"><vh>Tetris.go_space</vh></v>
<v t="leo.20220523093201.15"><vh>Tetris.go_down</vh></v>
<v t="leo.20220523093201.16"><vh>Tetris.freeze</vh></v>
<v t="leo.20220523093201.17"><vh>Tetris.go_side</vh></v>
<v t="leo.20220523093201.18"><vh>Tetris.rotate</vh></v>
</v>
<v t="leo.20220523093201.19"><vh>key_down</vh></v>
<v t="leo.20220523093201.20"><vh>key_up</vh></v>
<v t="leo.20220523093201.21"><vh>do_game</vh></v>
</v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="leo.20220518161017.2"></t>
<t tx="leo.20220518161022.1"></t>
<t tx="leo.20220518161022.2">QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 30px;
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
    font-size: 30px;
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
    font-size: 30px;
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
    font-size: 30px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;'CherryPy', 'pytz', 'mako', 'beautifulsoup4', 'pymysql', 'peewee'
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 30px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 30px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="leo.20220518161022.3">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="leo.20220518161101.1">CoppeliaSim
environment
dynamics
simulation
camera
dummy
shape
mesh</t>
<t tx="leo.20220518161142.1">'''Recursively import all python files in a directory and clean the result.'''
# ctrl + b to execute

c.recursiveImport(
    dir_ = r'./',
    kind = '@clean', # The new best practice.
    safe_at_file = False,
    theTypes = ['.py'] 
)</t>
<t tx="leo.20220518161402.1"># from https://stackoverflow.com/questions/29596584/getting-a-list-of-xml-tags-in-file-using-xml-etree-elementtree
import xml.etree.ElementTree as ET
# load and parse the file
xmlTree = ET.parse('two_links_exhaustive.simscene.xml')

elemList = []

for elem in xmlTree.iter():
    elemList.append(elem.tag)

# now I remove duplicities - by convertion to set and back to list
elemList = list(set(elemList))

# Just printing out the result
print(len(elemList))

for i in elemList:
    print(i)</t>
<t tx="leo.20220518161447.1">'''
A binary STL file contains :

    an 80-character (byte) headern which is generally ignored.
    a 4-byte unsigned integer indicating the number of triangular facets in the file.
    Each triangle is described by twelve 32-bit floating-point numbers: three for the normal and then three for the X/Y/Z coordinate of each vertex – just as with the ASCII version of STL. After these follows a 2-byte ("short") unsigned integer that is the "attribute byte count" – in the standard format, this should be zero because most software does not understand anything else. --Floating-point numbers are represented as IEEE floating-point numbers and are assumed to be little-endian--

'''
import struct
normals = []
points = []
triangles = []
triangle_number = 0

def load_binary_stl(fp):
    '''
    二位元 STL 檔案格式如下:
    檔案標頭共有 80 個字元(bytes), 內容通常省略, 但是內容不可使用 solid, 以免與文字檔案 STL 混淆
    UINT8[80] – Header
    UINT32 – Number of triangles (I:佔 4 bytes 的 unsigned integer)
 
    foreach triangle
    REAL32[3] – Normal vector (f:每一座標分量為一佔 4 bytes 的 float, 共佔 12 bytes)
    REAL32[3] – Vertex 1
    REAL32[3] – Vertex 2
    REAL32[3] – Vertex 3
    UINT16 – Attribute byte count (H:兩個 bytes 的 unsigned short, 表示 attribute byte count)
    end
 
    '''
    # 已經在外部開檔
    #fp=open(filename,'rb')
    header=fp.read(80)
    triangle_number = struct.unpack('I',fp.read(4))[0]
    #print(triangle_number)
    count=0
    while True:
        try:
            p=fp.read(12)
            if len(p)==12:
                n=[struct.unpack('f',p[0:4])[0],struct.unpack('f',p[4:8])[0],struct.unpack('f',p[8:12])[0]]
                normals.append(n)
                l = len(points)
                #print(n)
            p=fp.read(12)
            if len(p)==12:
                p1=[struct.unpack('f',p[0:4])[0],struct.unpack('f',p[4:8])[0],struct.unpack('f',p[8:12])[0]]
                points.append(p1)
                #print(p1)
            p=fp.read(12)
            if len(p)==12:
                p2=[struct.unpack('f',p[0:4])[0],struct.unpack('f',p[4:8])[0],struct.unpack('f',p[8:12])[0]]
                points.append(p2)
            p=fp.read(12)
            if len(p)==12:
                p3=[struct.unpack('f',p[0:4])[0],struct.unpack('f',p[4:8])[0],struct.unpack('f',p[8:12])[0]]
                points.append(p3)
                triangles.append((l, l+1, l+2))
            # 使用 count 來計算三角形平面個數
            # triangle_number 為 STL 檔案中的三角形個數
            count += 1
            #print(count)
            # 在前面 12*4 個 bytes 的 normal 與三個點資料後, 為
            # 一個 2 bytes 長的 unsigned short, 其值為零, 為 attribute
            fp.read(2)
            # 讀完所有三角平面後, 即跳出 while
            if count &gt; triangle_number:
                break
        except EOFError:
            break
    #fp.close()
def read_length(f):
    length = struct.unpack("@i", f.read(4))
    return length[0]
def read_header(f):
    f.seek(f.tell()+80)
def write_as_ascii(outfilename):
    f = open(outfilename, "w")
    f.write ("solid "+outfilename+"\n")
    for n  in range(len(triangles)):
        f.write ("facet normal {} {} {}\n".format(normals[n][0],normals[n][1],normals[n][2]))
        f.write ("outer loop\n")
        f.write ("vertex {} {} {}\n".format(points[triangles[n][0]][0],points[triangles[n][0]][1],points[triangles[n][0]][2]))
        f.write ("vertex {} {} {}\n".format(points[triangles[n][1]][0],points[triangles[n][1]][1],points[triangles[n][1]][2]))
        f.write ("vertex {} {} {}\n".format(points[triangles[n][2]][0],points[triangles[n][2]][1],points[triangles[n][2]][2]))
        f.write ("endloop\n")
        f.write ("endfacet\n")
    f.write ("endsolid "+outfilename+"\n")
    f.close()
def main():
    infilename = "two_links.stl"
    outfilename = "two_links_ascii.stl"
    try:
        f = open(infilename, "rb")
        #read_header(f)
        #l = read_length(f)
        try:
            load_binary_stl(f)
            l = len(normals)
        except Exception as e:
            print("Exception",e)
        print(len(normals), len(points), len(triangles), l)
        write_as_ascii(outfilename)
        print("done")
    except Exception as e:
        print(e)
if __name__ == '__main__':
    main()</t>
<t tx="leo.20220518161739.1">import struct
import os
# 從三角形頂點計算 normal 用
import numpy as np

#load stl file detects if the file is a text file or binary file
def load_stl(filename):
    #read start of file to determine if its a binay stl file or a ascii stl file
    fp=open(filename,'rb')
    header=fp.read(80)
    filetype=header[0:5]
    # 這裡必須要能夠分辨二位元字串與文字字串
    #print (type(filetype))
    #print (filetype)
    fp.close()
 
    # for Python 3
    if filetype==b'solid':
    # for Python 2
    #if filetype=='solid':
        print ("讀取文字檔案格式:"+str(filename))
        load_text_stl(filename)
    else:
        print ("讀取二位元檔案格式:"+str(filename,))
        load_binary_stl(filename)
 
#load binary stl file check wikipedia for the binary layout of the file
#we use the struct library to read in and convert binary data into a format we can use
def load_binary_stl(filename):
    '''
    二位元 STL 檔案格式如下:
    檔案標頭共有 80 個字元(bytes), 內容通常省略, 但是內容不可使用 solid, 以免與文字檔案 STL 混淆
    UINT8[80] – Header
    UINT32 – Number of triangles (I:佔 4 bytes 的 unsigned integer)
 
    foreach triangle
    REAL32[3] – Normal vector (f:每一座標分量為一佔 4 bytes 的 float, 共佔 12 bytes)
    REAL32[3] – Vertex 1
    REAL32[3] – Vertex 2
    REAL32[3] – Vertex 3
    UINT16 – Attribute byte count (H:兩個 bytes 的 unsigned short, 表示 attribute byte count)
    end
 
    '''
    global plist
 
    fp=open(filename,'rb')
    header=fp.read(80)
 
    triangle_number = struct.unpack('I',fp.read(4))[0]
    count=0
    while True:
        try:
            p=fp.read(12)
            if len(p)==12:
                n=[struct.unpack('f',p[0:4])[0],struct.unpack('f',p[4:8])[0],struct.unpack('f',p[8:12])[0]]
 
            p=fp.read(12)
            if len(p)==12:
                p1=[struct.unpack('f',p[0:4])[0],struct.unpack('f',p[4:8])[0],struct.unpack('f',p[8:12])[0]]
                plist.append(p1)
            p=fp.read(12)
            if len(p)==12:
                p2=[struct.unpack('f',p[0:4])[0],struct.unpack('f',p[4:8])[0],struct.unpack('f',p[8:12])[0]]
                plist.append(p2)
            p=fp.read(12)
            if len(p)==12:
                p3=[struct.unpack('f',p[0:4])[0],struct.unpack('f',p[4:8])[0],struct.unpack('f',p[8:12])[0]]
                plist.append(p3)
            # 使用 count 來計算三角形平面個數
            # triangle_number 為 STL 檔案中的三角形個數
            count += 1
            # 在前面 12*4 個 bytes 的 normal 與三個點資料後, 為
            # 一個 2 bytes 長的 unsigned short, 其值為零, 為 attribute
            fp.read(2)
            # 讀完所有三角平面後, 即跳出 while
            if count &gt; triangle_number:
                break
        except EOFError:
            break
    fp.close()
 
 
def load_text_stl(filename):
    global list
    for dataline in open(filename,"r").readlines():
        if not dataline.strip(): # skip blank lines
            continue
        field = dataline.split() # split with no argument makes the right place!
        if field[0] == "vertex":
            plist.append([float(x) for x in field[1:4]])

# Read STL file, only use vertex-line with xyz coordinates
# plist is point list
plist = []
# 讀進 ASCII 格式的 STL 後存入 global list 變數
ascii_stl_file = "link2_ascii.stl"
binary_stl_file = "link2_converted_binary.stl"
load_stl(os.path.abspath('')+'/'+ ascii_stl_file)

def calculate_normal(p1, p2, p3):
    p12 = p2-p1
    p23 = p3-p2
    #calculate the cross product
    return np.cross(p12, p23) 
    
# 已經取得 point list, 查驗 plist 內容
#print(plist)
 
class StLFacet:
    def __init__(self, normal, v1, v2, v3, att_bc=0):
        self.coords = [normal, v1, v2, v3]
        self.att_bc = att_bc
 
class StL:
    def __init__(self, header):
        self.header = header
        self.facets = []
    def add_facet(self, facet):
        self.facets.append(facet)
    def get_binary(self):
        # 原先 2.0 的版本
        #out = ['%-80.80s' % self.header]
        # 改為 Python 3.0 格式
        # 第一行標頭的格式
        header = ['%-80.80s' % self.header][0]
        # 利用 bytes() 將標頭字串轉為二位元資料
        out = [bytes(header,encoding="utf-8")]
        # 接著則計算三角形面的數量, 並以二位元長整數格式存檔
        out.append(struct.pack('L',len(self.facets)))
        # 接著則依照法線向量與三個點座標的格式, 分別以浮點數格式進行資料附加
        for f in self.facets:
            for coord in f.coords:
                out.append(struct.pack('3f', *coord))
            # att_bc 則內定為 0
            out.append(struct.pack('H', f.att_bc))
        return b"".join(out)
 
# 必須由三角形座標點求每一個 face 的 normal, 之後建立 StLFacet 後組成 binary STL 內容
stl = StL('Header ...')
for i in range(len(plist)):
    # 每三個點組成一個三角形
    if i%3 == 0:
        vertices = np.array(plist[i]), np.array(plist[i+1]), np.array(plist[i+2])
        #print(vertices)
        normal = np.array(calculate_normal(vertices[0], vertices[1], vertices[2]))
        #print(normal)
        stl.add_facet(StLFacet(tuple(normal), tuple(vertices[0]), tuple(vertices[1]), tuple(vertices[2])))

stl_binary = open("link2_converted_binary.stl", "wb")
stl_binary_content = stl.get_binary()
stl_binary.write(stl_binary_content)
print("已經將 link2_ascii.stl 轉為 link2_converted_binary.stl")
</t>
<t tx="leo.20220523093201.1"></t>
<t tx="leo.20220523093201.10">def __init__(self, height, width):
    self.height = height
    self.width = width
    self.field = []
    self.score = 0
    self.state = "start"
    for i in range(height):
        new_line = []
        for j in range(width):
            # 起始時每一個都填入 0
            new_line.append(0)
        self.field.append(new_line)

</t>
<t tx="leo.20220523093201.11">def new_figure(self):
    self.figure = Figure(3, 0)

</t>
<t tx="leo.20220523093201.12">def intersects(self):
    intersection = False
    for i in range(4):
        for j in range(4):
            if i * 4 + j in self.figure.image():
                # block 到達底部, 左右兩邊界, 或該座標有其他 block
                if i + self.figure.y &gt; self.height - 1 or \
                        j + self.figure.x &gt; self.width - 1 or \
                        j + self.figure.x &lt; 0 or \
                        self.field[i + self.figure.y][j + self.figure.x] &gt; 0:
                    intersection = True
    return intersection

</t>
<t tx="leo.20220523093201.13">def break_lines(self):
    lines = 0
    for i in range(1, self.height):
        zeros = 0
        for j in range(self.width):
            if self.field[i][j] == 0:
                zeros += 1
        if zeros == 0:
            lines += 1
            for i1 in range(i, 1, -1):
                for j in range(self.width):
                    self.field[i1][j] = self.field[i1 - 1][j]
    self.score += lines ** 2

</t>
<t tx="leo.20220523093201.14">def go_space(self):
    while not self.intersects():
        self.figure.y += 1
    self.figure.y -= 1
    self.freeze()

</t>
<t tx="leo.20220523093201.15">def go_down(self):
    self.figure.y += 1
    if self.intersects():
        self.figure.y -= 1
        self.freeze()

</t>
<t tx="leo.20220523093201.16">def freeze(self):
    for i in range(4):
        for j in range(4):
            if i * 4 + j in self.figure.image():
                self.field[i + self.figure.y][j + self.figure.x] = self.figure.color
    self.break_lines()
    self.new_figure()
    if self.intersects():
        self.state = "gameover"

</t>
<t tx="leo.20220523093201.17">def go_side(self, dx):
    old_x = self.figure.x
    self.figure.x += dx
    if self.intersects():
        self.figure.x = old_x

</t>
<t tx="leo.20220523093201.18">def rotate(self):
    old_rotation = self.figure.rotation
    self.figure.rotate()
    if self.intersects():
        self.figure.rotation = old_rotation

\\-4.# Define some colors
\\-4.# from https://stackoverflow.com/questions/3380726/converting-a-rgb-color-tuple-to-a-six-digit-code
</t>
<t tx="leo.20220523093201.19">def key_down(eve):
    key = eve.keyCode
    #if event.type == pygame.QUIT:
    # 32 is pause
    if key == 32:
        done = True
    # 82 is r key to rotate
    if key == 82:
        game.rotate()
    # 40 is down key
    if key == 40:
        pressing_down = True
    # 37 is left key
    if key == 37:
        game.go_side(-1)
    # 39 is right key
    if key == 39:
        game.go_side(1)
    # 68 is d key to move block to bottom
    if key == 68:
        game.go_space()
    # 27 is escape
    # reset the game
    if key == 27:
        game.__init__(20, 10)

</t>
<t tx="leo.20220523093201.2"></t>
<t tx="leo.20220523093201.20">def key_up(eve):
    key = eve.keyCode
    # 40 is down key
    if key == 40:
        pressing_down = False

#while not done:
</t>
<t tx="leo.20220523093201.21">def do_game():
    global counter
    if game.figure is None:
        game.new_figure()
    counter += 1
    if counter &gt; 100000:
        counter = 0
    if counter % (fps // game.level // 2) == 0 or pressing_down:
        if game.state == "start":
            game.go_down()
    
    for i in range(game.height):
        for j in range(game.width):
            ctx.fillStyle = WHITE
            #ctx.scale(game.zoom, game.zoom)
            ctx.fillRect(game.x + game.zoom * j, game.y + game.zoom * i, game.zoom, game.zoom)
            if game.field[i][j] &gt; 0:
                ctx.fillStyle = '#%02x%02x%02x' % colors[game.field[i][j]]
                ctx.fillRect(game.x + game.zoom * j + 1, game.y + game.zoom * i + 1, game.zoom - 2, game.zoom - 1)
            ctx.lineWidth = 1
            ctx.strokeStyle = GRAY
            ctx.beginPath()
            ctx.rect(game.x + game.zoom * j, game.y + game.zoom * i, game.zoom, game.zoom)
            ctx.stroke()
    if game.figure is not None:
        for i in range(4):
            for j in range(4):
                p = i * 4 + j
                if p in game.figure.image():
                    ctx.fillStyle = '#%02x%02x%02x' % colors[game.figure.color]
                    ctx.fillRect(game.x + game.zoom * (j + game.figure.x) + 1,
                                      game.y + game.zoom * (i + game.figure.y) + 1,
                                      game.zoom - 2, game.zoom - 2)

doc.addEventListener("keydown", key_down)
doc.addEventListener("keyup", key_up)
browser.timer.set_interval(do_game, fps)
</t>
<t tx="leo.20220523093201.3">@path ./
# from https://levelup.gitconnected.com/writing-tetris-in-python-2a16bddb5318
# 暫時關閉 system proxy 設定後,  pip install pygame
#import pygame
# 將 pygame 動畫繪圖轉為 Brython
'''
為能在 script src 中導入, 必須將 .py 程式內容透過 cp-to-txt 複製到 .txt
'''
@others
@language python
@tabwidth -4
</t>
<t tx="leo.20220523093201.4"># 導入 random 模組
import random
# 以下為 Brython 新增
from browser import document as doc
from browser import html
import browser.timer

# 利用 html 建立一個 CANVAS 標註物件, 與變數 canvas 對應
canvas = html.CANVAS(width = 400, height = 500, id="canvas")
brython_div = doc["brython_div"]
brython_div &lt;= canvas
ctx = canvas.getContext("2d")

# 定義顏色值數列
colors = [
    (0, 0, 0),
    (120, 37, 179),
    (100, 179, 179),
    (80, 34, 22),
    (80, 134, 22),
    (180, 34, 22),
    (180, 34, 122),
]
</t>
<t tx="leo.20220523093201.5">class Figure:
    # 定義圖形 (Figure) 類別
    x = 0
    y = 0

    figures = [
        [[1, 5, 9, 13], [4, 5, 6, 7]],
        [[4, 5, 9, 10], [2, 6, 5, 9]],
        [[6, 7, 9, 10], [1, 5, 6, 10]],
        [[1, 2, 5, 9], [0, 4, 5, 6], [1, 5, 9, 8], [4, 5, 6, 10]],
        [[1, 2, 6, 10], [5, 6, 7, 9], [2, 6, 10, 11], [3, 5, 6, 7]],
        [[1, 4, 5, 6], [1, 4, 5, 9], [4, 5, 6, 9], [1, 5, 6, 9]],
        [[1, 2, 5, 6]],
    ]

    @others
</t>
<t tx="leo.20220523093201.6">def __init__(self, x, y):
    self.x = x
    self.y = y
    self.type = random.randint(0, len(self.figures) - 1)
    self.color = random.randint(1, len(colors) - 1)
    self.rotation = 0

</t>
<t tx="leo.20220523093201.7">def image(self):
    return self.figures[self.type][self.rotation]

</t>
<t tx="leo.20220523093201.8">def rotate(self):
    self.rotation = (self.rotation + 1) % len(self.figures[self.type])


</t>
<t tx="leo.20220523093201.9">class Tetris:
    level = 2
    score = 0
    state = "start"
    field = []
    height = 0
    width = 0
    x = 100
    y = 60
    zoom = 20
    figure = None

    @others
BLACK = '#%02x%02x%02x' % (0, 0, 0)
WHITE = '#%02x%02x%02x' % (255, 255, 255)
GRAY = '#%02x%02x%02x' % (128, 128, 128)

done = False
fps = 25
game = Tetris(20, 10)
counter = 0

pressing_down = False

</t>
<t tx="leo.20220523094119.1">@language python
import shutil

#shutil.copy(src, dest)
shutil.copy("w14_tetris_brython.py", "w14_tetris_brython.txt")</t>
</tnodes>
</leo_file>
