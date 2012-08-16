persistent-hspec-example
=======================

# How to run tests

## 1. Setup Database

```
$ runhaskell Migrate.hs
```

## 2. Run tests

```
$ cabal configure --enable-tests && cabal build && cabal test
```

or

```
$ runhaskell test/Spec.hs
```
