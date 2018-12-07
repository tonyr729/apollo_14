require 'rails_helper'

describe "As a visitor" do
  describe "When I visit '/astronauts'" do
    it 'shows a list of astronauts' do
      astronaut_1 = Astronaut.create!(name: "Buzz Aldron", age: "60", job: "Badass")

      visit astronauts_path

      expect(page).to have_content("Name: #{astronaut_1.name}")
      expect(page).to have_content("Age: #{astronaut_1.age}")
      expect(page).to have_content("Job: #{astronaut_1.job}")

      
    end
  end
end

# As a visitor,
# When I visit '/astronauts'
# I see a list of astronauts with the following info:
# - Name
# - Age
# - Job