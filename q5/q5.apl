⍝ Advent of Code 2021 - Question 5

input ← ⊃⎕NGET'/home/robertnorman/Projects/advent_of_code_2021/q5/input'1
testdata ← ⊃⎕NGET'/home/robertnorman/Projects/advent_of_code_2021/q5/testdata'1


solve ← {
  coords ← (⍎⍤1⊢)↑↑↑((⊂','(≠⊆⊢)¨⊃),(⊂','(≠⊆⊢)¨(3⊃⊢)))↓⍉↑((' '(≠⊆⊢)⊢)⊢)¨⍵

  diffs ← ↓⍉↑(((⊂∘-(1×∘↓(-⌿↑)))),(⊂(1⊃∘↓↓)))coords

  movements ← ((⊂2⊃⊢),(⊂3⊃⊢),((⊂1⊃⊢)÷(3⊃⊢)))¨((⊂⊃),(⊂2⊃⊢),⊂∘((⌈/∘|⊃)))¨diffs

  allPoints ← {((↓⊃⍵)+((0,⍳(2⊃⍵))×(↓3⊃⍵)))+1}¨movements
  cardinalPoints ← {((↓⊃⍵)+((0,⍳(2⊃⍵))×(↓3⊃⍵)))+1}¨(((0∊3⊃⊢)¨movements) / movements)

  empty ← {⍵ ⍵ ⍴ 0}(⌈/1+,coords)
  numOverlapsOf ← {+⌿+/1<↑+⌿↑(+⌿↑∘({(1@(↓⍵))empty})¨)¨(⍵)}

  (numOverlapsOf cardinalPoints) (numOverlapsOf allPoints)
}
