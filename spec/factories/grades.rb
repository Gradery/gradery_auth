# == Schema Information
#
# Table name: grades
#
#  id         :integer          not null, primary key
#  name       :string
#  school_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  deleted_at :datetime
#

FactoryGirl.define do
  factory :grade do
    name { Faker::Name.name }
	school
  end

end
