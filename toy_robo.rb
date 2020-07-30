require_relative 'simulator'

simulator = Simulator.new

puts "Please enter valid commands, which are as follows:"
puts "# \'PLACE X,Y,NORTH|SOUTH|EAST|WEST\', MOVE, LEFT, RIGHT, REPORT"

command = STDIN.gets

while command
  command.strip!
  if command.downcase == "exit"
    puts "# Bye"
    exit
  else
    output = simulator.execute(command)
    puts output if output
    command = STDIN.gets
  end
end