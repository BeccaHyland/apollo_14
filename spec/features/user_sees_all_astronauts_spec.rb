require 'rails_helper'

describe "user sees all astronauts" do
  describe "they visit /astronauts" do
    it "displays all astronauts" do
      astro_1 = Astronaut.create!(name: "Jane", age: 31, job: "Commander")
      astro_2 = Astronaut.create!(name: "Ella", age: 29, job: "Science Officer")

      visit '/astronauts'

      expect(page).to have_content(astro_1.name)
      expect(page).to have_content(astro_1.age)
      expect(page).to have_content(astro_1.job)
      expect(page).to have_content(astro_2.name)
      expect(page).to have_content(astro_2.age)
      expect(page).to have_content(astro_2.job)
    end

    it "displays average age" do
      astro_1 = Astronaut.create!(name: "Jane", age: 31, job: "Commander")
      astro_2 = Astronaut.create!(name: "Ella", age: 29, job: "Science Officer")

      visit '/astronauts'
      save_and_open_page
      

      expect(page).to have_content("Average Astronaut Age: #{Astronaut.avg_age}")
    end
  end
end
