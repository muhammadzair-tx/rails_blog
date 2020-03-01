class Tag < ApplicationRecord
  has_many :taggings, dependent: :delete_all # for deleting all the tags relation only 
  has_many :posts, through: :taggings
end
