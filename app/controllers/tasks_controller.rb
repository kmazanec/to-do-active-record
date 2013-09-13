
class TasksController
  def self.add(new_task_description)
    Task.create( description: new_task_description )
  end

  def self.delete(task_id_to_delete)
    Task.delete(task_id_to_delete)
  end

  def self.complete!(task_id_to_complete)
    Task.find(task_id_to_complete).completed = 1
  end

  def self.list

  end
end
