require './is_integer'
require './prime'

class PrimeMultiplication
  class << self
    def prompt
      print '> '
      gets.strip
    end

    def print_prime_multiplication_table(primes_multi_array)
      puts "\nMultiplication Table for the first #{primes_multi_array.size} prime numbers:"
      primes_multi_array.each do |primes|
        primes.each do |prime| 
          printf(" | %-5d", prime)
        end
        printf("\n")        
      end
    end

    def prompts
      puts %{ Type in a number N followed by Enter key to see
  a multiplication table of the first N prime numbers
  or leave blank to use N=10 as the default.}

      while user_input = prompt # loop while getting user input
        if user_input.is_integer? || user_input.empty?
          user_input = user_input.empty? ? 10 : user_input.to_i
          if user_input < 2
            puts "N must be a number greater than 1!"
            next
          end

          print_prime_multiplication_table(user_input.multiply_primes)
        elsif %{exit quit}.include? user_input
          exit
        else
          puts "Only integers are accepted!"  
        end
      end
    end
  end
end

PrimeMultiplication.prompts