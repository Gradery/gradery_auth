# == Schema Information
#
# Table name: roles
#
#  id          :integer          not null, primary key
#  name        :string
#  permissions :text
#  deleted_at  :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :role do
    name { Faker::Name.name }
	permissions { Faker::Name.name }
  end

end
