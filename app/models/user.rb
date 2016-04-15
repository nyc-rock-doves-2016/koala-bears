class User < ActiveRecord::Base
  # Remember to create a migration!
has_secure_password

validates :username, :email, presence: true
validates :username, :email, uniqueness: true

end
