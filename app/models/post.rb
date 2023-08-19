class Post < ApplicationRecord
    validates :title, presence:true
    validates :content, length: { minimum:250 }
    validates :summary, length: { maximum:250 }
    validates :category, inclusion: { in: %w(Fictio Non-Fiction) }
    validate :clickbait

    CLICKBAITS = [ /Won't Believe/i, /Secret/i, /Top \d/i, /Guess/i ]

end
