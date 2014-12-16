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

To setup and run the tests:
- cabal configure --enable-tests
- cabal build
- cabal test


