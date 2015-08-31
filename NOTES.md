ghci
====

tell what type x is

    :t x        

enable multiline input

    :set +m     

sample function definition (put all on one line with ; if not in multiline mode)

    let fac 0 = 1
        fac n = b * fac(n - 1)
    
redefine command prompt
note, can put these in a ~/.ghci or ~/.ghc/ghci.conf
            
    :set prompt "λ "            

    
Language
========
    
Can use $ and . to get rid of most other punctuation. Details? Binding?

Nim triples with list comprehensions:

    import Data.Bits
    let range = [1..8]
    [ (a,b,c) | a <- range, b <- range, c <- range, a < b, b < c, xor a b == c ]

Infinite data structures
    
    let doubles = zipWith (+) h h  where h = [1..100]
    fibs = 0 : zipWith (+) fibs (1 : fibs)

Sketch of how to do primes
        
    let hasNoDivisor n list = null [ d | d <- list, mod n d == 0 ]
    let primes = 2 : minimum [ p | p <- [1..], hasNoDivisor p primes ]
        