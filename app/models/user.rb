class User < ApplicationRecord
    has_many :posts


    def user_post_status 
        if self.posts
            self.posts
        else
            "There is not post please createa one"
        end
    end
end
