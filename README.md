### BUILDING AND RUNNING

To get started, download and extract JFlex and CUP, and
set two environment variables to your locations of JFlex and CUP. For example:
```
  export JFLEX_DIR=$HOME/jflex-1.7.0
  export CUP_DIR=$HOME/cup
```

### The simplest option is to just download and extract the same versions I'm using:
JFlex 1.7.0 (https://jflex.de/release/jflex-1.7.0.tar.gz) and
CUP 0.11b-20160615 (http://www2.cs.tum.edu/projects/cup/releases/java-cup-bin-11b-20160615.tar.gz).


### To build the lexer, parser, and interpreter:
```
  cd quandary/skeleton
  make
```

### To run the interpreter:
```
  ./quandary [OPTIONS] QUANDARY_PROGRAM INTEGER_ARG_TO_MAIN
```

### Code Examples for this quandary language
```
    cd quandary/examples
```