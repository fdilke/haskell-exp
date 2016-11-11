Chapter 1
=========

ghc, ghci, runghc = runs Haskell programs as scripts (uncompiled)

ghci:
:?  for help
:set prompt "ghci> "

To import more modules:

    :module + Data.Ratio
    
Can use ghci as a calculator. Note "-" is Haskell's only unary operator. (So 'not' is a function?)
    
note "2 *- 3" fails: Could define an operator *- but we haven't. Example of how to do that:

    let first *- last = (first + last) / (first - last)
    
You're supposed to be able to define the precedence with e.g. "infixl *- 5" (doesn't work, why?)    

