class Language < ApplicationRecord
  has_many :words
  has_many :users 
end
