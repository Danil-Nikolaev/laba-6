# frozen_string_literal: true

require_relative 'LaboratoryTwo'
gem 'rspec'

RSpec.describe LaboratoryTwo do
  describe '#part_one' do
    it 'something'do
      TestObject = LaboratoryTwo.new
      expect((TestObject.part_one).round(3)).to eq(0.23)
    end
    it 'Something 2' do
      TestObject = LaboratoryTwo.new
      expect((TestObject.part_two(1)).to_f.round(3)).to eq(0.23)
    end
    it 'Something 3' do
      TestObject = LaboratoryTwo.new
      func_0 = ->(x) { x.to_f * Math.sin(x**2).to_f }
      expect((TestObject.intg_lambda(1,0,func_0)).to_f.round(3)). to eq(0.23)
    end
    it 'Something 4' do
      TestObject = LaboratoryTwo.new
      expect((TestObject.intg_yield(1, 0) { |x| x.to_f * Math.sin(x**2).to_f } ).to_f.round(3)).to eq(0.23)
    end
  end
end
