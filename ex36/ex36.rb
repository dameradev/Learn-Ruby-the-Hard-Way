require "./thebride.rb"
require "./merman.rb"

def start
  puts "You are staying in a cabin in the woods for a weekend trip."
  puts "After hiking all day, you and your friends decide to relax in the basement at night."
  puts "There is an assortment of items around."
  puts "Do you want to take a look at them? yes or no"

  examine_items = $stdin.gets.chomp.downcase

  if examine_items == "yes"
    pick_items
  elsif examine_items == "no"
    puts "You sit around doing nothing."
    puts "Your friend gets bored and says 'Hey, let's check out some of this stuff!'"
    pick_items
  end

end

def pick_items
  puts "There is a vintage wedding dress with a gorgeous necklace on a mannequin."
  puts "On a table, there is a conch shell."
  puts "Which do you you look at first?"

  item = $stdin.gets.chomp 

  if item.include?("necklace") || item.include?("dress")
    Bride.start(item)
  elsif item.include?("conch") || item.include?("shell")
    Merman.start()
  else
    puts "You didn't pick any of the items."
    game_end("You'e so boring that your friends kick you out of the house.")
  end
end 

def win(monster_killed)
  puts "You won against #{monster_killed}. You win!"
  exit(0)
end

def dead(reason)
  puts reason << " Good job!"
  exit(0)
end

start