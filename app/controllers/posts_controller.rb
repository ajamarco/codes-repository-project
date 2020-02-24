class PostsController < ApplicationController
    
    def index
        @posts = Post.all
    end
    
    def new #display form for create a new record
        @post = Post.new
        @user_options = User.all.map{ |u| [ u.name, u.id ] }
    end

    def create
        @post = Post.new(allowed_params)
        
        @post.save
        
        redirect_to posts_path

    end

    def edit #display form for the existing record
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

    private
    def allowed_params
        params.require(:post).permit(:title, :content, :user_id)
    end
end

