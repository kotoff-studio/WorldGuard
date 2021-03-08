format PE console
entry start

include 'include\win32a.inc'

section '.data' data readable writeable
message db 'Hello, world!',0
section '.code' code readable executable
start:
  cinvoke printf,message 
  cinvoke getch
  invoke ExitProcess,0
section '.idata' import data readable
library kernel,'kernel32.dll',\
	msvcrt,'msvcrt.dll'

import kernel,\
       ExitProcess,'ExitProcess'

import msvcrt,\
       printf,'printf',\
       getch,'_getch'
