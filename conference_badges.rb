require 'pry'

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(name)
  badge_list = []
  name.each do | name |
    badge_list << "Hello, my name is #{name}."
  end
  badge_list
end

def assign_rooms(name)
  room_assign = []
  name.each_with_index do | name, index |
    room_assign << "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  end
  room_assign
end

def printer(name)
  # calls batch_badge_creator
  print_1 = batch_badge_creator(name)
  print_1.each do | badge |  # loops through array and puts badge
    puts badge
  end

  print_2 = assign_rooms(name)  # calls assign_rooms  
  print_2.each do | assignment |  # loops througha nd puts each assignment
    puts assignment
  end
end