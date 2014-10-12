require 'sinatra'
require 'json'

get '/words/:w1/:w2' do
  w1 = params[:w1].to_s
  w2 = params[:w2].to_s

  puts w1
  puts w2

  anagram = w1.downcase.chars.sort == w2.downcase.chars.sort
  if anagram == true
    then "'#{w1}' and '#{w2}' are anagrams!".to_json
    else '#{w1}' and '#{w2}' are not anagrams".to_json
  end
end

get '/' do
  "Hello World"
end
