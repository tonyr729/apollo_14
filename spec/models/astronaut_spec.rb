require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :missions}
  end

  describe 'Class Methods' do
    it 'should be able to average age' do
      astro_1 = Astronaut.create!(name: "Buzz Aldron", age: 60, job: "Badass")
      astro_2 = Astronaut.create!(name: "Tony Robertson", age: 32, job: "Dev")
      astro_3 = Astronaut.create!(name: "Drake", age: 10, job: "Entertainment")

      expect(Astronaut.average_age).to eq(34.0)
    end
  end
end
