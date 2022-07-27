def fibs(n)
  if n == 1
    return [0]
  elsif n == 2
    return [0, 1]
  else
    results = [0, 1]
    i = 2
    while i < n
      results << (results[i - 1] + results[i - 2])
      i += 1
    end
  end
  results
end

# puts fibs(8)

def fibs_rec(n)
  if n == 1
    [0]
  elsif n == 2
    [0, 1]
  else
    results = fibs_rec(n - 1)
    results << results[-2] + results[-1]
  end
end

# puts fibs_rec(8)
