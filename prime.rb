class Fixnum
  # If you look at all the factors for an integer,
  # the factors repeat, i.e. if N is 56, 7x8 and 8x7 are
  # factors with the same result and so you only need to loop
  # to the square root of N, in this case being around 7.
  def is_prime?    
    for i in 2..(Math.sqrt(self).to_i)
      return false if self % i == 0      
    end
    true
  end

  # Gives you a list of the first N prime numbers
  def prime_numbers
    primes = [1]
    i = 2
    while primes.size < self
      primes << i if i.is_prime?
      i += 1
    end
    primes
  end

  # produces a two-dimensional array which contains the first N prime numbers
  # along with their product, where N is this Fixnum's integer value.
  def multiply_primes
    primes = self.prime_numbers
    primes.map {|prime1| primes.map{|prime2| prime1 * prime2 }}
  end

end