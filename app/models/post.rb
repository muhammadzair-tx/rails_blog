class Post < ApplicationRecord #and ApplicationRecord is inherit from ActiveRecord
    has_many :comments, dependent: :destroy
    belongs_to :user
    has_many :likes, dependent: :destroy
    #Active Record associations let you easily declare the relationship between two models.
    #In the case of comments and articles, you could write out the relationships this way:
    #Each comment belongs to one article.
    #One article can have many comments.
    validates :title, 
            presence: true,
            length: { minimum: 5 }

    validates :body, 
            presence: true,
            length: { minimum: 10, maximum: 9999 }

end
