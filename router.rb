class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      puts "What do you want to do next?"
      puts " 1 - Add a Task"
      puts " 2 - List Task"
      puts " 3 - Mark as Completed"
      choice = gets.chomp.to_i

      if choice == 1
        @controller.add_task
      elsif choice == 2
        @controller.list_tasks
      elsif choice == 3
        @controller.mark_as_complete
      else
        puts "Invalid choice"
      end
    end
  end
end