class Task < ActiveRecord::Base
  validates :description, presence: true

  def self.list
    # select id, description from tasks
    ary = []
    self.all.each do |task|
      ary << [task.id, task.description, task.completed]
    end
    ary
  end
  
  def self.add(string)
  end

  def self.complete!(num)
  end

end


# added a comment
