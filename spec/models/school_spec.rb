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

require 'rails_helper'

RSpec.describe School, type: :model do
  it "has a working FactoryGirl model" do
  	s = FactoryGirl.build(:school)
  	expect(s.valid?).to eq true
  end

  it "will not create a School without a name" do
  	s = FactoryGirl.build(:school)
  	s.name = nil
  	expect(s.valid?).to eq false
  	expect(s.errors.messages.to_json).to eq "{\"name\":[\"can't be blank\"]}"
  	s.name = ""
  	expect(s.valid?).to eq false
  	expect(s.errors.messages.to_json).to eq "{\"name\":[\"can't be blank\"]}"
  end

  it "will not create a School without a url" do
  	s = FactoryGirl.build(:school)
  	s.url = nil
  	expect(s.valid?).to eq false
  	expect(s.errors.messages.to_json).to eq "{\"url\":[\"can't be blank\"]}"
  	s.url = ""
  	expect(s.valid?).to eq false
  	expect(s.errors.messages.to_json).to eq "{\"url\":[\"can't be blank\"]}"
  end

  it "will not create a School if the URL is not unique" do
  	one = FactoryGirl.create(:school)
  	s = FactoryGirl.build(:school)
  	s.url = one.url
  	expect(s.valid?).to eq false
  	expect(s.errors.messages.to_json).to eq "{\"url\":[\"has already been taken\"]}"
  end

  it "will not create a School without a location" do
  	s = FactoryGirl.build(:school)
  	s.location = nil
  	expect(s.valid?).to eq false
  	expect(s.errors.messages.to_json).to eq "{\"location\":[\"can't be blank\"]}"
  	s.location = ""
  	expect(s.valid?).to eq false
  	expect(s.errors.messages.to_json).to eq "{\"location\":[\"can't be blank\"]}"
  end
end
