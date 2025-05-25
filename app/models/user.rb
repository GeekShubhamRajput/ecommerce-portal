class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  validates :first_name, :last_name, :email_address, presence: true
  validates :mobile_no, presence: true, uniqueness: true,
                            format: { with: /\A[6-9]\d{9}\z/, message: "must be a valid 10-digit Indian mobile number" }
end
