# Objective

Write a program that prints out a multiplication table of the first 10 prime

numbers. The program must run from the command line and print one table to

STDOUT. The first row and column of the table should have the 10 primes, with

each cell containing the product of the primes for the corresponding row and

column.

### Notes

* Consider complexity. How fast does your code run? How does it scale?

* Consider cases where we want N primes.

* Do not use the Prime class from stdlib (write your own code).

* Write tests. Try to demonstrate TDD/BDD.

### Brief Overview of Navid's solution

I opened up the Fixnum class and added methods is_prime?, prime_numbers and multiply_primes.

I also opened up the String class and added method is_integer?.

If you ```ruby prime_multiplication.rb```, from the command line, it will prompt you to enter N in order

to see the first N prime numbers. It handles error checking on the input and will only output the multiplication

table only if you enter a valid integer or just press Enter.

If you press Enter, 10 will be used by default for the value of N.

You can type 'exit' or 'quit' to exit the program. Otherwise, the program will loop and ask you to enter another N

in order to see its output.

### Setup

Clone the repo.
Run ```bundle install```.
Run ```rspec prime_multiplication_spec.rb``` and/or ```ruby prime_multiplication.rb```.