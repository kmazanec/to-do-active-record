class Task < ActiveRecord::Base
  validates :description, presence: true

  def self.list
    # select id, description from tasks
    ary = []
    self.all.each do |task|
      ary << "#{task.id}). #{task.description}"
    end
  end
end


# added a comment
