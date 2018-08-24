class Astronaut < ApplicationRecord
  validates_presence_of :name, :age, :job

  def self.avg_age
    average(:age)
  end
end
