      ⍝ Day 6: Tuning Trouble

      ⍝ part 1

      load←{(⎕UCS 10)(≠⊆⊢)⊃⎕NGET AoCPath,⍵}

      win←{(1-⍺)↓⍉(¯1+⍳⍺)⌽(⍺,⍴⍵)⍴⍵}
      starter←{~∨/1<+/⍵∘.=⍵}
      sync←{(⍺-1)+(starter¨↓⍺ win ⍵)⍳1}
      4 sync ⊃load'06.example.txt'
7

      ⍝ part 2

      14 sync ⊃load'06.example.txt'
19
