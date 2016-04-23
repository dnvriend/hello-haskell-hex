# hello-haskell-hex
A small study project on building a Haskell application that uses a library 'hex'.

Shield | Description
-------|------------
| ![License](http://img.shields.io/:license-Apache%202-red.svg) | Apache 2.0
| ![Build with Cabal](https://wiki.haskell.org/wikiupload/c/cd/Cabal-With-Text-small.png) | Build with Cabal

## How to create the project
For a description on how to create a simple project using cabal see the project [hello-haskell](https://github.com/dnvriend/hello-haskell).

## Cabal sandbox
[Sandboxes](http://coldwa.st/e/blog/2013-08-20-Cabal-sandbox.html) allow to build packages in isolation by creating a private package environment for each package. Always use sandboxes in your projects unless you are an expert and know what you are doing! You should read [What are sandboxes and why are they needed?](http://coldwa.st/e/blog/2013-08-20-Cabal-sandbox.html#what-are-sandboxes-and-why-are-they-needed).

```bash
$ cabal sandbox init
```

## Adding a library
We will use the library [hex-0.1.2](http://hackage.haskell.org/package/hex), a library that convert strings into hexadecimal and back. To use the library we must first install the library to the system and then add a dependency on it from our `hello-haskell-hex` project. 

Let's first install the library hex:

```bash
$ cabal install hex
```

Next add a dependency on __hex__. To do that we must edit the file `hello-haskell-hex.cabal` and change the line to:

```haskell
build-depends:       base >=4.8 && <4.9, hex
```

## Main.hs
Use your favorite editor and create the following file `/src/Main.hs`:

```haskell
import Data.Hex

question = "Type a string to convert to hexadecimal"
response inpStr = "The hexadecimal representation of " ++ inpStr ++ " is: " ++ hex inpStr

main :: IO ()
main = do
       putStrLn question
       inpStr <- getLine
       putStrLn $ response inpStr
```

## Running the application
We can now run the application:

```bash
$ cabal run
Preprocessing executable 'hello-haskell-hex' for hello-haskell-hex-0.1.0.0...
Running hello-haskell-hex...
Type a string to convert to hexadecimal
Dennis
The hexadecimal representation of Dennis is: 44656E6E6973
```

Have fun!