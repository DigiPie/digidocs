# Arguments

*Last updated on 10 Mar, 2019*

In this section you will find my notes on command line arguments which are passed into the `main()` function.

## Print out arguments
The example program below prints out all command line arguments passed into the `main()` function.

**print-arguments.c**
```C
#include <stdio.h>

int main(int argc, char **argv) {
    for (int i = 0; i < argc; i++) {
        printf("%s\n", argv[i]);
    }
}
```

Key details:

- `argc` - the number of arguments passed into the program
- `argv` - the array of character pointers (strings) containing all arguments
- `argv[0]` - the first argument which is also the name of the program

To use:

- Enter the above code into a file (e.g. `print-arguments.c`).
- Compile the code with `gcc print-arguments.c -o print-arguments`.
- Run the executable with `./print-arguments test`.

## Stuff to try

- Run the executable with `./print-arguments $USER` to pass in the environment variable `USER`.
