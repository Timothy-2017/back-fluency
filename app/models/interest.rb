class Interest < ApplicationRecord
  has_many :articles
  has_many :interestsUsers
  has_many :users, through: :interestsUsers
end
