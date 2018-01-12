#unit 5 Project 1


def getSession(quarterSession)
  session = "null";
  if(quarterSession == 0)
    session = "Fall";
  elsif(quarterSession == 1)
    session = "Winter";
  elsif(quarterSession ==2)
    session = "Spring";
  elsif(quarterSession ==3)
    session = "Summer";
  else
    raise "invalid quarter";
  end
  return session;
end


def checkUnit(unitEnrolled)
  if (unitEnrolled < 0)
    raise "invalid unit";
  end
end

def checkResident(stateResident)
  if(stateResident!= 0 && stateResident != 1 )
    raise "invalid input";
  end
end

def checkParking(parkingDecal)
  if(parkingDecal != 'Y' && parkingDecal != 'y' && parkingDecal != 'N' && parkingDecal != 'n' )
    raise "invalid input";
  end
end

def checkSticker(asSticker)
  if (asSticker != 'Y' && asSticker !='y' && asSticker != 'N' && asSticker !='n')
    raise "invalid input";
  end
end

def checkId(idCard)
  if(idCard == 'Y' && idCard == 'y' && idCard == 'N' && idCard == 'n')
    raise "invalid input";
  end
end

def CalculateCost(quarterSession, unitEnrolled, stateResident,parkingDecal,asSticker, idCard)
  total = 0;
  
  case quarterSession
  when 0
    if(stateResident == 0)
      total = (46.00 * unitEnrolled.to_f) + 50.50;
      
    elsif(stateResident == 1)
      total = (325.00 * unitEnrolled.to_f) + 50.50
    end
    
    if(parkingDecal == 'Y' || parkingDecal == 'y')
      total = total.to_f + 85.00;
    end
    if(idCard == 'Y' || idCard == 'y')
      total = total.to_f + 13;
    end
    if(asSticker == 'Y' || asSticker=='y')
      total = total.to_f + 19.50;
    end
    
  when 1
    if(stateResident == 0)
      total = (46.00 * unitEnrolled.to_f) + 47.50;
      
    elsif(stateResident == 1)
      total = (325.00 * unitEnrolled.to_f) + 47.50;
    end
    
    if(parkingDecal == 'Y' || parkingDecal == 'y')
      total = total.to_f + 45.00;
    end
    if(idCard == 'Y' || idCard == 'y')
      total = total.to_f + 13;
    end
    if(asSticker == 'Y' || asSticker=='y')
      total = total.to_f + 19.50;
    end
    
  when 2
    if(stateResident == 0)
      total = (46.00 * unitEnrolled.to_f) + 50.50;
      
    elsif(stateResident == 1)
      total = (325.00 * unitEnrolled.to_f) + 50.50;
    end
    
    if(parkingDecal == 'Y' || parkingDecal == 'y')
      total = total.to_f + 85.00;
    end
    if(idCard == 'Y' || idCard == 'y')
      total = total.to_f + 13;
    end
    if(asSticker == 'Y' || asSticker=='y')
      total = total.to_f + 19.50;
    end
  when 3
    if(stateResident == 0)
      total = (46.00 * unitEnrolled.to_f) + 47.50;
      
    elsif(stateResident == 1)
      total = (325.00 * unitEnrolled.to_f) + 47.50;
    end
    
    if(parkingDecal == 'Y' || parkingDecal == 'y')
      total = total.to_f + 45.00;
    end
    if(idCard == 'Y' || idCard == 'y')
      total = total.to_f + 13;
    end
    if(asSticker == 'Y' || asSticker=='y')
      total = total.to_f + 19.50;
    end
    
  end  
  
  return total;
end


unitEnrolled = 0;
quarterSession = 0;
stateResident = 0;
parkingDecal = 'n';
idCard = 'n';
asSticker = 'n';

print "SMC Fee Calculator:";
begin
print "Enter number of units enrolled: ";
unitEnrolled = gets.chomp.to_i;
checkUnit(unitEnrolled);
rescue 
puts "Invalid Unit";
exit;
end

begin
print "Is this Fall[0], Winter[1], Spring[2] or Summer[3] session:";
quarterSession = gets.chomp.to_i;
getSession(quarterSession);
rescue
puts "Invalid Semester";
exit;
end

begin
print "Are you a state resident[0] or not[1]:";
stateResident = gets.chomp.to_i;
checkResident(stateResident)
rescue
puts "Sorry you entered an invalid residency";
exit;
end

begin
print "Want a parking decal? [Y/N]";
parkingDecal = gets.chomp;
checkParking(parkingDecal);
rescue
puts "Sorry you entered a invalid parking decal";
exit;
end

begin
print "Want an AS sticker? [Y/N]";
asSticker = gets.chomp;
checkSticker(asSticker);
rescue
puts "Sorry you entered a invalid AS sticker";
exit;
end
begin
print "Want an ID card? [Y/N]";
idCard = gets.chomp;
checkId(idCard);
rescue
puts "Sorry you entered a invalid ID card request";
exit;
end

print "For #{getSession(quarterSession)} semester, your total fees are $ #{CalculateCost(quarterSession, unitEnrolled, stateResident,parkingDecal,asSticker, idCard)} \n";

