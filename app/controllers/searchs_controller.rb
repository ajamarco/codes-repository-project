class SearchsController < ApplicationController
    def search_posts
        if params[:title].blank?
            flash[:errors] = ["Empty search field"]
            return redirect_to posts_path 
        else
            @posts = Post.all
            param = params[:title].downcase.split
            param.each do |word|
                @posts = @posts.where("lower(content) LIKE ?", "%#{word}%")
            end
            render 'posts/index' 
        end  
    end
end