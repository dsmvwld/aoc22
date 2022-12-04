      ⍝ Day 3: Rucksack Reorganization

      ⍝ part 1

      load←{(⎕UCS 10)(≠⊆⊢)⊃⎕NGET AoCPath,⍵}
      prio←{((⎕UCS 96+⍳26),⎕A)⍳⍵}
      halves←{n←2÷⍨⍴⍵ ⋄ (⊂n↑⍵),⊂n↓⍵}
      shared←{(a b)←⍵ ⋄ ⊃a∩b}
      +/shared¨{prio¨⍵}¨halves¨load'03.example.txt'
157

      ⍝ part 2

      group←{((⍴⍵)⍴1 0 0)⊂⍵}
      common←{(a b c)←⍵ ⋄ ⊃a∩b∩c}
      +/common¨{prio¨⍵}¨group load'03.example.txt'
70
