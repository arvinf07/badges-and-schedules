def badge_maker(name)
  "Hello, my name is #{name}."
end


def batch_badge_creator(attendees)
  attendees.collect {|attendee| badge_maker(attendee)}
end  

def assign_rooms(attendees)
  attendees.collect.with_index {|attendee, room_num| "Hello, #{attendee}! You'll be assigned to room #{room_num + 1}!"}
end  

def printer(attendee)
  batch_badge_creator(attendees).each do |name|
    puts name
  end  
  assign_rooms(attendees).each {|room| puts room}
end  