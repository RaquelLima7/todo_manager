class Repository  #database
  def initialize
    @tasks = []  #array of tasks instances
  end

  #behavior? CRUD
  def add(task) # task parameter is a task instance
    @tasks << task
  end

  def all
    return @tasks
  end

  def find(index)
    return @tasks[index]
  end
end