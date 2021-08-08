require_relative "task"
require_relative "repository"

repository = Repository.new

task1 = Task.new("Do the laundry")
repository.add(task1)

task2 = Task.new("Grocery Shopping")
repository.add(task2)

p repository
# p task1
# p task2