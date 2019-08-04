#!/bin/ruby

require 'json'
require 'stringio'

# Complete the designerPdfViewer function below.
def designerPdfViewer(h, word)
 letters =('a'..'z').to_a
 val = []
  word.each_char do |i|
    val << h[letters.index(i)]
  end
  val.max*word.length
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

h = gets.rstrip.split(' ').map(&:to_i)

word = gets.to_s.rstrip

result = designerPdfViewer h, word

fptr.write result
fptr.write "\n"

fptr.close()
