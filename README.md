haskell-exp
===========

Scratch project for learning Haskell by "test-driven
exploration of language features". The idea is to:

- create a project which can be loaded with IntelliJ IDEA
- use a test framework
- add a test for each new language feature you learn about

Setting up the IDE just requires:

- use the IntelliJ plugin, not ideah
- configure the Haskell-platform-installed SDK
- create the project with no SDK, then add the configured one

To setup and run the tests, run "build"

Using the HaskForce plugin for IDEA
===================================

Open the project using "New Project...", then
talling it NOT to create a new .cabal file. It will
use the existing one.

You have to cabal-install ghc-mod, and configure
the locations of ghc-mod and ghc-modi in Settings/Haskell Tools.

You have to use a Cabal sandbox:
cabal sandbox init
then configure HaskForce to use this in Settings/Haskell Compiler

There is then a cabal-sand-box-config and .cabal-sandbox/
which may as well be added to gitignore.

If you do all this, the program should build/test/run correctly.
If not, you might be able to investigate the cryptic error "buiold failed"
by clicking on the bottom mini-pane (with the message) or the Messages tab.


