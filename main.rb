# frozen_string_literal: true

require_relative 'LaboratoryTwo'

def part_three
  func_0 = ->(x) { x.to_f * Math.sin(x**2).to_f }
  func_1 = ->(x) { (Math.log(x).to_f / x).to_f }
  func_2 = ->(x) { (Math.sin(x).to_f * Math.cos(x).to_f).to_f }
  p ObjectTwo.intg_lambda(1, 0.1, func_1)
  p ObjectTwo.intg_lambda(2, 0, func_2)
  p ObjectTwo.intg_lambda(1, 0, func_0)
  p ObjectTwo.intg_yield(1, 0.1) { |x| (Math.log(x).to_f / x).to_f }
  p ObjectTwo.intg_yield(2, 0) { |x| (Math.sin(x).to_f * Math.cos(x).to_f).to_f }
  p ObjectTwo.intg_yield(1, 0) { |x| x.to_f * Math.sin(x**2).to_f }
end

p 'Лабораторная работа 5'
choose = 0
ObjectTwo = LaboratoryTwo.new
while choose != 4 do
  print "1 часть\n"
  print "2 часть\n"
  print "3 часть\n"
  print "4.Выход\n"
  choose = gets.to_i
  ObjectTwo.part_one if choose == 1
  p ObjectTwo.part_two 1 if choose == 2
  part_three if choose == 3
  break if choose == 4
end

# part_one
# p part_two 1
# part_three
# x1 = ->(x) { x.to_f * Math.sin(x**2).to_f }
# p x1.is_a?(Proc)
