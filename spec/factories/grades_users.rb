# == Schema Information
#
# Table name: grades_users
#
#  id         :integer          not null, primary key
#  grade_id   :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :grades_user do
    grade
	user
  end

end
