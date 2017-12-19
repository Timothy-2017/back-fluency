class Word < ApplicationRecord
  has_many :userWords
  has_many :users, through: :userWords
  belongs_to :language

  serialize :translation
end
