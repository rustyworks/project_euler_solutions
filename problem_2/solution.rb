class Solution
  def sum_even_value_fibonacci_series_before(series)
    counter = 1
    sum = 0
    fibonacci = 0
    while fibonacci < series do
      fibonacci = generate_fibonacci(counter)
      sum += fibonacci if fibonacci.even?
      counter = counter.succ
    end
    sum
  end

  def generate_fibonacci(n)
    if n <= 1
      1
    else
      generate_fibonacci(n - 1) + generate_fibonacci(n - 2)
    end
  end
end
