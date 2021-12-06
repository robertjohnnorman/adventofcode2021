⍝ Advent of Code 2021 - Question 4

input ← ⊃⎕NGET'/home/robertnorman/Projects/advent_of_code_2021/q4/input'1
testdata ← ⊃⎕NGET'/home/robertnorman/Projects/advent_of_code_2021/q4/testdata'1

solveBingo ← {
   numbers ← (⍎⍤1⊢)↑(','(≠⊆⊢)⊢)⊃⍵
   cards ← ↑¨↓((⍎⍤1⊢))¨↑(1↓⊢)¨(+\(0∊⍴)¨↑(⊂1↓⊢)⍵) ⊆ (↑(⊂1↓⊢)⍵)

   initState ← numbers (0∘×cards) 0
   iter ← {((1↓⊃⍵)) ((((⊂(⊃⊃⍵))⍷¨cards))∨((2⊃⍵))) (⊂(⊃⊃⍵))}

   gameStates ← 1↓¨(⊢∘iter\(⍴numbers)⍴⊂initState)

   cardFinishIndexes ← (1⍳⍨⊢)¨↓⍉↑((∨/((5∊+/),(5∊+⍀)∘⊢))¨)∘⊃¨⊢gameStates
   (winnerCardIndex winnerFinishGameIndex) ← ((⊃⍋),⌊/)cardFinishIndexes
   (loserCardIndex loserFinishGameIndex) ← ((⊃⍒),⌈/)cardFinishIndexes

   winnerScore ← ×/((2⊃⊢),(⊂(+/(+/(↑cards[winnerCardIndex]) × (~winnerCardIndex⊃1⊃⊢)))))↑gameStates[winnerFinishGameIndex]
   loserScore ← ×/((2⊃⊢),(⊂(+/(+/(↑cards[loserCardIndex]) × (~loserCardIndex⊃1⊃⊢)))))↑gameStates[loserFinishGameIndex]

   winnerScore loserScore
}
