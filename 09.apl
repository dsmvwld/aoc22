      ⍝ Day 9: Rope Bridge

      ⍝ part 1

      load←{(⎕UCS 10)(≠⊆⊢)⊃⎕NGET AoCPath,⍵}

      (U R D L)←↓4 2⍴¯1 0 0 1 1 0 0 ¯1
      mark←{((Z+⍵)⌷M)←1}
      H←T←0 0

      ∇step v;d
       H+←v ⋄ d←H-T
       :If ∨/1<|d
           T+←×d
       :EndIf
       mark T
      ∇
      ∇run(v n);i
       :For i :in ⍳n
          step v
       :EndFor
      ∇
      ∇w draw moves
       H←T←0 0
       M←w w⍴0 ⋄ Z←(w w)÷2
       run¨moves
      ∇
      
      20 draw ⍎¨load'09.example.txt'
      +/+/M
13

      ⍝ part 2

      ∇w pt drags i;d
       d←pt-F[i;]
       :If ∨/1<|d
           F[i;]+←×d
       :EndIf
      ∇
      ∇run(v n);i;j
       :For i :In ⍳n
           F[1;]+←v
           :For j :In ¯1↓⍳⊃⍴F
               F[j;] drags j+1
           :EndFor
           mark (¯1↑F)[1;]
       :EndFor
      ∇
      ∇w draw moves
       F←10 2⍴0 0
       M←w w⍴0 ⋄ Z←(w w)÷2
       run¨moves
      ∇

      30 draw ⍎¨load'09.example2.txt'
      +/+/M
36
