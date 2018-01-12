#unit 4 Project1
continue = "y"; #to allow loop program again

while continue == "y" do
  distance = 0;
  bag = 0;
  meal = 0;
  roundtrip = 0;
  stayover =0;
  smc = 0;
  
print "CorsairAir Fare Calculator \n";
print "Enter the distance traveled: ";
distance = gets.chomp;
print "Enter the number of checked bags: ";
bag = gets.chomp;
print "Enter number of meals ordered: ";
meal = gets.chomp;
print "Roundtrip desired? [1=yes/0=no]: ";
roundtrip = gets.chomp;
print "Is there a Saturday night stayover? [1=yes/0=no]: ";
stayover = gets.chomp;
print "SMC Student Traveler? [1=yes/0=no]: ";
smc = gets.chomp;

fare = distance.to_i*0.15; #cost of fare (15 cents per mile)
mealOrdered = meal.to_i*10 #cost of total meal (10 dollars per meal)

#check smc
if smc == 1
  bagChecked = 0;
else
  bagChecked = bag.to_i*25; #cost of total bags (25 dollars per bag)
end

#check roundtrip
if roundtrip.to_i == 1
  discount = fare * 0.05;
else
  discount = 0;
end

#check saturday night stay
if stayover.to_i == 1
  reduction = 50;
else
  reduction = 0;
end

print "Fare: $#{fare}\n ";

print "Reductions: $#{discount.to_f + reduction.to_f}\n ";

print "Total Cost: $ #{fare.to_f + mealOrdered.to_f + bagChecked.to_f - discount.to_f - reduction.to_f} \n";

print "Continue? (y/n)";
continue = gets.chomp;
end