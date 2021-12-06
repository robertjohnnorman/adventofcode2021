⍝ Advent of Code 2021 - Question 3

input ← ⊃⎕NGET'/home/robertnorman/Projects/advent_of_code_2021/q3/input'1
testdata ← ⊃⎕NGET'/home/robertnorman/Projects/advent_of_code_2021/q3/testdata'1


solvep1 ← */2(⊥,⊥∘~)((+⌿∘↑'1'=⊢¨)>(0.5×⍴))

solvep2 ← {
     matrix ← (↑'1'=⊢¨)⍵                                                  
                                                                        
     idxed ← (⊂⍳⊃⍴matrix),⊂(matrix)                                       
                                                                        
     oxyvals ← ↑{(↓2⊃⍵)/⍨(⊃⍷(2⊃⊢))((+/≥(0.5×⍴)),⊆)1⊃↓⍉2⊃⍵}                
     oxyids ← ↑{(1⊃⍵)/⍨(⊃⍷(2⊃⊢))((+/≥(0.5×⍴)),⊆)1⊃↓⍉2⊃⍵}                  
     co2vals ← ↑{(↓2⊃⍵)/⍨(⊃⍷(2⊃⊢))((+/<(0.5×⍴)),⊆)1⊃↓⍉2⊃⍵}                
     co2ids ← ↑{(1⊃⍵)/⍨(⊃⍷(2⊃⊢))((+/<(0.5×⍴)),⊆)1⊃↓⍉2⊃⍵}                  
                                                                        
                                                                        
     oxyloops ← ⊢∘{(⊂oxyids ⍵),⊂(1⌽oxyvals ⍵)}\(1+2⊃⍴matrix)⍴⊂            
     co2loops ← ⊢∘{(⊂co2ids ⍵),⊂(1⌽co2vals ⍵)}\(1+2⊃⍴matrix)⍴⊂            
                                                                        
                                                                        
     oxyRating ← 2⊥((1⍳⍨⊃↓⍉≢¨↑oxyloops idxed)⊃(1⊃¨oxyloops idxed))⊃↓matrix
     co2Rating ← 2⊥((1⍳⍨⊃↓⍉≢¨↑co2loops idxed)⊃(1⊃¨co2loops idxed))⊃↓matrix
                                                                        
     oxyRating×co2Rating                                                
 }     
