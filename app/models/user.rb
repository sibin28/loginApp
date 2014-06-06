class User < ActiveRecord::Base
   #model tsting... 
   #User model
   attr_accessible :username, :email, :password, :mobile
   validates :username, :presence => true, length: { minimum: 2 }
   validates :password, :presence => true
end
