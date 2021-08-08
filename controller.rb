require_relative "task"

class Controller  #user actions
  def initialize(repository, view)
    @repository = repository
    @view = view
  end

  def add_task
    # 1. Ask the user what they want to do
    title = @view.ask_user_for_task_title
    # 2. Create the task
    task = Task.new(title)  # para usarmos a Task a classe precisamos requerer
    # 3. Give the task to do the repository
    @repository.add(task)
  end
  
  def list_tasks
    # 1. Ask the repository for list of tasks
    tasks = @repository.all
    # 2. Ask the view to print tasks
    @view.print_tasks(tasks)
  end

  def mark_as_complete
    # 1. Ask user which task index
    index = @view.ask_user_for_task_index
    # 2. Ask the repository for Task instance at index
    task = @repository.find(index)
    # 3. Mark the task as complete on task instance
    task.mark_as_complete
  end
end