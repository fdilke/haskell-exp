haskell-exp
===========

Scratch project for learning Haskell by "test-driven
exploration of language features". The idea is to:

- create a project which can be loaded with IntelliJ IDEA
- use a test framework
- add a test for each new language feature you learn about

You have to use a Cabal sandbox:

    cabal sandbox init

To setup and run the tests:

    build
    
To run the app:
    
    cabal run

Using the HaskForce plugin for IDEA
===================================

Open the project using "New Project...", make it a Haskell project, then
tell it NOT to create a new .cabal file. It will
use the existing one.

You have to cabal-install ghc-mod.
No need to configure the locations of ghc-mod and ghc-modi in
Settings/Haskell Tools.

Then configure HaskForce to use the sandbox in Settings/Haskell Compiler.
Also enable tests and (although this doesn't seem to have any effect)
autoinstallation of dependencies.

There is then a cabal-sand-box-config and .cabal-sandbox/
which I've thoughtfully listed in gitignore.

Also have to configure Haskell tools to look in somewhere like:
/home/casper/casper/haskell-exp/.cabal-sandbox/bin/ghc-mod
and install the tools with e.g. 'cabal install ghc-mod'

If you do all this, the program should build/test/run correctly.
If not, you might be able to investigate the cryptic error "build failed"
by clicking on the bottom mini-pane (with the message) or the Messages tab.


