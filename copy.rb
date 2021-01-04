number_of_rooms_explored = 1
teasure_count = 0
damage_points = 0
escaped = false
monster = false
current_room = ""



# Introduction

puts "You are trapped in a dungeon. See if you can find treasure before you escape!"
puts "Watch out for monsters! They will get you!"
puts "To Play, type one of the given commands"

# Game Loop
while damage_points > 0 and not escaped do
  # Game Code

actions = ["m - move", "s - search"]

puts "Room ##{number_of_rooms_explored}"

puts current_room

# Monster Encounter
if monster
  puts "Ah! Real Monster! A monster is approaching!"
  actions << "f - fight"
end

print "what do you do? (#{actions.join(',')}) : "

  player_action = gets.chomp
    if monster and monster_attack?
      damage_points = damage_points - 1
      puts "OUCH, you got hit"
    end
# Player Commands
    if player_action == "m"
      current_room = create_room
      number_of_rooms_explored = number_of_rooms_explored + 1
      monster = has_monster? 
      escaped = has_escaped?
    elsif player_action == "s"
      if has_treasure?
        puts "WOW THAT IS SUPER COOL YOU FOUND #{treasure}!"
        treasure_count = treasure_count + 1
      else
        puts "You searched, but you found NOTHING"
      end
        #Rigged Condition = searching triggers monsters

      if not monster
        monster = has_monster?
      end
    elsif player_action == "f"
      if defeat_monster?
        monster = false
        puts "you defeated the monster"
      else
        puts "you missed"
      end
    else
      puts "please follow directions"
    end
    puts ""

end


if damage_points > 0 
  puts "Good job, you made it!"
  puts "you explored #{number_of_rooms_explored} rooms"
  puts "and found #{treasure_count} treasures."
else
  puts "oh no! you didnt make it!"
  puts "you explored #{number_of_rooms_explored} rooms, before YOUR DOOM"
end

