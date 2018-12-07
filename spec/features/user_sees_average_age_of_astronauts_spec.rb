require 'rails_helper'

describe "As a visitor," do
  describe "When I visit '/astronauts'" do
    it "shows average age of all astronauts." do
      astro_1 = Astronaut.create!(name: "Buzz Aldron", age: 60, job: "Badass")
      astro_2 = Astronaut.create!(name: "Tony Robertson", age: 32, job: "Dev")
      astro_3 = Astronaut.create!(name: "Drake", age: 30, job: "Entertainment")

      visit astronauts_path

      age = Astronaut.average_age
      save_and_open_page

      expect(page).to have_content("Average Age: #{age.round(2)}")
    end
  end
end





# (e.g. "Average Age: 34")