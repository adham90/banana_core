# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true, length: { in: 3..100 }
  validates :phone, presence: true, numericality: true, length: { is: 11 }
  validates :email, presence: true, uniqueness: true,
                    format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, confirmation: true # password_confirmation attr
  validates_length_of :password, in: 6..20, on: :create
end
