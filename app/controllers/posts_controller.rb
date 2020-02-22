class PostsController < ApplicationController

    before_action :set_post, only: [:edit, :update, :destroy]

    def index
  
       @posts =  Post.all
      

    end

 def show 
  #post_path(user.id) user ID
  @user = User.find(params[:id])
  if @user.posts.length > 0 
    render 'show'
  else
  render 'no_post'
  end
  # @user_post = @post.user

  # @all_post = Post.all.select {|p| p.user_id = @user_post.id} 
  # @user_post.user_post_status 

 end

 def edit 
 end

 def new 

   @post=  Post.new
   @user_option = User.all.map {|u| [u.name, u.id]}

 end
 
 def create 
    
   @post =  Post.create(allowed_params)
   redirect_to posts_path
 end



 def update

   @post.update_attributes(allowed_params)
   redirect_to post_path
 end

 def destroy
    @post.delete
    redirect_to posts_path

 end

 def single_post
  @post = Post.find(params[:id])
 
  
 end


    private 
    def set_post
      @post = Post.find_by(user_id: params[:id])
      @user_post = @post.user

    end

      def allowed_params
   
        params.require(:post).permit(:title, :content, :user_id)
        end
end
