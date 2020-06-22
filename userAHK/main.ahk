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
    ; ��ȡѡ�е�����
    selText:=getSelText()

    ; ���� win+F ������ListaryĬ�ϵĺ�����ݼ���������Listary
    sendinput, #{s}

    ; �ȴ� Listary ������
    winwait, ahk_exe Listary.exe, , 0.5

    ; �����ѡ�����ֵĻ�
    if(selText){
        ; ��ѡ�е���ǰ�����"gg "��ʹ�� google ����
        selText:="gg " . selText

        ; ����ղŸ��Ƶ����֣�����һ��`home`��������Ƶ���ͷ���Է�����������ؼ���
        sendinput, %selText%{home}
    }
}