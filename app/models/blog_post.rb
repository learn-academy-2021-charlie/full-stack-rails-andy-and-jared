class BlogPost < ApplicationRecord
    validates :title, uniqueness: true
    validates :title, length: { minimum: 10 }
end
