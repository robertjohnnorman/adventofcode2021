run ←    ⊃{                      ⍝ next item is ⍺
        (A B C)←⍵           ⍝ named items of tuple ⍵
        A∆←A ... ⍺          ⍝ new value for A depending on item ⍺
        C∆←C ... A∆ ... ⍺   ⍝ new value for C depending on A∆ and item ⍺
        ...                 ⍝ ...
        A∆ B C∆             ⍝ "successor" tuple (A and C changed)
    }/(⌽items),⊂A B C       ⍝ for each item and initial state tuple A B C
