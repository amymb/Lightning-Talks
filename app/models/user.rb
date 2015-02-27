class User < ActiveRecord::Base
  has_secure_password
  #has_many :talks

#def self.authenticate(email, password)
#  user = find_by_email(email)
#  if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
#    user
#  else
#    nil
#  end
#end


end
