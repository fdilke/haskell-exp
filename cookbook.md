Anonymous function

    (\x -> x + 1) 4
    
Infix operator

    let first *- last = (first + last) / (first - last)

Iterating a function

    :module Data.List
    take 3 $ iterate (\x -> x + 1) 4
    
    