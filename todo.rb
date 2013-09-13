require_relative 'config/application'

# puts "Put your application code in #{File.expand_path(__FILE__)}"

#Check if user has passed arguments.
  #IF not pass user list of commands.
#Look at passed in command.
  #IF "list" call list method.
  #IF "add" add new record to database.
  #IF "delete" delete appropriate record.
  #IF "complete" mark task complete.

first, second, third, rest = ARGV


if ARGV.empty?
  puts "Here are your options:"
  puts "list"
  puts "add <new task>"
  puts "delete <task id>"
  puts "complete <task id>"
else
  case ARGV.first
  when "list" then puts TasksController.list
  when "add" then TasksController.add(ARGV[1..-1].join(' '))
  when "delete" then TasksController.delete(ARGV[1])
  when "complete" then TasksController.complete(ARGV[1])
  end
end 
