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

class Role < ActiveRecord::Base
	acts_as_paranoid
	has_and_belongs_to_many :users

	validates :name, presence: true, allow_nil: false, allow_blank: false
	validates :permissions, presence: true, allow_nil: false, allow_blank: false
end
