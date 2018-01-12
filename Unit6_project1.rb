#Unit 6 Project 1


totalCount = 0;


def checkItem(item, score)
  case item
  when "project3","project4","project5","project6","project7","project8","project9","project10","project11","project12","project13","project14"
    if(score > 15)
      print "Sorry, programming projects cannot be more than 15 points. \n";
      exit;
    elsif(score < 0)
      print "Sorry programming projects cannot be less than 0 points. \n";
      exit;
    end
  when "midterm"
    if(score>100)
      print "Sorry, midterm cannot be more than 100 points. \n";
      exit;
    elsif(score <0)
      print "Sorry, midterm cannot be less than 0 point. \n";
      exit;
    end
  when "final"
    if(score > 100)
      print "Sorry, final cannot be more than 100 points. \n";
      exit;
    elsif(score < 0)
      print "Sorry, final cannot be less than 0 point. \n";
      exit;
    end
  when "project"
    if(score > 35)
      print "Sorry, project score cannot be more than 35 points. \n";
      exit;
    elsif(score < 0)
      print "Sorry, project score cannot be less than 0 point. \n";
      exit;
    end
  else
    raise "invalid input";
    exit;
  end
end




print "CS83R Calculator \n";
counter = 0;
total = 0;
totalPercent = 0;
higherScore = 0;
lowestProgrammingScore = 0;
tempscore = 0;
examScore = 0;
examScorePercent = 0;
projectScore = 0;
projectScorePercent = 0;
programmingScore = 0;
programmingScorePercent = 0;

begin
while (counter < 15) do
  print "Enter score: ";
  input = gets.chomp;
  stringInput = input.split(':');
  checkItem(stringInput.first,stringInput.last.to_i);
  
  case stringInput.first
  when "project3","project4","project5","project6","project7","project8","project9","project10","project11","project12","project13","project14"
    tempscore = stringInput.last.to_i;
    if(tempscore < lowestProgrammingScore)
      lowestProgrammingScore = tempscore;
    end
    programmingScore = programmingScore + stringInput.last.to_i;
  when "midterm", "final"
    examScore = examScore + stringInput.last.to_i;
  when "project"
    projectScore = projectScore + stringInput.last.to_i;
  end 
  counter = counter + 1;
end

total = (programmingScore-lowestProgrammingScore) + examScore + projectScore;
programmingScorePercent = (programmingScore-lowestProgrammingScore) / 150 * 100;
examScorePercent = examScore / 200 * 100;
projectScorePercent = projectScore / 35 * 100;
totalPercent = total / 400 * 100;

print "Your Programming Score was #{programmingScore}" + "(#{programmingScorePercent})" + " with the lowest score #{lowestProgrammingScore} being dropped \n";
print "Your Exam score was #{examScore} (#{examScorePercent}%) \n";
print "Your Project score was #{projectScore} (#{projectScorePercent}%)\n";
print "Your Total score was #{total} (#{totalPercent}%). Nice Job! \n";


rescue
  puts "Sorry invalid input";
end



