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
    name "MyString"
url "MyString"
about "MyText"
deleted_at "2015-10-18 15:57:59"
  end

end
