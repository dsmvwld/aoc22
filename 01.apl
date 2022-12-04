      ⍝ Day 1: Calorie Counting

      ⍝ part 1

      loadv←{f←⊃⎕NGET AoCPath,⍵ ⋄ (1,(⍉2=↑⍴¨(⎕UCS 10)(=⊆⊢)f)[1;])⊂⍎¨(⎕UCS 10)(≠⊆⊢)f}
      ⌈/+/¨loadv'01.example.txt'
24000

      ⍝ part 2

      top←{3↑⍵[⍒⍵]}
      +/top+/¨loadv'01.example.txt'
45000
