class User < ApplicationRecord
  has_secure_password

  validates :email,
            presence: true,
            uniqueness: { message: "already taken" },
            format: {
              with: /\A[^@\s]+@[^@\s]+[\.][^@\s]+\z/,
              message: "must be a valid email address"
            }
end
