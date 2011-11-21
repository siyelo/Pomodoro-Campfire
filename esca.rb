require 'rubygems'
require 'bundler/setup'

require 'json'
require 'tinder'

action, name, duration, *therest = ARGV
account = name.split(/(-|,|_)/).first

# skip status update if no campfire account is "tagged"
data = JSON.parse(IO.read("campfire.json"))[account] or exit

campfire = Tinder::Campfire.new data['domain'], :token => data['token']
room = campfire.find_room_by_name data['room']

end_time = Time.now + (60*duration.to_i)
formated_end_time = end_time.strftime("%H:%M")

case action
when "start"
  speak = "Started '#{name}' - Ends in #{duration} minutes at #{formated_end_time}"
when "reset"
  speak = "Reset '#{name}'"
when "stop"
  speak = "Stopped '#{name}'"
end

room.speak "Pomodoro: #{speak}"
