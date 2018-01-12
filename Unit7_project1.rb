#unit 7 project 1

def checkSelection(selection)

  
  case selection
  when "N", "n" 
  when "A", "a"
  when "M", "m"
  when "S", "s"
  when "C", "c"
  when "Q", "q"
  else
    raise "invalid input";
  end
end

def getNumber()
  tempArray = Array[];
  input = gets.chomp; # get user input
  # split by space and put each number into array  
  input.split(' ').each{|number| tempArray << number.to_f };
  return tempArray;
end

def Mean(numberArray)
  sum = numberArray.inject{|sum, x| sum + x};
  average = sum/numberArray.count;
  return average;
end

def Median(numberArray)
  sorted = numberArray.sort;
  len = sorted.length;
  return (sorted[(len - 1) / 2] + sorted[len / 2]) / 2.0;
end

def StdDev(numberArray)
  mean = numberArray.inject{|x,y| x + y} / numberArray.size;
  sumOfSquares = numberArray.map{|x| (x-mean)**2}.inject{|x,y| x + y};
  standardDeviation = Math.sqrt(sumOfSquares / (numberArray.size-1));
  return standardDeviation;
end

begin
  numberArray = Array[]; # create Array
  exitLoop = false;
  while (exitLoop == false)
    puts "Math Calculator";
    puts "[N]umbers [A]verage [M]edian [S]tandard Deviation [C]ear [Q]uit: ";
    selection = gets.chomp;
    checkSelection(selection); #check selection

    #get numbers
    if(selection == 'N' || selection == 'n')
      numberArray = nil;
      numberArray = getNumber();
      
      #calculate average 
    elsif (selection == 'A' || selection =='a')
      if(numberArray == nil)
        puts "please enter some number";
      else
        puts "Average = #{Mean(numberArray)}";
      end
      
      #calculate median
    elsif(selection == 'M' || selection =='m')
      if(numberArray == nil)
        puts "please enter some number";
      else
        puts "Median = #{Median(numberArray)}";
      end
      
    elsif(selection == 'S' || selection =='s')
      if(numberArray == nil)
        puts "please enter some number";
      else
      puts "Standard Deviation = #{StdDev(numberArray)}";
      end
    
    elsif(selection == 'C' || selection =='c')
      numberArray = nil;
      
    #exit loop
    elsif(selection == 'Q' || selection == 'q')
      exitLoop = true;
    end
  end
rescue
  puts "Incorrect Selection";
  exit;
end