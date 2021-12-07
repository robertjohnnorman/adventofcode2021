⍝ Advent of Code 2021 - Question 6

input ← ⊃⎕NGET'/home/robertnorman/Projects/advent_of_code_2021/q6/input'1
testdata ← ⊃⎕NGET'/home/robertnorman/Projects/advent_of_code_2021/q6/testdata'1

⍝ First solution, works for part 1 only
solve ← ≢∘((((↑,/)((↓7×0⍷⊢)+(1-⍨∘↓⊢)),((8+0×⊢)(⍳(+/0⍷⊢))))⊢)⍣80)((⍎⍤1⊢)¨','(≠⊆⊢)⊃)

⍝ Final solution, works for both parts
solve ← {{(+/((↑((⊂(0 0 0 0 0 0 1 0 0)×(⊃))+(⊂1⌽⊢)))⍣256))⍵} ↑+/(¯1⌽⊢)¨{(((⊃⌽⍵)@(⊃⍵))(0×⍳9))}¨↓{(⍺),≢⍵}⌸(⍎⍤1⊢)¨','(≠⊆⊢)⊃⍵}
