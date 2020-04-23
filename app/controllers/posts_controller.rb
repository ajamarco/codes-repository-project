class PostsController < ApplicationController
    
    def index
        @posts = params[:sort] ? Post.all.order("likes DESC") : Post.all
    end
    
    def new #display form for create a new record
        @post = Post.new
        @user_options = User.all.map{ |u| [ u.name, u.id ] }
        @tags = Tag.all
        
    end

    def create  
        @post = Post.new(allowed_params)
        if @post.valid?
            @post.save
            redirect_to posts_path    
        else
            flash[:errors] = @post.errors.full_messages
            redirect_to new_post_path
        end
        
    end

    def edit #display form for the existing record
        @tags = Tag.all
        @post = Post.find(params[:id])
    end
  
    def update #update the existing modified record
        @post = Post.find(params[:id])
  
        if @post.update_attributes(allowed_params)
            redirect_to @post
        else
            redirect_to posts_path
        end
    end

    def show 
        @post = Post.find(params[:id])
    end

    def destroy
        
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path
    end

    def add_like_to_post
        @post = Post.find(params[:id])
    
        @post.add_like
        @post.save
        render "show"
    end

    private
    def allowed_params
        params.require(:post).permit(:title, :content, :user_id, tag_ids:[])
    end
end

