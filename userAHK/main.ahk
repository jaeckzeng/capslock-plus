; 1. Include the .ahk file(s) containing custom key functions here,
;   or just put the functions here.
;   * A key function must start with "keyFunc_" (case insensitive)

; 2. Add a setting under the [Keys] section in `CapsLock+settings.ini`

; Example:
; 1. There is a key function `keyFunc_example2` in demo.ahk.
; 2. Add below setting under the [Keys] section in `CapsLock+settings.ini`:
;   caps_f7=keyFunc_example2
; 3. Save, reload Capslock+ (CapsLock+F5)
; 4. Press `CapsLock+F7` to invoke the function

#include demo.ahk

keyFunc_example1(){
  msgbox, example1
}

keyfunc_listary(){
    ; 获取选中的文字
    selText:=getSelText()

    ; 发送 win+F 按键（Listary默认的呼出快捷键），呼出Listary
    sendinput, #{s}

    ; 等待 Listary 输入框打开
    winwait, ahk_exe Listary.exe, , 0.5

    ; 如果有选中文字的话
    if(selText){
        ; 在选中的字前面加上"gg "，使用 google 搜索
        selText:="gg " . selText

        ; 输出刚才复制的文字，并按一下`home`键将光标移到开头，以方便加入其它关键词
        sendinput, %selText%{home}
    }
}