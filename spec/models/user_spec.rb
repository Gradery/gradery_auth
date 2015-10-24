# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  school_id              :integer
#  first_name             :string
#  last_name              :string
#  deleted_at             :datetime
#

require 'rails_helper'

RSpec.describe User, type: :model do
	it "adds CAS attributes" do
		extra_attributes = {
			:first_name => "Test",
			:last_name => "User",
			:school_id => 2,
		}
		u = User.new
		u.cas_extra_attributes = extra_attributes
		expect(u.first_name).to eq "Test"
		expect(u.last_name).to eq "User"
		expect(u.school_id).to eq 2
	end

	it "allows update without password" do
		u = FactoryGirl.create(:user)
		params = {
			"first_name" => "Test",
			"last_name" => "User"
		}
		u.update_without_password(params)
		expect(u.first_name).to eq "Test"
		expect(u.last_name).to eq "User"
	end
end
