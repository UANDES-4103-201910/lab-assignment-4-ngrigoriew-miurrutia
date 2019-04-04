class User < ApplicationRecord
  has_many :orders

  validates :phone_number, length: { in: 8..12 , message: "In between 8 and 12"}, numericality: { only_integer: true }
  validates :password , length: { in: 9..12}, format: {with: /[A-Za-z0-9]/}
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP ,message: "Invalid Email"}
end
