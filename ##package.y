name:                haskellblog
version:             0.1.0.0
github:              "githubuser/haskellblog"
license:             BSD3
author:              "Author name here"
maintainer:          "example@example.com"
copyright:           "2018 Author name here"

extra-source-files:
- README.md
- ChangeLog.md

# Metadata used when publishing your package
# synopsis:            Short description of your package
# category:            Web

# To avoid duplicated efforts in documentation and dealing with the
# complications of embedding Haddock markup inside cabal files, it is
# common to point users to the README.md file.
description:         Please see the README on GitHub at <https://github.com/githubuser/haskellblog#readme>

dependencies:
- base >= 4.7 && < 5

library:
  source-dirs: src

executables:
  haskellblog-exe:
    main:                Main.hs
    source-dirs:         app
    ghc-options:
    - -threaded
    - -rtsopts
    - -with-rtsopts=-N
    dependencies:
    - haskellblog

tests:
  haskellblog-test:
    main:                Spec.hs
    source-dirs:         test
    ghc-options:
    - -threaded
    - -rtsopts
    - -with-rtsopts=-N
    dependencies:
    - haskellblog
