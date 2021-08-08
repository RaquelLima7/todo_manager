class Task  #model
  attr_reader :title

  def initialize(title)
    @title = title
    @completed = false
  end

  def completed?
    return @completed
  end

  def mark_as_complete
    @completed = true
  end
end