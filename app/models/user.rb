class User < ApplicationRecord
  has_many :interestsUsers
  has_many :interests, through: :interestsUsers
  has_many :userWords
  has_many :words, through: :userWords
  belongs_to :language
end
