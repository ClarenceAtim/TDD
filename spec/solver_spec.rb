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
end
