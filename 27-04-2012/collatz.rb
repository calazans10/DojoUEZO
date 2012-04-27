def collatz(n)
  @count = 0
  if n == 1
    1
    @count += 1
  elsif n % 2 == 0
    collatz(n/2)
    @count += 1
  else
    collatz(3*n + 1)
    @count += 1
  end
  @count
end

def max_collatz
  @aux = 0

  (1..1000000).each do |i|
     if (@aux < collatz(i))
         @aux = collatz(i)
     end
   end
  @aux
end

