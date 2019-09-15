require 'rails_helper'

RSpec.describe CoursesStudent do
  describe 'Relationships' do
    it {should validate_presence_of :grade}

    it {should belong_to :course}
    it {should belong_to :student}
  end
end
