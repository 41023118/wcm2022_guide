# get data using AJAX from https://qry.nfu.edu.tw/studlist_ajax.php
'''
2022 Spring
1a 網際內容管理: semester=1102 courseno=0729

5j 網際內容管理: semester=1102 courseno=2423

2a 協同產品設計實習: semester=1102 courseno=0752

2b協同產品設計實習: semester=1102 courseno=0764

'''
# 從 browser 導入 document
from browser import document
# 使用者可以透過 window 當作介面使用其他 Javascript 功能
from browser import html, window, ajax
# https://www.brython.info/static_doc/en/ajax.html
 
brython_div = document["brython_div"]
output = html.DIV("填入學期與課程代號, 可列出該課程修課學員!")
output.id = "output"
brython_div <= output
 
# 插入輸入表單
form = html.FORM()
S = html.INPUT(type="text", id="semester", size="10", name="semester", value="1102")
C = html.INPUT(type="text", id="courseno", size="10", name="courseno", value="2423")
button = html.BUTTON("Get", id="Get")
form <= "semester: " + S + html.BR()
form <= "courseno: " + C + html.BR()
brython_div <= form + button + html.BR()
 
def log(*args):
    output = document["output"]
    output.html += ', '.join(str(arg) for arg in args)
 
def show(req):
    document["output"].clear()
    log(req.text)
     
def on_complete(req):
    document["output"].clear()
    if req.status==200 or req.status==0:
        document["output"] <= req.text
    else:
        document["output"] <= "error " + req.text
          
def post(ev):  
    # semester 為 id="semester" 輸入欄位中所輸入的值
    semester = document['semester'].value
    # courseno 為 id="courseno" 輸入欄位中所輸入的值        
    courseno = document['courseno'].value
    url = "https://nfulist.herokuapp.com/"
    data = {'semester': semester, 'courseno': courseno}
    ajax.get(url,
             oncomplete=show,
             data=data)
  
# 使用者按下 id="calculate" 按鈕, 將會執行上述 get("/add_numbers") 函式
document['Get'].bind('click', post)