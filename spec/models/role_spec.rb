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

require 'rails_helper'

RSpec.describe Role, type: :model do
  it "has a working FactoryGirl model" do
  	r = FactoryGirl.build(:role)
  	expect(r.valid?).to eq true
  end

  it "will not create a Role without a name" do
  	r = FactoryGirl.build(:role)
  	r.name = ""
  	expect(r.valid?).to eq false
  	expect(r.errors.messages.to_json).to eq "{\"name\":[\"can't be blank\"]}"
  	r.name = nil
  	expect(r.valid?).to eq false
  	expect(r.errors.messages.to_json).to eq "{\"name\":[\"can't be blank\"]}"
  end

  it "will not create a Role without permissions" do
  	r = FactoryGirl.build(:role)
  	r.permissions = ""
  	expect(r.valid?).to eq false
  	expect(r.errors.messages.to_json).to eq "{\"permissions\":[\"can't be blank\"]}"
  	r.permissions = nil
  	expect(r.valid?).to eq false
  	expect(r.errors.messages.to_json).to eq "{\"permissions\":[\"can't be blank\"]}"
  end
end
