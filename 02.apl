      ⍝ Day 2: Rock Paper Scissors

      ⍝ part 1

      load←{(⎕UCS 10)(≠⊆⊢)⊃⎕NGET AoCPath,⍵}
      (A B C)←⍳3
      (X Y Z)←⍳3
      vs←{(3 3⍴0.5 0 1 1 0.5 0 0 1 0.5)[⍺;⍵]}
      score←{⍵[2]+6×⍵[2] vs ⍵[1]}
      +/score¨⍎¨load'02.example.txt'
15

      ⍝ part 2

      strat←{1+3|⍵-2 1 0[⍺]}
      +/{(a b)←⍵ ⋄ m←b strat a ⋄ m+6×m vs a}¨⍎¨load'02.example.txt'
12
