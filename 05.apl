      ⍝ Day 5: Supply Stacks

      ⍝ part 1

      load←{(⎕UCS 10)(≠⊆⊢)⊃⎕NGET AoCPath,⍵}
      trim←{(∨\' '≠⍵)/⍵}
      move←from←to←0

      ∇crates in;n
       n←⊃⊃+/∧\n=⊃n←⍴¨in
       stacks←(1+⊃⍴⊃in)÷4
       dwg←trim¨↓⍉↑{⍵[2+4×¯1+⍳stacks]}¨(n-1)↑in
       proc←{(6⍴0 1)/⍎⍵}¨n↓in
      ∇

      ∇step(n from to);hd
       hd←⌽n↑from⊃dwg
       (from⊃dwg)←n↓from⊃dwg
       (to⊃dwg)←hd,to⊃dwg
      ∇

      crates load'05.example.txt'
      step¨proc
      ⊃¨dwg
CMZ

      ⍝ part 2

      ∇step(n from to);hd
       hd←n↑from⊃dwg   ⍝ removed the reversal ⌽
       (from⊃dwg)←n↓from⊃dwg
       (to⊃dwg)←hd,to⊃dwg
      ∇

      crates load'05.example.txt'
      step¨proc
      ⊃¨dwg
MCD
