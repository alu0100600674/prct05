def gcd(u, v)
  u, v = u.abs, v.abs
  while v != 0 #El error era que habia un ==, en vez de !=
    u, v = v, u % v
  end
  u
end


#puts gcd(6,3)
