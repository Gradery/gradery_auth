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

class GradesUser < ActiveRecord::Base
	belongs_to :grade
	belongs_to :user
end
