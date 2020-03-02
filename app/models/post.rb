class Post < ApplicationRecord
    belongs_to :user
    has_many :tag_posts
    has_many :tags, through: :tag_posts

    validates :content, presence: true
    validates :title, presence: true

    validates :title, uniqueness: {
        scope: :content,
        message: 'already exists with the same content!'  
        #Title cannot be repeated by the same artist in the same year
      }


    def show_tags
        return_string = ""
        tags = self.tags
        tags.each do |tag|
            return_string += "#{tag.name}, "       
        end
        return_string.strip.chop #getting rid of the last whitespace and the last , using chop
    end

    def add_like
        if !self.likes
            self.likes = 1
        else
            self.likes += 1
        end
        
    end


end
