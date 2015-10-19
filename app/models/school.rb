# == Schema Information
#
# Table name: schools
#
#  id         :integer          not null, primary key
#  name       :string
#  url        :string
#  about      :text
#  deleted_at :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  location   :string
#

class School < ActiveRecord::Base
	acts_as_paranoid

	validates :name, :presence => true, :allow_blank => false, :allow_nil => false
	validates :url, :presence => true, :allow_blank => false, :allow_nil => false, :uniqueness => true
	validates :location, :presence => true, :allow_blank => false, :allow_nil => false
end
