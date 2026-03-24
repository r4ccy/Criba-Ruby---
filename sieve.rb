class EratosthenesSieve
  attr_reader :limit, :primes

  def initialize(limit)
    @limit = limit
    @primes = []
  end
end

puts "Ingrese la cantidad:"
n = gets.to_i

sieve = EratosthenesSieve.new(n)
puts sieve.limit

