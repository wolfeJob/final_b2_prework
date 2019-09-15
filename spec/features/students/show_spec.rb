require 'rails_helper'
describe 'A student show page' do
  before(:each) do
    @scott = Student.create!(name: "Scott")
  end
end
