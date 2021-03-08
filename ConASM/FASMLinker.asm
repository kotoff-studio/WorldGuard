format PE console
entry start

include 'include\win32a.inc'

section '.data' data readable writeable
message db 'Hello, world!',0
section '.code' code readable executable
start:
; CINVOKE макрос в составе FASM.
; Позволяет вызывать CDECL-функции. 
  cinvoke printf,message 
  cinvoke getch
; INVOKE аналогичный макрос для STDCALL-функций. 
  invoke ExitProcess,0
section '.idata' import data readable
library kernel,'kernel32.dll',\
	msvcrt,'msvcrt.dll'

import kernel,\
       ExitProcess,'ExitProcess'

import msvcrt,\
       printf,'printf',\
       getch,'_getch'
