# The greatest common divisor (GCD) of two integers is the largest integer
# that evenly divides each of the numbers. Write a method gcd that 
# returns the greatest common divisor of two integers.
def find_gcd(int1, int2)
  small = int1
  if int1 > int2
    small = int2
  end

  gcd = 1
  i = 1
  while i <= small do
    if int1 % i == 0 && int2 % i == 0
      gcd = i
    end
    i += 1
  end
  return gcd
end

p find_gcd(4, 8)