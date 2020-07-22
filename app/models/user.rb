class User < ApplicationRecord
    has_many :purchases
    has_many :books, through: :purchases
end
