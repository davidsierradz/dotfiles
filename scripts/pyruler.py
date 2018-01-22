#!/usr/bin/env python2

# Show a ruler, in pixels.

# Copyright 2007 by Akkana Peck.
# You may use, distribute or modify this program under the terms of the GPL.

VersionString = "PyTopo Version 0.5, Copyright (c)2006 by Akkana Peck."

import sys, os, gtk

gHorizontal = True
gStep = 10

# X/gtk graphics global variables we need:
gDrawing_area = 0
gGc = 0
gWidth = 800
gHeight = 20
gWin = 0

# Need a null event for the spurious focus events:
def nop(*args) :
    return True

def expose(widget, event) :
    global gGc, Width, gHeight
    if gGc == 0 :
        gGc = gDrawing_area.window.new_gc()

    gWidth, gHeight = gDrawing_area.window.get_size()

    if gHorizontal :
        bigdim = gWidth
        smalldim = gHeight
    else :
        bigdim = gHeight
        smalldim = gWidth
    ticsize = smalldim / 7
    for i in range(gStep, bigdim, gStep) :
        if i % 100 == 0 :
            thistic = ticsize * 4
        elif i % 50 == 0 :
            thistic = ticsize * 2
        else :
            thistic = ticsize
        if gHorizontal :
            gDrawing_area.window.draw_line(gGc, i, 0, i, thistic)
            gDrawing_area.window.draw_line(gGc, i, smalldim,
                                                i, smalldim-thistic)
        else :
            gDrawing_area.window.draw_line(gGc, 0, i, thistic, i)
            gDrawing_area.window.draw_line(gGc, smalldim, i,
                                                smalldim-thistic, i)

    #gDrawing_area.window.draw_line(gGc, 0, 0, gWidth, gHeight)
    return True

def resize(new_width, new_height) :
    global gWidth, gHeight
    gWidth = new_width
    gHeight = new_height
    gDrawing_area.set_size_request(10, 10)
    # For some reason, resizing gDrawing_area.window or
    # gDrawing_area.parent.window doesn't work; we have
    # to save the original window.
    gWin.resize(gWidth, gHeight)

def key_press(widget, event) :
    global gWidth, gHeight, gHorizontal
    if event.string == "q" :
        sys.exit(0)
        return True
    if event.string == "h" and not gHorizontal :
        gHorizontal = True
        resize(gHeight, gWidth)
        expose
        return True
    if event.string == "v" and gHorizontal :
        gHorizontal = False
        resize(gHeight, gWidth)
        expose
        return True
    return True

def init() :
    global gWin, gDrawing_area, gGc, gWidth, gHeight

    gWin = gtk.Window()
    gWin.set_name("PyRuler")
    gWin.connect("destroy", gtk.main_quit)

    gDrawing_area = gtk.DrawingArea()
    gDrawing_area.set_size_request(gWidth, gHeight)
    gWin.add(gDrawing_area)
    gDrawing_area.show()

    gDrawing_area.set_events(gtk.gdk.EXPOSURE_MASK)
    gDrawing_area.connect("expose-event", expose)

    # The default focus in/out handlers on drawing area cause
    # spurious expose events.  Trap the focus events, to block that:
    gDrawing_area.connect("focus-in-event", nop)
    gDrawing_area.connect("focus-out-event", nop)

    # Handle key presses on the drawing area.
    # If seeing spurious expose events, try setting them on win instead,
    # and comment out gtk.CAN_FOCUS.
    gDrawing_area.set_flags(gtk.CAN_FOCUS)
    gDrawing_area.connect("key-press-event", key_press)

    gWin.show()
    gtk.main()

init()
