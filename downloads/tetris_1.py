# tetris.py mod from @Glenn code
# May 18, 2015
from graphics import *

### function that draws an F shape on the board
### x, y is board location, in pixels, of upper left corner of the shape
### x is distance in pixels from left margin
### y is distance in pixels from top margin
### position is whether it is up, down, right, or left
def draw_F_shape(x, y, position):
    BLOCKSIZE = 50
    if position == "down":
        for i in range(3):
            rect = Rectangle(Point(x + BLOCKSIZE * i, y), Point(x + BLOCKSIZE * i + BLOCKSIZE, y + BLOCKSIZE))
            rect.setFill("red")
            rect.draw(win)
        rect2 = Rectangle(Point(x, y + BLOCKSIZE), Point(x + BLOCKSIZE, y + BLOCKSIZE + BLOCKSIZE))
        rect2.setFill("red")
        rect2.draw(win)
    elif position == "left":
        for i in range(3):
            rect = Rectangle(Point(x, y + BLOCKSIZE * i), Point(x + BLOCKSIZE, y + BLOCKSIZE * i + BLOCKSIZE))
            rect.setFill("blue")
            rect.draw(win)
        rect2 = Rectangle(Point(x - BLOCKSIZE, y), Point(x, y + BLOCKSIZE))
        rect2.setFill("blue")
        rect2.draw(win)
    elif position == "up":
        for i in range(3):
            rect = Rectangle(Point(x + BLOCKSIZE * i, y), Point(x + BLOCKSIZE * i + BLOCKSIZE, y + BLOCKSIZE))
            rect.setFill("green")
            rect.draw(win)
        rect2 = Rectangle(Point(x + BLOCKSIZE * i, y - BLOCKSIZE), Point(x + BLOCKSIZE * i + BLOCKSIZE, y))
        rect2.setFill("green")
        rect2.draw(win)
    elif position == "right":
        for i in range(3):
            rect = Rectangle(Point(x, y + BLOCKSIZE * i), Point(x + BLOCKSIZE, y + BLOCKSIZE * i + BLOCKSIZE))
            rect.setFill("yellow")
            rect.draw(win)
        rect2 = Rectangle(Point(x + BLOCKSIZE, y + BLOCKSIZE * 2), Point(x + BLOCKSIZE * 2, y + BLOCKSIZE * 3))
        rect2.setFill("yellow")
        rect2.draw(win)
            
win = GraphWin('Rect', 800, 500)

draw_F_shape(50, 50, "down")
draw_F_shape(300, 50, "left")
draw_F_shape(400, 100, "up")
draw_F_shape(600, 50, "right")

win.mainloop()