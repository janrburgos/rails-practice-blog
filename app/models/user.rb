class User < ApplicationRecord
  has_secure_password

  validates :email,
            presence: { message: "%{attribute} can't be blank" },
            uniqueness: { message: "%{attribute} already taken" },
            format: {
              with: /\A[^@\s]+@[^@\s]+[\.][^@\s]+\z/,
              message: "%{attribute} must be a valid email address"
            }
end
