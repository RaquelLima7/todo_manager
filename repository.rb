class Repository
  def initialize
    @tasks = []  #array of tasks instances
  end

  #behavior? CRUD
  def add(task) # task parameter is a task instance
    @tasks << task
  end


end