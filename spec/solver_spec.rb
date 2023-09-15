require_relative '../solver'

RSpec.describe Solver do
  subject(:solver) { described_class.new }

  describe '#factorial' do
    it 'returns 1 for 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'returns the correct factorial for a positive integer' do
      expect(solver.factorial(5)).to eq(120)
      expect(solver.factorial(3)).to eq(6)
    end

    it 'raises an exception for negative integers' do
      expect { solver.factorial(-1) }.to raise_error(ArgumentError, 'Input must be a non-negative integer')
    end
  end

  describe '#reverse' do
    it 'reverses a string' do
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" when given a multiple of 3' do
      solver = Solver.new
      expect(solver.fizzbuzz(9)).to eq('fizz')
    end

    it 'returns "buzz" when given a multiple of 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(10)).to eq('buzz')
    end

    it 'returns "fizzbuzz" when given a multiple of both 3 and 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'returns the number as a string for other cases' do
      solver = Solver.new
      expect(solver.fizzbuzz(7)).to eq('7')
    end
  end
end
