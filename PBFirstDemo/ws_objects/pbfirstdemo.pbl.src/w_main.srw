$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type dw_login from datawindow within w_main
end type
type cb_msg from commandbutton within w_main
end type
type cb_close from commandbutton within w_main
end type
end forward

global type w_main from window
integer width = 4754
integer height = 1980
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
dw_login dw_login
cb_msg cb_msg
cb_close cb_close
end type
global w_main w_main

on w_main.create
this.dw_login=create dw_login
this.cb_msg=create cb_msg
this.cb_close=create cb_close
this.Control[]={this.dw_login,&
this.cb_msg,&
this.cb_close}
end on

on w_main.destroy
destroy(this.dw_login)
destroy(this.cb_msg)
destroy(this.cb_close)
end on

event open;dw_login.insertRow(0)
end event

type dw_login from datawindow within w_main
integer x = 905
integer y = 292
integer width = 1659
integer height = 316
integer taborder = 10
string title = "none"
string dataobject = "d_login"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_msg from commandbutton within w_main
integer x = 2286
integer y = 1504
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Message"
end type

event clicked;msg("Hi! How are you today? good morning")
end event

type cb_close from commandbutton within w_main
integer x = 1815
integer y = 1504
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Close"
end type

event clicked;Close(parent)
end event

