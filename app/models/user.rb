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

class User < ActiveRecord::Base
  acts_as_paranoid
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :registerable, :recoverable, :rememberable,
  		 :trackable, :validatable, :cas_authenticatable

  belongs_to :school

  has_and_belongs_to_many :grades
  has_and_belongs_to_many :roles

  validates_presence_of :password, on: :create
  validates_length_of :password, minimum: 8, maximum: 120, allow_blank: true

  def cas_extra_attributes=(extra_attributes)
    extra_attributes.each do |name, value|
      case name.to_sym
      when :first_name
        self.first_name = value
      when :last_name
        self.last_name = value
      when :school_id
        self.school_id = value
      end
    end
  end

  def update_without_password(params)
    if params[:password] == ""
      params[:password] = nil
      params[:password_confirmation] = nil
    end
    self.update_attributes(params)
  end
end
