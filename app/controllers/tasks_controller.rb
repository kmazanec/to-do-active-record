
class TasksController
  def self.add(new_task_description)
  end

  def self.delete(task_id_to_delete)

  end

  def self.complete!(task_id_to_complete)
    
  end

  def self.list
    arr = []
    Task.all.each do |item|
      arr << "#{item.id}: [#{item.completed == 1 ? "X" : " "}] #{item.description}"
    end
    arr
  end

end
