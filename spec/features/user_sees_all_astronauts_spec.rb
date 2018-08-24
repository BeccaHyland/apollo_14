require 'rails_helper'

describe "user sees all astronauts" do
  describe "they visit /astronauts" do
    it "displays all astronauts" do
      astro_1 = Article.create!(name: "Jane", age: 31, job: "Commander")
      astro_2 = Article.create!(name: "Ella", age: 29, job: "Science Officer")

      visit '/astronauts'
      expect(page).to have_content(astro_1.name)
      expect(page).to have_content(astro_2.name)
    end
