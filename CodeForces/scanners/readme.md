# Scanner classes

These 16 files implement the same stdin input class, in an attempt to completely standardize the input system. All of these implementations will hoepfully work the exact same way.

These scanners work on a token based system, where tokens are everything space seperated, so the input of "a 1 9.5 word" is 4 tokens, which will be read and parsed in that order. Very little validation or error prevention is done, as the inputs for these types of problems are very consistent and predictable. The next line will be read only on demand.

## Functions implemented

### nextInt
This will pull the next token and return it as an int.

### nextDouble
This will pull the next token and return it as a double.

### nextLong
This will pull the next token and return it as a 64 bit int. This is implemented in all languages, despite only some having this be a special data type.

### nextWord
This will pull the next token and return it as a string.

### nextString
This will empty the entire buffer and return all tokens as a space seperated string.

### nextIntArray
This will empty the entire buffer, parsing all tokens as an int, and returning them as an array. This has an option that will return this array sorted smallest->largest as well.

### nextLongArray
Same thing as above, but with 64 bit ints instead. This is implemented everywhere, even if the langauge makes no difference

## Language differences
Some languages have some quirks that make using the scanner class slightly different.

### Elixir
- The scanner will time out after a short while and crash the program if no input is given
- the nextDouble function must have a decimal. "5" will crash the program while "5.0" will work fine.

### R
- You must type in input line by line, piping in an input file will cause only the first line to be read.

### Typescript
- You must type in input line by line, piping in an input file will cause only the first line to be read.
- You must manually close the scanner when you are done with it. Not doing this will cause the program to hang forever.
