# frozen_string_literal: true

@cache = [0, 1]
def fib(n)
  return @cache[n] if @cache[n]

  @cache[n] = fib(n - 1) + fib(n - 2)
end

# def fib(n)
#   case n
#   when 0
#     0
#   when 1
#     1
#   else
#     fib(n - 1) + fib(n - 2)
#   end
# end

puts fib(6)
