#https://www.hackerrank.com/challenges/bon-appetit/problem
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the bonAppetit function below.
def bonAppetit(bill, k, b)
  r = []
  bill.each_with_index do |i,idx|
    r << i unless idx == k
  end
  if r.sum/2 == b 
    print  "Bon Appetit"
  else 
   print  (r.sum/2 - b).abs
  end
end

nk = gets.rstrip.split

n = nk[0].to_i

k = nk[1].to_i

bill = gets.rstrip.split.map(&:to_i)

b = gets.strip.to_i

bonAppetit bill, k, b
