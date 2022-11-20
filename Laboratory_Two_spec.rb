# frozen_string_literal: true

require_relative 'Laboratory_Two'
gem 'rspec'

RSpec.describe LaboratoryTwo do
  describe '#part_one' do
    it 'something' do
      test_object = LaboratoryTwo.new
      expect(test_object.part_one.round(3)).to eq(0.23)
    end
    it 'Something 2' do
      test_object = LaboratoryTwo.new
      expect(test_object.part_two(1).to_f.round(3)).to eq(0.23)
    end
    it 'Something 3' do
      test_object = LaboratoryTwo.new
      func = ->(x) { x.to_f * Math.sin(x**2).to_f }
      expect(test_object.intg_lambda(1, 0, func).to_f.round(3)).to eq(0.23)
    end
    it 'Something 4' do
      test_object = LaboratoryTwo.new
      expect((test_object.intg_yield(1, 0) { |x| x.to_f * Math.sin(x**2).to_f }).to_f.round(3)).to eq(0.23)
    end
  end
end
