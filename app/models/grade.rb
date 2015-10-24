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

class Grade < ActiveRecord::Base
	acts_as_paranoid
	belongs_to :school
	has_and_belongs_to_many :users

	validates :name, presence: true, allow_nil: false, allow_blank: false
	validates :school_id, presence: true, allow_nil: false
end
