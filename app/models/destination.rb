class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def most_recent_posts
        self.posts.sort_by { |post| post.created_at }.reverse
    end

    def featured_post
        self.posts.sort_by { |post| post.likes }.first
    end

    def average_age
        unique = self.bloggers.uniq
        unique.sum { |blogger| blogger.age }.to_f / unique.count
    end
end
