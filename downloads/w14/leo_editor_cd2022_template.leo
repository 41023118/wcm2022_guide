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
    theTypes = ['.lua'] 
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
</tnodes>
</leo_file>
