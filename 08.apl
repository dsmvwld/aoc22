      ⍝ Day 8: Treetop Tree House

      ⍝ part 1

      load←{(⎕UCS 10)(≠⊆⊢)⊃⎕NGET AoCPath,⍵}
      shadow←{⌈\⍵}
      lvis←{{⍵>0}¯1↓(1↓⍵)-¯1↓⍵}
      rvis←{⌽lvis shadow⌽⍵}
      vis←{(lvis shadow ⍵)∨rvis ⍵}
      inner←{¯1↓1↓⍵}
      fvis←{(inner vis¨⍵)∨↓⍉↑inner vis¨↓⍉↑⍵}
      tally←{⊃(4×¯1+⍴⍵)++/+/↑fvis ⍵}
      tally{⍎¨⍵}¨load'08.example.txt'
21

      ⍝ part 2

      sight←{(⍴⍵)⌊(⍵≥⍺)⍳1}

      ∇s←f score(r c);n;L;R;D;U;hd;tl
       n←⍳⊃⍴f
       (hd tl)←c(≠⊆⊢)n ⋄ R←f[r;tl] ⋄ L←⌽f[r;hd]
       (hd tl)←r(≠⊆⊢)n ⋄ D←f[tl;c] ⋄ U←⌽f[hd;c]
       s←⊃⊃×/{f[r;c]sight ⍵}¨R L D U
      ∇

      ∇s←best f;n;r;c
       n←inner ⍳⊃⍴f ⋄ s←0
       :For r :In n
           :For c :In n
               s←s⌈f score r c
           :EndFor
       :EndFor
      ∇

      best↑{⍎¨⍵}¨load'08.example.txt'
8
