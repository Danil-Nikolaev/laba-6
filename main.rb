# frozen_string_literal: true

require_relative 'Laboratory_Two'

def part_three
  func_zero = ->(x) { x.to_f * Math.sin(x**2).to_f }
  func_one = ->(x) { (Math.log(x).to_f / x).to_f }
  func_two = ->(x) { (Math.sin(x).to_f * Math.cos(x).to_f).to_f }
  p ObjectTwo.intg_lambda(1, 0.1, func_zero)
  p ObjectTwo.intg_lambda(2, 0, func_one)
  p ObjectTwo.intg_lambda(1, 0, func_two)
  p ObjectTwo.intg_yield(1, 0.1) { |x| (Math.log(x).to_f / x).to_f }
  p ObjectTwo.intg_yield(2, 0) { |x| (Math.sin(x).to_f * Math.cos(x).to_f).to_f }
  p ObjectTwo.intg_yield(1, 0) { |x| x.to_f * Math.sin(x**2).to_f }
end

p 'Лабораторная работа 5'
choose = 0
ObjectTwo = LaboratoryTwo.new
while choose != 4
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
