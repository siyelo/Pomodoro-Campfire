require 'rubygems'
require 'tinder'

campfire = Tinder::Campfire.new 'ROOM_NAME', :token => 'TOKEN'
# or you can still use username/password and Tinder will look up your token
# campfire = Tinder::Campfire.new 'mysubdomain', :username => 'user', :password => 'pass'

room = campfire.find_or_create_room_by_name 'Billetto Development'

name = ARGV[1]
duration = ARGV[2]
end_time = Time.now + (60*duration.to_i)
formated_end_time = end_time.strftime("%H:%M")

case ARGV[0]
when "start"
  speak = "'#{name}' - Ends in #{duration} minutes at #{formated_end_time}"
when "reset"
  speak = ""
when "stop"
  speak = "" 
end

room.speak "Pomodoro: #{speak}"