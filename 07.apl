      ⍝ Day 7: No Space Left On Device

      ⍝ part 1

      loadc←{'$'(≠⊆⊢)⊃⎕NGET AoCPath,⍵}

      ∇anew
       INO←1 3⍴'/' 1 0   ⍝ name, parent, size
       CWD←1
      ∇

      ∇parent mkdir name
       INO←INO⍪1 3⍴name parent 0
      ∇

      ∇replay cmd;args;arg;d;p;amt
       cmd←(⎕UCS 10)(≠⊆⊢)cmd
       :Select ⊃cmd
       :Case ' cd /'
           CWD←1
       :Case ' cd ..'
           CWD←INO[CWD;2]
       :Case ' ls'
           record¨1↓cmd
           d←CWD ⋄ amt←INO[d;3]
           :While d≠1 ⍝ propagate upwards
               p←INO[d;2]
               INO[p;3]+←amt
               d←p
           :EndWhile
       :Else
           arg←2⊃' '(≠⊆⊢)⊃cmd
           CWD←CWD find arg
       :EndSelect
      ∇

      ∇record args;col1;col2
       (col1 col2)←' '(≠⊆⊢)args
       :If 'dir'streq col1
           CWD mkdir col2
       :Else
           INO[CWD;3]+←⍎col1
       :EndIf
      ∇

      ∇i←parent find name;neq;peq
       neq←{name streq ⍵}¨INO[;1]
       peq←parent=INO[;2]
       i←(neq∧peq)⍳1
      ∇

      streq←{∧/⍺=(⍴⍺)↑⍵}

      anew ⋄ replay¨loadc '07.example.txt'
      +/{⍵∧⍵≤100000}INO[;3]
95437

      ⍝ part 2

      CAP←70e6
      NEED←30e6
      ⌊/INO[;3]{h←⍺≥⍵ ⋄ h/⍺∧h}NEED-CAP-INO[1;3]
24933642
