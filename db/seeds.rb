# num.times do
#   puts "#{Faker::Lorem.sentence(word_count = 4)}, #{[0,1].sample}"
# end


require 'faker'
require_relative '../app/models/task'

class SeedTable

  def self.task(num)
    num.times do
      Task.create(description: Faker::Lorem.sentence(word_count = 4),
                  completed:  [0,1].sample)
    end
  end

end


SeedTable.task(10)

