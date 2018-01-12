#unit 8 project 1

=begin
def CountChar(str)
  frequencies = Hash.new(0);
  str.each_char do |char|
    next unless char =~/\w/;
    frequencies[char] += 1;
  end
  frequencies = frequencies.sort_by {|a,b| b};
  frequencies.reverse!;
  frequencies.each{|char, frequency| puts char + " " + frequency.to_s};
  return frequencies;
end
=end

#there's gotta be a better way of doing this....
def printAsterisk(frequency) 
  asterisk = {
    1 => "*",
    2 => "**",
    3 => "***",
    4 => "****",
    5 => "*****",
    6 => "******",
    7 => "*******",
    8 => "********",
    9 => "**********",
    10 => "**********"
  }
  return asterisk[frequency];
end


def CountLetter(str)
  
  chars = str.split("");
  frequencies = Hash.new(0);
  chars.each{|char| frequencies[char] += 1};
  frequencies = frequencies.sort_by {|char, frequency| char};
  frequencies.each{|char, frequency| puts char.upcase + " - " + frequency.to_s + " - " + printAsterisk(frequency) };
  return frequencies;
end


begin
puts "Enter Data: ";
text = gets.chomp;
CountLetter(text);

rescue
  puts "SOmething is wrong"
end