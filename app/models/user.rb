# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#

class User < ActiveRecord::Base
    attr_accessible :email, :name, :password, :password_confirmation

    before_save :create_remember_token

	validates :name, presence: true, length: { maximum: 255 }, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
	validates :password, confirmation: true, length: { in: 6..20 }
  	validates :password_confirmation, presence: true

    private

    def create_remember_token
        self.remember_token = SecureRandom.urlsafe_base64
    end

    has_secure_password

end
