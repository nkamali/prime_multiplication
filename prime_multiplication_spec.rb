require 'rspec'
require_relative 'prime'
require_relative 'is_integer'

describe "Adding prime number methods to Fixnum" do
  context "is_prime?" do
    it "returns true for prime numbers" do
      [1, 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37].each {|n| expect(n.is_prime?).to eq(true) }
    end
    
    it "returns false for non-prime numbers" do
      [4, 6, 8, 10, 12, 14, 15, 18, 20, 21, 22, 24, 25].each {|n| expect(n.is_prime?).to eq(false) }
    end
  end

  context "prime_numbers" do
    it "returns an array of first 10 prime numbers" do
      expect(10.prime_numbers).to eq([1,2,3,5,7,11,13,17,19,23])
    end    
  end

  context "multiply_primes" do
    it "returns a two-dimensional array multiplication table of first 5 prime numbers" do
      product = [[1, 2, 3, 5, 7],
                 [2, 4, 6, 10, 14],
                 [3, 6, 9, 15, 21],
                 [5, 10, 15, 25, 35],
                 [7, 14, 21, 35, 49]]
      expect(5.multiply_primes).to eq(product)
    end    
  end
end

describe "Adding new method to String" do
  context "is_integer?" do
    it "returns true when string contains an integer" do
      expect("234".is_integer?).to eq(true)
    end
    
    it "returns false when string contains mixed characters" do
      expect("234lkh24".is_integer?).to eq(false)
    end

    it "returns false when string contains a float" do
      expect("23.40".is_integer?).to eq(false)
    end

    it "returns false when string non-numerics" do
      expect("this contains no numbers".is_integer?).to eq(false)
    end
  end
end
