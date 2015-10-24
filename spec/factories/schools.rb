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

FactoryGirl.define do
  factory :school do
    name { Faker::Name.name }
	url { Faker::Internet.domain_word }
	about { Faker::Lorem.paragraph }
	location { Faker::Address.city }
  end

end
