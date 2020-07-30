require_relative 'table'
require_relative 'robot'

class Simulator

  def initialize
    @table = Table.new 5, 5
    @robot = Robot.new @table
  end

  def execute(command)
    begin
      puts @robot.eval(command)
    rescue Exception => e
      puts e.message
    end
  end

end