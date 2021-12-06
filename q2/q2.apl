⍝ Advent of Code 2021 - Question 2

input ← ⊃⎕NGET'/home/robertnorman/Projects/advent_of_code_2021/q2/input'1
testdata ← ⊃⎕NGET'/home/robertnorman/Projects/advent_of_code_2021/q2/testdata'1

solvep1 ← {
     strSplit ← ' '(≠⊆⊢)⊢
     strToInt ← (⍎⍤1⊢)
     filterMovement ← ↑{2⊃¨(((↓⍺)⍷⊃¨)strSplit¨⍵)/strSplit¨⍵}
     
     forwardCount ← +/ strToInt ('forward' filterMovement ⍵)
     upCount ← +/ strToInt ('up' filterMovement ⍵)
     downCount ← +/ strToInt ('down' filterMovement ⍵) 
     
     forwardCount × (downCount - upCount)
 }


solvep2 ← {
     strSplit←' '(≠⊆⊢)⊢                                                                
     strToInt←(⍎⍤1⊢)                                                                   
                                                                                       
     values←↑(⍎⍤1⊢)¨(2⊃¨strSplit¨⍵)                                                    
     mask←{⊃¨((↓⍺)⍷⊃¨)strSplit¨⍵}                                                      
                                                                                       
     forwardValues←('forward'mask ⍵)×values                                            
     upValues←('up'mask ⍵)×values                                                      
     downValues←('down'mask ⍵)×values                                                  
                                                                                       
     paddedValues←↓⊆/¨⍉↑(⊆forwardValues downValues upValues)                           
                                                                                       
     finalState←⊃{(⍵[1]+⍺[1])(⍵[2]+(⍵[3]×⍺[1]))(⍵[3]+⍺[2]-⍺[3])}/(⌽paddedValues),⊂0 0 0
                                                                                       
     finalState[1]×finalState[2]                                                       
 }   
