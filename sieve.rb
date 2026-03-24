class EratosthenesSieve
  attr_reader :limit, :primes

  def initialize(limit)
    @limit = limit
    @primes = []
  end

  def run
    sieve = Array.new(@limit + 1, true)
    sieve[0] = sieve[1] = false

    (2..Math.sqrt(@limit)).each do |i|
      next unless sieve[i]
      (i * i).step(@limit, i) { |j| sieve[j] = false }
    end

    @primes = sieve.each_index.select { |i| sieve[i] }
  end
end

puts "Ingrese la cantidad:"
n = gets.to_i

sieve = EratosthenesSieve.new(n)
sieve.run

puts sieve.primes.join(', ')

