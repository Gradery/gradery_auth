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

require 'rails_helper'

RSpec.describe Grade, type: :model do
  before(:all) do
  	@school = FactoryGirl.create(:school)
  end

  it "has a working FactoryGirl model" do
  	g = FactoryGirl.create(:grade)
  	expect(g.valid?).to eq true
  end

  it "will not create a Grade without a name" do
  	g = FactoryGirl.build(:grade)
  	g.name = nil
  	expect(g.valid?).to eq false
  	expect(g.errors.messages.to_json).to eq "{\"name\":[\"can't be blank\"]}"
  	g.name = ""
  	expect(g.valid?).to eq false
  	expect(g.errors.messages.to_json).to eq "{\"name\":[\"can't be blank\"]}"
  end

  it "will not create a Grade without a school" do
  	g = FactoryGirl.build(:grade)
  	g.school = nil
  	expect(g.valid?).to eq false
  	expect(g.errors.messages.to_json).to eq "{\"school_id\":[\"can't be blank\"]}"
  end
end
