class User < ApplicationRecord
  has_many :hobbies

  has_secure_password
end
