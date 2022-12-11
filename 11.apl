      ⍝ Day 11: Monkey in the Middle

      ⍝ part 1

      load←{(⎕UCS 10)(≠⊆⊢)⊃⎕NGET AoCPath,⍵}
      split←{((6÷⍨⊃⍴⍵)6)⍴⍵}
      gsub←{s←⍵ ⋄ ((s∊⍺[1])/s)←⍺[2] ⋄ s}
      lastn←{⍎⊃¯1↑' '(≠⊆⊢)⍵}

      ∇(active items expr q t f)←parse para
       active←0
       items←⍎', 'gsub 2⊃':'(≠⊆⊢)2⊃para
       expr←'*×'gsub 2⊃'='(≠⊆⊢)3⊃para
       q←lastn 4⊃para
       t←1+lastn 5⊃para
       f←1+lastn 6⊃para
      ∇
      ∇i receive w;m
       m←i⊃Monkeys
       (2⊃m),←w
       (i⊃Monkeys)←m
      ∇
      ∇m inspect item;a;i;expr;q;t;f
       (a i expr q t f)←m
       old←item ⋄ w←⌊(⍎expr)÷3
       :If 0=q|w
           t receive w
       :Else
           f receive w
       :EndIf
      ∇
      ∇i turn m;items;n
       items←(2⊃m)
       →(0=n←⊃⍴items)/0
       {m inspect ⍵}¨items
       (1⊃m)+←⊃⍴items
       (2⊃m)←⍬
       (i⊃Monkeys)←m
      ∇
      ∇rounds n;i;j
       :For i :In ⍳n
           :For j :In ⍳⍴Monkeys
               j turn j⊃Monkeys
           :EndFor
       :EndFor
      ∇

      Monkeys←parse¨↓split load'11.example.txt'
      play
      ×/2↑{⍵[⍒⍵]}{⊃⊃⍵}¨Monkeys
10605

      ⍝ part 2

      ∇rounds n;i;j
       MOD←∧/{4⊃⍵}¨Monkeys
       :For i :In ⍳n
           :For j :In ⍳⍴Monkeys
               j turn j⊃Monkeys
           :EndFor
       :EndFor
      ∇
      ∇m inspect item;a;i;expr;q;t;f;w
       (a i expr q t f)←m
       old←item ⋄ w←⍎expr
       :If 0=q|w
           t receive MOD|w
       :Else
           f receive MOD|w
       :EndIf
      ∇

      Monkeys←parse¨↓split load'11.example.txt'
      rounds 10000
      ⊃×nats/2↑{⍵[⍒⍵]}{⊃⊃⍵}¨Monkeys
2713310158
