class User < ApplicationRecord
    validates :username,presence: true,uniqueness: true
    validates :email,presence: true,uniqueness: true
    validates :mobile,presence: true
    validates :address,presence: true
    validates :pincode,presence:true
    validates :password,presence:true,length:{minimum:10}
end
