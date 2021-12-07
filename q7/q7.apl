⍝ Advent of Code 2021 - Question 7

input ← ⊃⎕NGET'/home/robertnorman/Projects/advent_of_code_2021/q7/input'1
testdata ← ⊃⎕NGET'/home/robertnorman/Projects/advent_of_code_2021/q7/testdata'1


solvep1 ← ((⊃⍋),(⌊/))∘(+/|)∘((⊃⊢)∘.-(⊃⌽))∘((⊂∘(0,⍳∘(⌈/))),⊂∘⊢)∘((⍎⍤1⊢)∘↑(','(≠⊆⊢)⊢))⊃

solvep2 ← ((⊃⍋),(⌊/))∘(+/)∘(((2⊃⊢),(3⊃⊢))⍴(((+/0,⍳)¨,∘⊃)))∘((⊂∘|((⊃⊢)∘.-(2⊃⊢))),⊂∘((3⊃⊢)),((4⊃⊢)))∘((⊂∘(0,⍳∘(⌈/))),⊂∘⊢,(⌈/),(≢))∘((⍎⍤1⊢)∘↑(','(≠⊆⊢)⊢))⊃

