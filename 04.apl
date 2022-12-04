      ⍝ Day 4: Camp Cleanup

      ⍝ part 1

      load←{(⎕UCS 10)(≠⊆⊢)⊃⎕NGET AoCPath,⍵}
      parse←{⍎¨'-'(≠⊆⊢)⍵}
      range←{(f t)←⍵ ⋄ (f≤⍳⍺)∧t≥⍳⍺}
      fully←{(a b)←⍵ ⋄ (∧/a=a∧b)∨∧/b=a∧b}
      +/{fully 10 range¨parse¨⍵}¨{','(≠⊆⊢)⍵}¨load'04.example.txt'
2

      ⍝ part 2

      overlap←{(a b)←⍵ ⋄ ∨/a∧b}
      +/{overlap 10 range¨parse¨⍵}¨{','(≠⊆⊢)⍵}¨load'04.example.txt'
4