require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Class Methods' do
    it 'calculates average astronaut age' do
      astro_1 = Astronaut.create!(name: "Jane", age: 31, job: "Commander")
      astro_2 = Astronaut.create!(name: "Ella", age: 29, job: "Science Officer")

      expect(Astronaut.avg_age).to eq(30)
    end
  end
end
