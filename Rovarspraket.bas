'Rovarspraket
'Solution for an idea from the app “Idea bag 2“
'
'init variables
validString$ = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" ' contains all letters to convert, all others stay unconverted
txt$ = "" 'contains the userstring
ts$ = ""  'contains every single letter of the userstring
rs$ = ""  'contains the converted string in 'Rovarspraket'
'
'asking the user for an input
Input "Please type a word or a phrase ...", txt$
'loop to seperate each letter, decide to convert or not
For f = 1 to len(txt$)
  t$ = mid$(txt$, f, 1)
  if instr(validString$, upper$(t$), 1) <> 0 then
					
      if instr("AEIOU", upper$(t$), 1) <> 0 then
        r$ = r$ + t$
        goto weiter
      Endif
      r$ = r$ + t$ + "o" + lower$(t$)
  else 
    r$ = r$ + t$
  Endif
weiter:
next f
'output the new text in 'Rovarspraket'
print txt$ + " = " + r$
