 class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts
    validates :name, uniqueness: true
    validates :age, numericality: { greater_than: 0, message: "must be above 0"}
    validates :bio, length: { minimum: 30, message: "must be over 30 characters long"}

    def featured_post
        self.posts.sort_by { |post| post.likes }.reverse.first
    end

    # def top_destinations
    #     byebug
    #     self.destinations.sort_by { |destination| destination.count }.reverse
    # end
end
