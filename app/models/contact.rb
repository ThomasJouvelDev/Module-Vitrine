class Contact < ApplicationRecord
  validates :email,
    :presence => :true,
    :format => {
      :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    }
  validates :message, :presence => :true
  validates :name, :presence => :true  
end
