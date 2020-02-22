class UsersController < ApplicationController


    before_action :set_user, only: [:show, :edit, :update, :destroy]

    def index

       @users =  User.all
       
   
    end

 def show

 end

 def edit 
 end

 def new 

   @user =  User.new

 end
 
 def create 

   @user =  User.create(allowed_params)

   redirect_to users_path
 end



 def update
   @user.update_attributes(allowed_params)
   redirect_to user_path
 end

 def destroy
    @user.delete
    redirect_to users_path

 end




    private 
    def set_user
        @user = User.find(params[:id])
      end

      def allowed_params
        params.require(:user).permit(:name)
        end


end