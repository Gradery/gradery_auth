# == Schema Information
#
# Table name: roles_users
#
#  id         :integer          not null, primary key
#  role_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :roles_user do
    role
	user
  end

end
