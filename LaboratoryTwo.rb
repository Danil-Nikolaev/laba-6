# frozen_string_literal: true

# this class have method for laboratory two
class LaboratoryTwo
  def part_one
    n = 1
    x = 1
    f = x * Math.sin(x**2)
    k = 1 / n
    s_real = (1 - Math.cos(1)) / 2
    s = k * f
    p s_real
    while (s_real - s).abs > 0.000001
      n += 1000
      f = 0
      (1..n).each do |i|
        x = (i.to_f / n).to_f
        f += (x.to_f * Math.sin(x**2).to_f).to_f
      end
      s = (f / n).to_f
    end
    p n
    s
  end

  def part_two(n)
    return nil unless n.is_a?(Numeric)

    s_real = (1 - Math.cos(1)) / 2
    f = (1..1.0 / 0).lazy.take(n.to_f).inject(0.0) do |f, i|
      x = (i.to_f / n).to_f
      f + (x.to_f * Math.sin(x**2).to_f).to_f
    end.to_f
    s = (f.to_f / n).to_f
    return part_two(n + 1000) if (s_real - s).abs > 0.00001
    s
  end

  def intg_lambda(b, a, func)
    return nil unless a.is_a?(Numeric) && b.is_a?(Numeric) && func.is_a?(Proc)

    n = 1_000_000
    s = (1..1.0 / 0).lazy.take(n).inject(0.0) do |f, i|
      x = (i.to_f / n).to_f
      (f + (func.call x).to_f).to_f
    end.to_f
    (b - a) * s / n
  end

  def intg_yield(b, a)
    return nil unless a.is_a?(Numeric) && b.is_a?(Numeric)

    n = 1_000_000
    s = (1..1.0 / 0).lazy.take(n).inject(0.0) do |f, i|
      x = (i.to_f / n).to_f
      (f + (yield x).to_f).to_f
    end.to_f
    (b - a) * s / n
  end

  def part_three
  end
end
